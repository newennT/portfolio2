<?php

namespace App\DataFixtures;

use App\Factory\CategorieFactory;
use App\Factory\ProjetFactory;
use App\Factory\ImageFactory;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        CategorieFactory::createMany(5);
        ProjetFactory::createMany(5);

        $manager->flush();
    }
}
