-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 05 mars 2022 à 17:29
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `green_home`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat_en_cours`
--

DROP TABLE IF EXISTS `achat_en_cours`;
CREATE TABLE IF NOT EXISTS `achat_en_cours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_item` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `description2` varchar(1000) NOT NULL,
  `explications` varchar(1000) NOT NULL,
  `explications2` varchar(1000) NOT NULL,
  `explications3` varchar(1000) NOT NULL,
  `explications4` varchar(1000) NOT NULL,
  `img_path` varchar(255) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `bought` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `description2` varchar(1000) NOT NULL,
  `explications` varchar(1000) NOT NULL,
  `explications2` varchar(1000) NOT NULL,
  `explications3` varchar(1000) NOT NULL,
  `explications4` varchar(1000) NOT NULL,
  `img_path` varchar(255) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `achat_en_cours` tinyint(1) NOT NULL,
  `bought` tinyint(1) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`, `price`, `description`, `description2`, `explications`, `explications2`, `explications3`, `explications4`, `img_path`, `categories`, `achat_en_cours`, `bought`, `stock`) VALUES
(1, 450, 'Eolienne facile &agrave installer', 'Eolienne &agrave usage domestique  DC24 V NE400S6 Eolienne horizontale avec contr&ocircleur d\'alimentation pour feux de rue', 'Avec un design humanis&eacute, le g&eacuten&eacuterateur est facile &agrave installer, &agrave entretenir et &agrave r&eacuteparer.\r\n', 'L\'utilisation d\'un alternateur de rotor magn&eacutetique brevet&eacute et d\'un stator sp&eacutecial con&ccedilu pour reduire efficacement la torsion de la r&eacutesistance.\r\n', 'Haute consommation d\'&eacutenergie &eacuteolienne, faible vitesse de d&eacutemarrage, belle apparence et faible vibration.\r\n', 'Lames moul&eacutees par injection pr&eacutecises, profil a&eacuterodynamique et optimisation de la structure, haute consommation d\'&eacutenergie &eacuteolienne, contribuent a la sortie d\'&eacutenergie annuelle.\r\n', 'eolienne1.jpg', 'Eolienne', 1, 0, 500),
(2, 209, 'VEVOR G&eacuten&eacuterateur Eolienne 12V Kit ', 'VEVOR G&eacuten&eacuterateur Eolienne 12V Kit G&eacuten&eacuterateur Turbine Eolienne 500W 5 Pales Contr&ocircleur MPPT Moteur 	&agrave Aimant Triphas&eacute 29 A Corps Aluminium Queue Acier Inox 900 tr/min pour Maison Camping-Cars Bateaux.', 'Le g&eacuten&eacuterateur d\'&eacuteolienne adopte un moteur synchrone &agrave aimant permanent NdFeB triphas&eacute 500W/12V, un faible bruit et une longue dur&eacutee de vie. La coque ext&eacuterieure est con&ccedilue pour une dissipation rapide de la chaleur. Et le contr&ocircleur MPPT externe vous offre des performances de suivi efficaces. ', 'La pale est en fibre de nylon, imperm&eacuteable, r&eacutesistante &agrave la corrosion et l&eacuteg&egravere.', 'Ce kit d\'&eacuteolienne sera livr&eacute avec le cerceau install&eacute, plus pratique que la bride. ', 'Le corps de la turbine est en aluminium moul&eacute sous pression et la queue est en acier inoxydable, caract&eacuteristiques de forme moul&eacutee, mod&egravele en un, haute t&eacutenacit&eacute. ', 'eolienne2.jpg', 'Eolienne', 1, 0, 200);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
