<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Twig\Environment;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;
use App\Repository\ProjetRepository;
use App\Repository\CategorieRepository;

class SitemapController extends AbstractController
    {    
        private $twig;
        private $router;
    
        public function __construct(Environment $twig, UrlGeneratorInterface $router)
        {
            $this->twig = $twig;
            $this->router = $router;
        }
        
        #[Route('/sitemap.xml', name: 'sitemap', defaults: ['_format' => 'xml'])]
        public function index(CategorieRepository $categorieRepository, ProjetRepository $projetRepository): Response
        {
            $urls = [
                ['loc' => $this->router->generate('app_home', [], UrlGeneratorInterface::ABSOLUTE_URL), 'lastmod' => new \DateTime()],
                ['loc' => $this->router->generate('app_contact', [], UrlGeneratorInterface::ABSOLUTE_URL), 'lastmod' => new \DateTime()],
                ['loc' => $this->router->generate('app_categorie_index', [], UrlGeneratorInterface::ABSOLUTE_URL), 'lastmod' => new \DateTime()],
                ['loc' => $this->router->generate('app_projet_index', [], UrlGeneratorInterface::ABSOLUTE_URL), 'lastmod' => new \DateTime()],
            ];
    
            $categories = $categorieRepository->findAll();
    
            foreach ($categories as $categorie) {
                $urls[] = ['loc' => $this->router->generate('app_categorie_show', ['slug' => $categorie->getSlug()], UrlGeneratorInterface::ABSOLUTE_URL), 'lastmod' => new \DateTime()];
            }
    
            $projets = $projetRepository->findAll();
    
            foreach ($projets as $projet) {
                $urls[] = ['loc' => $this->router->generate('app_projet_show', ['slug' => $projet->getSlug()], UrlGeneratorInterface::ABSOLUTE_URL), 'lastmod' => new \DateTime()];
            }
    
            $response = new Response(
                $this->twig->render('sitemap/index.xml.twig', ['urls' => $urls]),
                Response::HTTP_OK
            );
    
            $response->headers->set('Content-Type', 'application/xml');
            
            return $response;
        }
}
