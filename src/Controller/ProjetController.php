<?php

namespace App\Controller;

use App\Entity\Projet;

use App\Repository\ProjetRepository;
use App\Repository\CategorieRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/portfolio')]
final class ProjetController extends AbstractController
{
    #[Route(name: 'app_projet_index', methods: ['GET'])]
    public function index(ProjetRepository $projetRepository, CategorieRepository $categorieRepository): Response
    {
        return $this->render('projet/index.html.twig', [
            'projets' => $projetRepository->findAll(),
            'categories' => $categorieRepository->findAll(),
        ]);
    }

   

    #[Route('/{slug}', name: 'app_projet_show', methods: ['GET'])]
    public function show(string $slug, ProjetRepository $projetRepository): Response
    {
        $projet = $projetRepository->findOneBySlug($slug);
        
        if (!$projet) {
            throw $this->createNotFoundException('Projet not found');
        }

        return $this->render('projet/show.html.twig', [
            'projet' => $projet,
        ]);
    }

   
}