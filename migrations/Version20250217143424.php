<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20250217143424 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE categorie ADD metadescription LONGTEXT DEFAULT NULL');
        $this->addSql('ALTER TABLE image ADD texte_alt LONGTEXT DEFAULT NULL');
        $this->addSql('ALTER TABLE projet ADD est_actif TINYINT(1) NOT NULL, ADD mis_en_avant TINYINT(1) NOT NULL, ADD metadescription LONGTEXT DEFAULT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE categorie DROP metadescription');
        $this->addSql('ALTER TABLE image DROP texte_alt');
        $this->addSql('ALTER TABLE projet DROP est_actif, DROP mis_en_avant, DROP metadescription');
    }
}
