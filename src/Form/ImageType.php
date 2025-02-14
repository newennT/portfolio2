<?php

namespace App\Form;

use App\Entity\Image;
use App\Entity\Projet;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Validator\Constraints\File;

class ImageType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('file', FileType::class, [
                'label' => 'Image',
                'mapped' => false,
                'required' => false,
            ])

            // ->add('path', FileType::class, [
            //     'mapped' => false,
            //     'required' => false,
            //     'label' => 'Sélectionner une image',
            //     'attr' => [
            //         'accept' => 'image/png, image/jpeg, image/webp',
            //     ],
            //     'constraints' => [
            //         new File([
            //             'maxSize' => '2M',
            //             'mimeTypes' => [
            //                 'image/jpeg',
            //                 'image/png',
            //                 'image/webp',
            //             ],
            //             'mimeTypesMessage' => 'Format incorrect (jpeg, png ou webp seulement)',
            //         ]),
            //     ],
            // ])
            // ->add('projet', EntityType::class, [
            //     'class' => Projet::class,
            //     'choice_label' => 'id',
            //     'placeholder' => '-- Projet --',
            //     'required' => false,
            // ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Image::class,
        ]);
    }
}
