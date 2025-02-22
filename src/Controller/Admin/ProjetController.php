<?php

namespace App\Controller\Admin;

use App\Entity\Projet;
use App\Form\ProjetType;
use App\Repository\ProjetRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\Security\Http\Attribute\IsGranted;


#[IsGranted('IS_AUTHENTICATED')]
#[Route('/admin/projet')]
final class ProjetController extends AbstractController
{
    #[Route(name: 'app_admin_projet_index', methods: ['GET'])]
    public function index(ProjetRepository $projetRepository): Response
    {
        return $this->render('admin/projet/index.html.twig', [
            'projets' => $projetRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_admin_projet_new', methods: ['GET', 'POST'])]
    #[Route('/{id}/edit', name: 'app_admin_projet_edit', methods: ['GET', 'POST'])]
    public function new(?Projet $projet, Request $request, EntityManagerInterface $entityManager): Response
    {
        $projet ??= new Projet();

        $images = $projet->getImages();

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

            $entityManager->persist($projet);
            $entityManager->flush();

            return $this->redirectToRoute('app_admin_projet_show', ['slug' => $projet->getSlug()], Response::HTTP_SEE_OTHER);
        }

        return $this->render('admin/projet/new.html.twig', [
            'projet' => $projet,
            'form' => $form,
            'images' => $images,
        ]);
    }

    #[Route('/{slug}', name: 'app_admin_projet_show', methods: ['GET'])]
    public function show(string $slug, ProjetRepository $projetRepository): Response
    {
        $projet = $projetRepository->findOneBySlug($slug);
        
        if (!$projet) {
            throw $this->createNotFoundException('Projet not found');
        }

        return $this->render('admin/projet/show.html.twig', [
            'projet' => $projet,
        ]);
    }

   

    #[Route('/{id}', name: 'app_admin_projet_delete', methods: ['POST'])]
    public function delete(Request $request, Projet $projet, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$projet->getId(), $request->getPayload()->getString('_token'))) {
            $entityManager->remove($projet);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_admin_projet_index', [], Response::HTTP_SEE_OTHER);
    }
}