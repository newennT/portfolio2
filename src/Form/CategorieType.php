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

class CategorieType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nom', TextType::class,[
                'label' => 'Nom de la catégorie'
            ])
            ->add('projets', EntityType::class, [
                'class' => Projet::class,
                'choice_label' => 'nom',
                'multiple' => true,
                'required' => false,
                'expanded' => true,
            ])
            ->add('slug', TextType::class, [
                'label' => 'Slug',
            ])
            ->add('metadescription', TextareaType::class, [
                'label' => 'Métadescription',
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Categorie::class,
        ]);
    }
}
