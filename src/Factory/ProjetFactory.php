<?php

namespace App\Factory;

use App\Entity\Projet;
use Zenstruck\Foundry\Persistence\PersistentProxyObjectFactory;

/**
 * @extends PersistentProxyObjectFactory<Projet>
 */
final class ProjetFactory extends PersistentProxyObjectFactory
{
    /**
     * @see https://symfony.com/bundles/ZenstruckFoundryBundle/current/index.html#factories-as-services
     *
     * @todo inject services if required
     */
    public function __construct()
    {
    }

    public static function class(): string
    {
        return Projet::class;
    }

    /**
     * @see https://symfony.com/bundles/ZenstruckFoundryBundle/current/index.html#model-factories
     *
     * @todo add your default values here
     */
    protected function defaults(): array|callable
    {
        return [
            'cover' => self::faker()->imageUrl(640, 640, 'product'),
            'description' => self::faker()->paragraph(),
            'lastUpdate' => new \DateTime(),
            'nom' => self::faker()->words(3, true),
            'slug' => self::faker()->slug(),
        ];
    }

    /**
     * @see https://symfony.com/bundles/ZenstruckFoundryBundle/current/index.html#initialization
     */
    protected function initialize(): static
    {
        return $this
            ->afterInstantiate(function(Projet $projet) {
             

            });
        ;
    }
}
