<?php

namespace App\Entity;

use App\Repository\ProjetRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Entity(repositoryClass: ProjetRepository::class)]
#[ORM\HasLifecycleCallbacks]
class Projet
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[Assert\Length(min: 3)]
    #[Assert\NotBlank()]
    #[ORM\Column(length: 255)]
    private ?string $nom = null;

    #[Assert\NotBlank()]
    #[ORM\Column(length: 255)]
    private ?string $slug = null;

    #[Assert\NotBlank()]
    #[ORM\Column(type: Types::TEXT)]
    private ?string $description = null;

    #[ORM\Column(length: 255)]
    private ?string $cover = null;

    /**
     * @var Collection<int, Categorie>
     */
    #[ORM\ManyToMany(targetEntity: Categorie::class, inversedBy: 'projets')]
    private Collection $categorie;

    /**
     * @var Collection<int, Image>
     */
    #[ORM\OneToMany(targetEntity: Image::class, mappedBy: 'projet', cascade: ['persist', 'remove'])]
    private Collection $images;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $lastUpdate = null;

    #[ORM\Column]
    private ?bool $estActif = null;

    #[ORM\Column]
    private ?bool $misEnAvant = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $metadescription = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $imageMiseEnAvant = null;

    #[ORM\Column(nullable: true)]
    private ?int $ordre_miniature = null;

    #[ORM\Column(nullable: true)]
    private ?int $ordre_mis_en_avant = null;

    public function __construct()
    {
        $this->categorie = new ArrayCollection();
        $this->images = new ArrayCollection();
        $this->lastUpdate = new \DateTime();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): static
    {
        $this->nom = $nom;

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(string $slug): static
    {
        $this->slug = $slug;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getCover(): ?string
    {
        return $this->cover;
    }

    public function setCover(string $cover): static
    {
        $this->cover = $cover;

        return $this;
    }

    /**
     * @return Collection<int, Categorie>
     */
    public function getCategorie(): Collection
    {
        return $this->categorie;
    }

    public function addCategorie(Categorie $categorie): static
    {
        if (!$this->categorie->contains($categorie)) {
            $this->categorie->add($categorie);
        }

        return $this;
    }

    public function removeCategorie(Categorie $categorie): static
    {
        $this->categorie->removeElement($categorie);

        return $this;
    }

    /**
     * @return Collection<int, Image>
     */
    public function getImages(): Collection
    {
        return $this->images;
    }

    public function addImage(Image $image): static
    {
        if (!$this->images->contains($image)) {
            $this->images->add($image);
            $image->setProjet($this);
        }

        return $this;
    }

    public function removeImage(Image $image): static
    {
        if ($this->images->removeElement($image)) {
            // set the owning side to null (unless already changed)
            if ($image->getProjet() === $this) {
                $image->setProjet(null);
            }
        }

        return $this;
    }

    public function getLastUpdate(): ?\DateTimeInterface
    {
        return $this->lastUpdate;
    }

    public function setLastUpdate(\DateTimeInterface $lastUpdate): static
    {
        $this->lastUpdate = $lastUpdate;

        return $this;
    }

    #[ORM\PreUpdate]
    public function updateTimestamp(): void
    {
        if ($this->lastUpdate === null) {
            $this->lastUpdate = new \DateTime();
        }
    }

    public function isEstActif(): ?bool
    {
        return $this->estActif;
    }

    public function setEstActif(bool $estActif): static
    {
        $this->estActif = $estActif;

        return $this;
    }

    public function isMisEnAvant(): ?bool
    {
        return $this->misEnAvant;
    }

    public function setMisEnAvant(bool $misEnAvant): static
    {
        $this->misEnAvant = $misEnAvant;

        return $this;
    }

    public function getMetadescription(): ?string
    {
        return $this->metadescription;
    }

    public function setMetadescription(?string $metadescription): static
    {
        $this->metadescription = $metadescription;

        return $this;
    }

    public function getImageMiseEnAvant(): ?string
    {
        return $this->imageMiseEnAvant;
    }

    public function setImageMiseEnAvant(?string $imageMiseEnAvant): static
    {
        $this->imageMiseEnAvant = $imageMiseEnAvant;

        return $this;
    }

    public function getOrdreMiniature(): ?int
    {
        return $this->ordre_miniature;
    }

    public function setOrdreMiniature(?int $ordre_miniature): static
    {
        $this->ordre_miniature = $ordre_miniature;

        return $this;
    }

    public function getOrdreMisEnAvant(): ?int
    {
        return $this->ordre_mis_en_avant;
    }

    public function setOrdreMisEnAvant(?int $ordre_mis_en_avant): static
    {
        $this->ordre_mis_en_avant = $ordre_mis_en_avant;

        return $this;
    }
}
