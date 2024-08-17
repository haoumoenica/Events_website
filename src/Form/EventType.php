<?php

namespace App\Form;

use App\Entity\Event;
use App\Entity\TypeOfEvent;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, [
                'attr' => ['class' => 'form-control'],
            ])
            ->add('description', TextareaType::class, [
                'attr' => ['class' => 'form-control'],
            ])
            ->add('image', TextType::class, [
                'attr' => ['class' => 'form-control'],
            ])
            ->add('capacity', NumberType::class, [
                'attr' => [
                    'class' => 'form-control',
                    'inputmode' => 'tel',
                    'pattern' => '^\+?[1-9]\d{1,14}$',
                    'oninput' => "this.value = this.value.replace(/[^0-9+]/g, '')",
                    'maxlength' => 6,
                ],
                'scale' => 2,
            ])
            ->add('address', TextType::class, [
                'attr' => ['class' => 'form-control'],
            ])
            ->add('date_start_time', DateTimeType::class, [
                'date_label' => 'Starts On',
                'attr' => ['class' => 'form-control'],
                'label' => 'Event Date and Time'
            ])
            ->add('email', EmailType::class, [
                'attr' => ['class' => 'form-control'],
            ])
            ->add('phone_number', TextType::class, [
                'attr' => [
                    'class' => 'form-control',
                    'inputmode' => 'tel',
                    'pattern' => '^\+?[1-9]\d{1,14}$',
                    'oninput' => "this.value = this.value.replace(/[^0-9+]/g, '')",
                    'maxlength' => 15,
                ],
            ])
            ->add('typeOfEvent', EntityType::class, [
                // looks for choices from this entity
                'class' => TypeOfEvent::class,

                // uses the User.username property as the visible option string
                'choice_label' => 'event_type',
                'attr' => ['class' => 'form-control'],
                'placeholder' => 'Select an event type',

                // used to render a select box, check boxes or radios
                // 'multiple' => true,
                // 'expanded' => true,
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
