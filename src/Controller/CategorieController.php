<?php

namespace App\Controller;

use App\Entity\Categorie;
use App\Repository\CategorieRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/categories')]
final class CategorieController extends AbstractController
{
    #[Route(name: 'app_categorie_index', methods: ['GET'])]
    public function index(CategorieRepository $categorieRepository): Response
    {
        return $this->render('categorie/index.html.twig', [
            'categories' => $categorieRepository->findAll(),
        ]);
    }

    
    #[Route('/{slug}', name: 'app_categorie_show', methods: ['GET'])]
    public function show(string $slug, CategorieRepository $categorieRepository): Response
    {
        $categorie = $categorieRepository->findOneBySlug($slug);
        
        if (!$categorie) {
            throw $this->createNotFoundException('Category not found');
        }
        return $this->render('categorie/show.html.twig', [
            'categorie' => $categorie,
        ]);
    }

}
