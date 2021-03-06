-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  mar. 07 jan. 2020 à 10:19
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bd_hbck`
--

-- --------------------------------------------------------

--
-- Structure de la table `album`
--

DROP TABLE IF EXISTS `album`;
CREATE TABLE IF NOT EXISTS `album` (
  `alb_id` int(11) NOT NULL,
  `alb_libelle` varchar(50) NOT NULL,
  `alb_created_at` datetime DEFAULT NULL,
  `alb_updated_at` datetime DEFAULT NULL,
  `alb_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`alb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `album`
--

INSERT INTO `album` (`alb_id`, `alb_libelle`, `alb_created_at`, `alb_updated_at`, `alb_deleted_at`) VALUES
(1, 'Equipe 1', '2019-12-19 18:42:56', NULL, NULL),
(2, 'Equipe 2', '2019-12-19 18:42:56', NULL, NULL),
(3, 'Equipe 3', '2019-12-19 18:42:56', NULL, NULL),
(4, 'Equipe 4', '2019-12-19 18:42:56', NULL, NULL),
(5, 'Equipe 5', '2019-12-19 18:42:56', NULL, NULL),
(6, 'Equipe 6', '2019-12-19 18:42:56', NULL, NULL),
(7, 'Equipe 7', '2019-12-19 18:42:56', NULL, NULL),
(8, 'photo de rentrée', '2019-12-19 18:42:56', NULL, NULL),
(10, 'Fêtes de le toussaint', '2019-12-19 18:42:56', NULL, NULL),
(11, 'un autre album bis', '2019-12-20 23:23:18', '2019-12-20 23:29:27', '2019-12-20 23:57:57'),
(12, 'titi', '2019-12-20 23:30:37', '2019-12-20 23:36:01', '2019-12-20 23:50:56'),
(13, 'bubu', '2019-12-20 23:42:31', '2019-12-20 23:42:40', '2019-12-20 23:50:50'),
(14, 'tété detrr', '2019-12-21 09:01:43', '2019-12-21 09:14:03', '2019-12-21 09:16:21'),
(15, 'sdfsdf', '2019-12-21 09:17:13', NULL, '2019-12-21 09:17:19'),
(16, 'l\'écluse de tata', '2019-12-21 10:22:48', '2019-12-21 10:23:06', '2019-12-21 10:23:12');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `art_titre` varchar(255) NOT NULL,
  `art_contenu` longtext NOT NULL,
  `art_auteur_id` int(11) NOT NULL,
  `art_photo_id` int(11) DEFAULT NULL,
  `art_actif` int(1) NOT NULL,
  `art_created_at` datetime NOT NULL,
  `art_updated_at` datetime DEFAULT NULL,
  `art_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`art_id`),
  KEY `fk_per_art` (`art_auteur_id`),
  KEY `fk_pho_art` (`art_photo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`art_id`, `art_titre`, `art_contenu`, `art_auteur_id`, `art_photo_id`, `art_actif`, `art_created_at`, `art_updated_at`, `art_deleted_at`) VALUES
(1, 'Bienvenue', 'Ceci est ma première news', 1, 1, 1, '2019-12-13 19:22:57', NULL, NULL),
(2, 'Premier match', 'Premier match de notre équipe favorite pour cette saison.', 2, 2, 1, '2019-12-17 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `dde_accompagnant`
--

DROP TABLE IF EXISTS `dde_accompagnant`;
CREATE TABLE IF NOT EXISTS `dde_accompagnant` (
  `dda_id` int(11) NOT NULL,
  `dda_lib` text NOT NULL,
  `dda_actif` int(1) NOT NULL DEFAULT '0',
  `dda_created_at` datetime NOT NULL,
  `dda_updated_at` datetime DEFAULT NULL,
  `dda_deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dde_accompagnant`
--

INSERT INTO `dde_accompagnant` (`dda_id`, `dda_lib`, `dda_actif`, `dda_created_at`, `dda_updated_at`, `dda_deleted_at`) VALUES
(1, 'On demande un accompagnant pour la rencontre du 25/01/2019', 1, '2019-12-13 19:22:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

DROP TABLE IF EXISTS `equipe`;
CREATE TABLE IF NOT EXISTS `equipe` (
  `equ_id` int(11) NOT NULL AUTO_INCREMENT,
  `equ_libelle` varchar(255) NOT NULL,
  `equ_widget_id` varchar(255) DEFAULT NULL,
  `equ_categorie` varchar(255) NOT NULL,
  `equ_division` varchar(255) NOT NULL,
  `equ_jour_entrain` varchar(100) DEFAULT NULL,
  `equ_heure_entrain` varchar(100) DEFAULT NULL,
  `equ_created_at` datetime NOT NULL,
  `equ_updated_at` datetime DEFAULT NULL,
  `equ_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`equ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `equipe`
--

INSERT INTO `equipe` (`equ_id`, `equ_libelle`, `equ_widget_id`, `equ_categorie`, `equ_division`, `equ_jour_entrain`, `equ_heure_entrain`, `equ_created_at`, `equ_updated_at`, `equ_deleted_at`) VALUES
(1, 'SENIOR F1', '5e09dd322e5f4e3f4972e76a', 'Senior', 'Division 1', 'Jeudi - Vendredi', '11h30 -14h ', '2019-12-13 19:22:57', NULL, NULL),
(2, 'SENIOR F2 0000', '5e09ceabcdc4b40a21cba9bb', 'Senior', 'Division 2', 'Mercredi - Jeudi', '9h - 13h 69', '2019-12-13 19:22:57', '2020-01-06 17:24:57', NULL),
(3, 'SENIOR F3', '5e09db41ebcf650a1dd24952', 'Junior', 'Nationale 1', 'Lundi - Mardi', '10h - 12h 80', '2019-12-16 00:00:00', '2020-01-06 17:22:56', NULL),
(4, 'U18 F1', '', 'Jeune-18', 'Excellence Regionale', 'Mardi - Samedi', '19h - 21h', '2019-12-16 00:00:00', NULL, NULL),
(5, 'U15', '', 'Jeune-15', 'Pre-regionale', 'Lundi à Jeudi', '11h 00 - 12h 100', '2020-01-03 00:00:00', '2020-01-06 17:15:48', NULL),
(6, 'zzzz', NULL, 'Junior', 'Nationale 1', 'Lundi- Mardi', '19h - 21h', '2020-01-06 17:53:15', NULL, NULL),
(7, 'zzzz', NULL, 'Junior', 'Nationale 1', 'Lundi- Mardi', '19h - 21h', '2020-01-06 17:54:00', NULL, NULL),
(8, 'zzzz', NULL, 'Junior', 'Nationale 1', 'Lundi- Mardi', '19h - 21h', '2020-01-06 17:55:48', NULL, NULL),
(9, 'ooo', NULL, 'Senior', 'Division 1', 'Dimanche', '9h 00', '2020-01-06 17:58:58', NULL, NULL),
(10, 'ooo', NULL, 'Senior', 'Division 1', 'Dimanche', '9h 00', '2020-01-06 18:02:51', NULL, NULL),
(11, 'ooo', NULL, 'Senior', 'Division 1', 'Dimanche', '9h 00', '2020-01-06 18:03:28', NULL, NULL),
(12, 'sds', NULL, 'Jeune-15', 'Nationale 1', 'Lundi à Jeudi', '11h 00 - 12h 35', '2020-01-06 18:03:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
CREATE TABLE IF NOT EXISTS `fonction` (
  `fon_id` int(11) NOT NULL AUTO_INCREMENT,
  `fon_libelle` varchar(255) NOT NULL,
  `fon_created_at` datetime NOT NULL,
  `fon_updated_at` datetime DEFAULT NULL,
  `fon_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`fon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`fon_id`, `fon_libelle`, `fon_created_at`, `fon_updated_at`, `fon_deleted_at`) VALUES
(1, 'Président', '2019-12-13 19:22:57', NULL, NULL),
(2, 'Secrétaire', '2019-12-13 19:22:57', NULL, NULL),
(3, 'Trésorier', '2019-12-13 19:22:57', NULL, NULL),
(4, 'Entraîneur', '2019-12-13 19:22:57', NULL, NULL),
(5, 'Entraîneur adjoint', '2019-12-13 19:22:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `lien_per_fon_equ`
--

DROP TABLE IF EXISTS `lien_per_fon_equ`;
CREATE TABLE IF NOT EXISTS `lien_per_fon_equ` (
  `lpfe_id` int(11) NOT NULL AUTO_INCREMENT,
  `lpfe_per_id` int(11) NOT NULL,
  `lpfe_fon_id` int(11) NOT NULL,
  `lpfe_equ_id` int(11) DEFAULT NULL,
  `lpfe_created_at` datetime NOT NULL,
  `lpfe_updated_at` datetime DEFAULT NULL,
  `lpfe_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`lpfe_id`),
  KEY `fk_lpfe_per` (`lpfe_per_id`),
  KEY `fk_lpfe_fon` (`lpfe_fon_id`),
  KEY `fk_lpfe_equ` (`lpfe_equ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lien_per_fon_equ`
--

INSERT INTO `lien_per_fon_equ` (`lpfe_id`, `lpfe_per_id`, `lpfe_fon_id`, `lpfe_equ_id`, `lpfe_created_at`, `lpfe_updated_at`, `lpfe_deleted_at`) VALUES
(1, 1, 2, 1, '2019-12-13 19:22:57', NULL, NULL),
(2, 6, 4, 2, '2020-01-03 00:00:00', NULL, NULL),
(3, 7, 4, 3, '2020-01-03 00:00:00', NULL, NULL),
(4, 9, 4, 4, '2020-01-03 00:00:00', NULL, NULL),
(5, 8, 4, 5, '2020-01-03 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `per_id` int(11) NOT NULL AUTO_INCREMENT,
  `per_nom` varchar(255) NOT NULL,
  `per_prenom` varchar(255) DEFAULT NULL,
  `per_date_nais` date DEFAULT NULL,
  `per_lieu_nais` varchar(255) DEFAULT NULL,
  `per_sexe` varchar(50) NOT NULL,
  `per_mail` varchar(255) NOT NULL,
  `per_mdp` varchar(50) NOT NULL,
  `per_admin` int(1) NOT NULL DEFAULT '0',
  `per_redac` int(1) NOT NULL DEFAULT '0',
  `per_contact_ext` int(1) NOT NULL DEFAULT '0',
  `per_created_at` datetime NOT NULL,
  `per_updated_at` datetime DEFAULT NULL,
  `per_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`per_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`per_id`, `per_nom`, `per_prenom`, `per_date_nais`, `per_lieu_nais`, `per_sexe`, `per_mail`, `per_mdp`, `per_admin`, `per_redac`, `per_contact_ext`, `per_created_at`, `per_updated_at`, `per_deleted_at`) VALUES
(1, 'GENETAY', 'Alain', '1965-05-23', 'Truchtersheim', 'Masculin', 'alaingenetay.hbck@gmail.com', 'tito', 0, 1, 1, '2019-12-13 19:22:56', NULL, NULL),
(2, 'GALLIOZ', 'Cécile', '1975-05-23', 'Paris', 'Féminin', 'Paris', 'tito', 1, 0, 0, '2019-12-13 19:22:56', '2020-01-03 06:43:56', NULL),
(3, 'NONO', 'Emmanuel', '1982-05-23', 'Paris', 'Masculin', 'manuelnono@hotmail.fr', 'tito', 0, 0, 0, '2019-12-13 19:22:56', NULL, NULL),
(4, 'KOSCHIG', 'Raphaël', '1982-04-26', 'Strasbourg', 'Masculin', 'raphael.koschig@gmail.com', 'tito', 1, 0, 0, '2019-12-13 19:22:57', NULL, NULL),
(5, 'SAUVIGNON', 'Dominique', '1976-03-26', 'Truchtersheim', 'Masculin', 'dominique21000@gmail.com', 'tito', 1, 1, 0, '2019-12-13 19:22:57', NULL, NULL),
(6, 'DESCHAMPS', 'Didier', '2020-01-06', 'Ivry', 'Masculin', 'dechamps@...', 'tito', 0, 0, 0, '2020-01-03 00:00:00', NULL, NULL),
(7, 'LEGRAET', 'Noel', '2020-01-05', 'paris', 'masculin', 'legraet@...', 'tito', 0, 0, 0, '2020-01-03 00:00:00', NULL, NULL),
(8, 'KLOPP', 'Jurgen', '2020-01-01', NULL, 'Masculin', 'jurgen@...', 'tito', 0, 0, 0, '2020-01-03 00:00:00', NULL, NULL),
(9, 'DIACRE', 'Corinne', '2020-01-07', NULL, 'Feminin', 'corine@...', 'tito', 0, 0, 0, '2020-01-03 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE IF NOT EXISTS `photo` (
  `pho_id` int(11) NOT NULL,
  `pho_nom` varchar(255) NOT NULL,
  `pho_album_id` int(255) NOT NULL,
  `pho_created_at` datetime NOT NULL,
  `pho_updated_at` datetime DEFAULT NULL,
  `pho_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`pho_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `photo`
--

INSERT INTO `photo` (`pho_id`, `pho_nom`, `pho_album_id`, `pho_created_at`, `pho_updated_at`, `pho_deleted_at`) VALUES
(1, '1.jpg', 1, '2019-12-13 19:22:57', NULL, NULL),
(2, '2.jpg', 2, '2019-12-13 19:22:57', NULL, NULL),
(3, '3.jpg', 3, '2019-12-13 19:22:57', NULL, NULL),
(4, '4.jpg', 4, '2019-12-13 19:22:57', NULL, NULL),
(5, '5.jpg', 5, '2019-12-13 19:22:57', NULL, NULL),
(6, '6.jpg', 6, '2019-12-13 19:22:57', NULL, NULL),
(7, '7.jpg', 7, '2019-12-13 19:22:57', NULL, NULL),
(8, 'toto', 8, '2019-12-18 23:25:47', NULL, NULL),
(9, 'ioui', 9, '2019-12-18 23:27:28', NULL, NULL),
(10, 'ioui', 10, '2019-12-18 23:35:38', NULL, NULL),
(11, 'moi', 10, '2019-12-18 23:42:13', NULL, '2019-12-20 18:51:53'),
(12, 'moi', 10, '2019-12-18 23:43:40', NULL, NULL),
(13, 'moi', 9, '2019-12-18 23:44:03', NULL, '2019-12-20 23:49:34'),
(14, 'C:/laragon/www/projetTutoreWeb/resources/galerie/14..jpeg', 10, '2019-12-18 23:46:28', NULL, '2019-12-20 18:52:03'),
(15, '15.jpeg', 10, '2019-12-18 23:47:23', NULL, NULL),
(16, '16.jpeg', 8, '2019-12-18 23:55:11', NULL, NULL),
(17, '17.jpeg', 7, '2019-12-18 23:57:43', NULL, NULL),
(18, '18.png', 10, '2019-12-19 19:20:22', '2019-12-19 20:30:41', '2019-12-20 18:52:11'),
(19, '19.jpeg', 8, '2019-12-19 20:35:42', '2019-12-19 20:35:57', NULL),
(20, '20.png', 7, '2019-12-20 11:06:45', NULL, '2019-12-20 18:41:42'),
(21, '21.jpeg', 7, '2019-12-20 11:16:18', NULL, '2019-12-20 18:41:31'),
(22, '22.jpeg', 7, '2019-12-20 11:19:39', NULL, '2019-12-20 18:52:29'),
(23, '23.jpeg', 10, '2019-12-20 11:20:13', NULL, '2019-12-20 18:52:19'),
(24, '24.jpeg', 10, '2019-12-20 11:30:13', NULL, '2019-12-20 18:51:47'),
(25, '25', 10, '2019-12-20 11:49:30', '2019-12-20 11:50:17', '2019-12-20 18:41:08'),
(26, '26.jpeg', 10, '2019-12-20 12:02:13', '2019-12-20 12:38:32', NULL),
(27, '27.jpeg', 7, '2019-12-20 12:38:48', '2019-12-20 13:22:11', NULL),
(28, '28.jpeg', 2, '2019-12-20 13:28:06', '2019-12-20 13:28:30', NULL),
(29, '29.png', 7, '2019-12-20 13:31:09', NULL, NULL),
(30, '30.jpeg', 7, '2019-12-20 13:36:45', NULL, NULL),
(31, '31.jpeg', 5, '2019-12-20 13:37:37', '2019-12-20 13:41:31', '2019-12-20 18:51:37');

-- --------------------------------------------------------

--
-- Structure de la table `rencontre`
--

DROP TABLE IF EXISTS `rencontre`;
CREATE TABLE IF NOT EXISTS `rencontre` (
  `ren_id` int(11) NOT NULL AUTO_INCREMENT,
  `ren_equipe_id` int(11) NOT NULL,
  `ren_equipe_adverse` varchar(255) NOT NULL,
  `ren_ville` varchar(255) NOT NULL,
  `ren_nom_stade` varchar(255) NOT NULL,
  `ren_date` datetime DEFAULT NULL,
  `ren_notre_score` int(3) DEFAULT NULL,
  `ren_score_adverse` int(3) DEFAULT NULL,
  `ren_domicile` int(1) DEFAULT NULL,
  `ren_created_at` datetime NOT NULL,
  `fon_updated_at` datetime DEFAULT NULL,
  `fon_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`ren_id`),
  KEY `fk_ren_equ` (`ren_equipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sexe`
--

DROP TABLE IF EXISTS `sexe`;
CREATE TABLE IF NOT EXISTS `sexe` (
  `sex_id` int(11) NOT NULL,
  `sex_intitule` varchar(20) NOT NULL,
  `sex_created_at` datetime NOT NULL,
  `sex_updated_at` datetime DEFAULT NULL,
  `sex_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`sex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sexe`
--

INSERT INTO `sexe` (`sex_id`, `sex_intitule`, `sex_created_at`, `sex_updated_at`, `sex_deleted_at`) VALUES
(1, 'Féminin', '2019-12-20 19:14:58', NULL, NULL),
(2, 'Masculin', '2019-12-20 19:14:58', NULL, NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_per_art` FOREIGN KEY (`art_auteur_id`) REFERENCES `personne` (`per_id`),
  ADD CONSTRAINT `fk_pho_art` FOREIGN KEY (`art_photo_id`) REFERENCES `photo` (`pho_id`);

--
-- Contraintes pour la table `lien_per_fon_equ`
--
ALTER TABLE `lien_per_fon_equ`
  ADD CONSTRAINT `fk_lpfe_equ` FOREIGN KEY (`lpfe_equ_id`) REFERENCES `equipe` (`equ_id`),
  ADD CONSTRAINT `fk_lpfe_fon` FOREIGN KEY (`lpfe_fon_id`) REFERENCES `fonction` (`fon_id`),
  ADD CONSTRAINT `fk_lpfe_per` FOREIGN KEY (`lpfe_per_id`) REFERENCES `personne` (`per_id`);

--
-- Contraintes pour la table `rencontre`
--
ALTER TABLE `rencontre`
  ADD CONSTRAINT `fk_ren_equ` FOREIGN KEY (`ren_equipe_id`) REFERENCES `equipe` (`equ_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
