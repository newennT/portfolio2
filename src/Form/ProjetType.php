<?php

namespace App\Form;

use App\Entity\Categorie;
use App\Entity\Projet;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use App\Form\ImageType;
use App\Entity\Image;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Validator\Constraints\File;

class ProjetType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nom', TextType::class, [
                'label' => 'Titre du projet'
            ])
            ->add('slug', TextType::class, [
                'label' => 'Slug'
            ])
            ->add('description', TextareaType::class, [
                'label' => 'Description'
            ])
            ->add('cover', FileType::class, [
                'required' => false,
                'mapped' => false,
                'label' => 'Image de couverture ou miniature',
                'attr' => [
                    'accept' => 'image/png, image/jpeg, image/webp',
                ],
                'constraints' => [
                    new File([
                        'maxSize' => '2M',
                        'mimeTypes' => [
                            'image/jpeg',
                            'image/png',
                            'image/webp',
                        ],
                        'mimeTypesMessage' => 'Seulement formats jpeg, png ou webp',
                    ]),
                ],
            ])
            ->add('coverName', TextType::class, [
                'label' => 'Image actuelle', // Afficher le nom de l'image actuelle
                'data' => $options['data']->getCover(), // Affiche le nom de l'image actuelle
                'disabled' => true, // Rendre ce champ en lecture seule
                'required' => false, // Il n'est pas obligatoire
                'mapped' => false,
            ])
            ->add('categorie', EntityType::class, [
                'class' => Categorie::class,
                'choice_label' => 'nom',
                'multiple' => true,
                'expanded' => true,
            ])
            ->add('lastUpdate', DateTimeType::class, [
                'label' => 'Dernière mise à jour',
                'widget' => 'single_text',
                'required' => false,
                'html5' => true,
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Projet::class,
        ]);
    }
}
