<?php

namespace App\Controller;

use App\Entity\Projet;
use App\Form\ProjetType;
use App\Repository\ProjetRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\String\Slugger\SluggerInterface;

#[Route('/projet')]
final class ProjetController extends AbstractController
{
    #[Route(name: 'app_projet_index', methods: ['GET'])]
    public function index(ProjetRepository $projetRepository): Response
    {
        return $this->render('admin/projet/index.html.twig', [
            'projets' => $projetRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_projet_new', methods: ['GET', 'POST'])]
    #[Route('/{id}/edit', name: 'app_projet_edit', methods: ['GET', 'POST'])]
    public function new(?Projet $projet, Request $request, EntityManagerInterface $entityManager, SluggerInterface $slugger): Response
    {
        $projet ??= new Projet();
        $form = $this->createForm(ProjetType::class, $projet);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // Image de couverture
            $cover = $form->get('cover')->getData();
            if($cover){
                $newImageName = uniqid().'.'.$cover->guessExtension();

                try{
                    $cover->move(
                        $this->getParameter('upload_directory'),
                        $newImageName
                    );
                    $projet->setCover($newImageName);
                } catch (FileException $e){
                    $this->addFlash('error', 'Une erreur est survenue');
                }
            }

            // Images du projet
            foreach($form->get('images') as $imageForm){
                $imageFile = $imageForm->get('file')->getData();
                if($imageFile){
                    $originalFilename = pathinfo($imageFile->getClientOriginalName(), PATHINFO_FILENAME);
                    $safeFilename = $slugger->slug($originalFilename);
                    $newFilename = $safeFilename . '-' . uniqid() . '.' . $imageFile->guessExtension();
                    try{
                        $imageFile->move(
                            $this->getParameter('upload_directory'),
                            $newFilename
                        );
                   
                        $image = $imageForm->getData();
                        $image->setPath($newFilename);
                        $image->setProjet($projet);
                        $entityManager->persist($image);
                     } catch (FileException $e){
                        $this->addFlash('error', 'Une erreur est survenue');
                    }
                }
            }

            $entityManager->persist($projet);
            $entityManager->flush();

            return $this->redirectToRoute('app_projet_show', ['id' => $projet->getId()], Response::HTTP_SEE_OTHER);
        }

        return $this->render('admin/projet/new.html.twig', [
            'projet' => $projet,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_projet_show', methods: ['GET'])]
    public function show(Projet $projet): Response
    {
        return $this->render('admin/projet/show.html.twig', [
            'projet' => $projet,
        ]);
    }

   

    #[Route('/{id}', name: 'app_projet_delete', methods: ['POST'])]
    public function delete(Request $request, Projet $projet, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$projet->getId(), $request->getPayload()->getString('_token'))) {
            $entityManager->remove($projet);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_projet_index', [], Response::HTTP_SEE_OTHER);
    }
}
