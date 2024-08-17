<?php

namespace App\Entity;

use App\Repository\TypeOfEventRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: TypeOfEventRepository::class)]
class TypeOfEvent
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    /**
     * @var Collection<int, Event>
     */
    #[ORM\OneToMany(targetEntity: Event::class, mappedBy: 'typeOfEvent')]
    private Collection $type;

    #[ORM\Column(length: 100)]
    private ?string $event_type = null;

    public function __construct()
    {
        $this->type = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * @return Collection<int, Event>
     */
    public function getType(): Collection
    {
        return $this->type;
    }

    public function addType(Event $type): static
    {
        if (!$this->type->contains($type)) {
            $this->type->add($type);
            $type->setTypeOfEvent($this);
        }

        return $this;
    }

    public function removeType(Event $type): static
    {
        if ($this->type->removeElement($type)) {
            // set the owning side to null (unless already changed)
            if ($type->getTypeOfEvent() === $this) {
                $type->setTypeOfEvent(null);
            }
        }

        return $this;
    }

    public function getEventType(): ?string
    {
        return $this->event_type;
    }

    public function setEventType(string $event_type): static
    {
        $this->event_type = $event_type;

        return $this;
    }
}
