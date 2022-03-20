-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 20 mars 2022 à 16:55
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
-- Structure de la table `achat_effectue`
--

DROP TABLE IF EXISTS `achat_effectue`;
CREATE TABLE IF NOT EXISTS `achat_effectue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `achat_effectue`
--

INSERT INTO `achat_effectue` (`id`, `id_utilisateur`, `id_item`) VALUES
(3, 11, 4),
(2, 4, 3),
(4, 4, 1),
(5, 4, 2),
(6, 4, 3),
(7, 4, 4),
(8, 4, 5),
(9, 4, 6),
(10, 4, 7),
(11, 4, 8);

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
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'JeanR', 'JeanR123', 'Jean', 'Robin');

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
  `puissance` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`, `price`, `description`, `description2`, `explications`, `explications2`, `explications3`, `explications4`, `img_path`, `categories`, `achat_en_cours`, `bought`, `stock`, `puissance`) VALUES
(1, 450, 'Eolienne facile &agrave installer', 'Eolienne &agrave usage domestique  DC24 V NE400S6 Eolienne horizontale avec contr&ocircleur d\'alimentation pour feux de rue', 'Avec un design humanis&eacute, le g&eacuten&eacuterateur est facile &agrave installer, &agrave entretenir et &agrave r&eacuteparer.\r\n', 'L\'utilisation d\'un alternateur de rotor magn&eacutetique brevet&eacute et d\'un stator sp&eacutecial con&ccedilu pour reduire efficacement la torsion de la r&eacutesistance.\r\n', 'Haute consommation d\'&eacutenergie &eacuteolienne, faible vitesse de d&eacutemarrage, belle apparence et faible vibration.\r\n', 'Lames moul&eacutees par injection pr&eacutecises, profil a&eacuterodynamique et optimisation de la structure, haute consommation d\'&eacutenergie &eacuteolienne, contribuent a la sortie d\'&eacutenergie annuelle.\r\n', 'eolienne1.jpg', 'Eolienne', 0, 0, 500, 650),
(2, 209, 'VEVOR G&eacuten&eacuterateur Eolienne 700W Kit ', 'VEVOR G&eacuten&eacuterateur Eolienne 700W Kit G&eacuten&eacuterateur Turbine Eolienne 700W 5 Pales Contr&ocircleur MPPT Moteur 	&agrave Aimant Triphas&eacute 29 A Corps Aluminium Queue Acier Inox 900 tr/min pour Maison Camping-Cars Bateaux.', 'Le g&eacuten&eacuterateur d\'&eacuteolienne adopte un moteur synchrone &agrave aimant permanent NdFeB triphas&eacute 500W/12V, un faible bruit et une longue dur&eacutee de vie. La coque ext&eacuterieure est con&ccedilue pour une dissipation rapide de la chaleur. Et le contr&ocircleur MPPT externe vous offre des performances de suivi efficaces. ', 'La pale est en fibre de nylon, imperm&eacuteable, r&eacutesistante &agrave la corrosion et l&eacuteg&egravere.', 'Ce kit d\'&eacuteolienne sera livr&eacute avec le cerceau install&eacute, plus pratique que la bride. ', 'Le corps de la turbine est en aluminium moul&eacute sous pression et la queue est en acier inoxydable, caract&eacuteristiques de forme moul&eacutee, mod&egravele en un, haute t&eacutenacit&eacute. ', 'eolienne2.jpg', 'Eolienne', 0, 0, 200, 700),
(3, 189, 'G&eacuten&eacuterateur d\'&eacuteolienne 800W', 'G&eacuten&eacuterateur d\'&eacuteolienne 800 W Turbine &eacuteolienne domestique 12 V 24 V 48 V g&eacuten&eacuterateur &eacuteolienne avec 6 lames pour toit domestique (12 V, 6 pales)', 'Faible vitesse de d&eacutemarrage, 6 lames, haute consommation d\'&eacutenergie &eacuteolienne', 'Installation facile, connexion tube ou bride en option', 'Lames utilisant un nouveau art de moulage par injection de pr&eacutecision, assorties &agrave une forme et une structure a&eacuterodynamique optimis&eacutees, ce qui am&eacuteliore l\'utilisation de l\'&eacutenergie &eacuteolienne et la sortie annuelle.', 'Corps en alliage d\'aluminium coul&eacute, avec 2 roulements pivotants, ce qui lui permet de r&eacutesister au vent fort et de fonctionner plus en toute s&eacutecurit&eacute', 'eolienne3.jpg', 'Eolienne', 0, 0, 327, 800),
(4, 189, 'G&eacuten&eacuterateur d\'&eacuteolienne 600 W 24 V', 'G&eacuten&eacuterateur d\'&eacuteolienne 600 W 24 V Faible vitesse du vent D&eacutemarrage 5 lames Haute efficacit&eacute pour &eacutenergie domestique sans &eacutenergie (24 V avec contr &ocircleur)', 'Faible vitesse de d&eacutemarrage, haute consommation de l\'&eacutenergie &eacuteolienne, belle apparence, faible vibration', 'Design respectueux de l\'environnement, installation facile, entretien et r&eacuteparation.', 'Lames de moulage par injection pr&eacutecises, avec le design optimis&eacute du contour et de la structure a&eacuterodynamiques, les lames ont de tels avantages : une utilisation &eacutelev&eacutee de l\'&eacutenergie &eacuteolienne qui contribue &agrave la sortie d\'&eacutenergie annuelle.', 'Les g&eacuten&eacuterateurs adoptent un alternateur de rotor magn&eacutetique permanent brevet&eacute, avec un type de design sp&eacutecial de stator qui diminue efficacement le couple de r&eacutesistance. Parall&egravelement, elles permettent aux &eacuteoliennes de s\'adapter parfaitement aux g&eacuten&eacuterateurs et augmentent leur fiabilit&eacute.', 'eolienne4.jpg', 'eolienne', 0, 0, 300, 600),
(5, 189, 'G&eacuten&eacuterateur d\'&eacuteolienne 800 W Turbine &eacuteolienne domestique 48 V ', 'G&eacuten&eacuterateur d\'&eacuteolienne 800 W Turbine &eacuteolienne domestique 48 V g&eacuten&eacuterateur &eacuteolienne avec 6 lames pour toit domestique (12 V, 6 pales)', 'Faible vitesse de d&eacutemarrage, 6 lames, haute consommation d\'&eacutenergie &eacuteolienne', 'Installation facile, connexion tube ou bride en option', 'Lames utilisant un nouveau art de moulage par injection de pr&eacutecision, assorties &agrave une forme et une structure a&eacuterodynamique optimis&eacutees, ce qui am&eacuteliore l\'utilisation de l\'&eacutenergie &eacuteolienne et la sortie annuelle.', 'Corps en alliage d\'aluminium coul&eacute, avec 2 roulements pivotants, ce qui lui permet de r&eacutesister au vent fort et de fonctionner plus en toute s&eacutecurit&eacute', 'eolienne5.jpg', 'eolienne', 0, 0, 350, 800),
(6, 209, '&eacuteolienne 500W G&eacuten&eacuterateur &eacuteolienne \r\n', 'G&eacuten&eacuterateur &eacuteolienne 12V Kit G&eacuten&eacuterateur Turbine &eacuteolienne 500W 5 Pales Contr&ocircleur MPPT Moteur &agrave Aimant Triphas&eacute 29 A Corps Aluminium Queue Acier Inox 900 tr/min pour Maison Camping-Cars Bateaux ', '(exclellent g&eacuten&eacuterateur) g&eacuten&eacuterateur d\'&eacuteolienne adopte un moteur synchrone &agrave aimant permanent NdFeB triphas&eacute 500W/12V, un faible bruit et une longue dur&eacutee de vie. La coque ext&eacuterieure est con&ccedilue pour une dissipation rapide de la chaleur. Et le contr&ocircleur MPPT externe vous offre des performances de suivi efficaces.', '(faible vitesse de d&eacutemarage) La pale est en fibre de nylon, imperm&eacuteable, r&eacutesistante &agrave la corrosion et l&eacuteg&egravere. Le palier de temp&eacuterature est disponible de -40 degr&eacutes &agrave 80 degr&agraves. La vitesse de d&eacutemarrage du g&eacuten&eacuterateur turbines &eacuteoliennes n\'a besoin que de 2 m/s et il peut ajuster automatiquement la direction pour obtenir la vitesse maximale du vent.\r\n', '(assemblage facile) - Ce kit d\'&eacuteolienne sera livr&eacute avec le cerceau install&eacute, plus pratique que la bride. Pendant ce temps, la pale est con&ccedilue avec pr&eacutecision avec le moyeu et les accessoires de fixation, ce qui vous facilite l assemblage.', '(mat&eacuteriau de haute qualit&eacute) - Le corps de la turbine est en aluminium moul&eacute sous pression et la queue est en acier inoxydable, caract&eacuteristiques de forme moul&eacutee, mod&egravele en un, haute t&eacutenacit&eacute. La surface de la turbine est dispos&eacutee avec un vernis de cuisson, r&eacutesistant &agrave la corrosion, imperm&eacuteable et durable.', 'eolienne6.jpg', 'eolienne', 0, 0, 450, 500),
(7, 199, 'FLTXNY POWER &eacuteolienne 600W 48V', 'FLTXNY POWER &eacuteolienne 600W 48V haute efficacit&eacute Turbine &eacuteolienne domestique G&eacuten&eacuterateur de Vent 5 Lame avec contr&ocircleur MPPT charge', 'Mod&egravele d\'&eacuteolienne: 600W; Tension nominale DC: 48V; Nombre de pales: 5 pi&egraveces', 'L\'&eacuteolienne d&eacutemarre avec l\'&eacutenergie &eacuteolienne &agrave des vitesses de vent allant jusqu\'&agrave 2,0 m/s', 'Vitesse de d&eacutecollage faible, utilisation &eacutelev&eacutee de l\'&eacutenergie &eacuteolienne, l&eacuteg&egravere, mignonne, faibles vibrations', 'Facile &agrave installer et &agrave entretenir, faible co&ucirct d entretien. Les pales adoptent une nouvelle technologie permettant une forte captation de l &eacutenergie &eacuteolienne.', 'eolienne7.jpg', 'eolienne', 0, 0, 500, 600),
(8, 395, 'CHIXIA G&eacuten&eacuterateurs 24v G&eacuten&eacuterateurs D\'&eacuteoliennes Verticales 800w', 'CHIXIA G&eacuten&eacuterateurs 24v G&eacuten&eacuterateurs D\'&eacuteoliennes Verticales 800w avec Contr&ocircleur pour Usage Domestique-Red 24v', 'S&eacutecurit&eacute:5-double Feuille-conception Verticale De Lame D\'axe,Qui Ressemble &agrave Une Lanterne.Le Facteur De S&eacutecurit&eacute Est &eacutelev&eacute En Raison Des Lames Fix&eacutees &agrave L\'int&eacuterieur Par Une Bride,Alors Pas De Risque De Chute De Lame.', 'Installation Facile:Nous Fournissons Des Diagrammes D&eacutetaill&eacutes De D&eacutemontage Des Produits,Afin Que Vous Puissiez Facilement Comprendre La Structure Du Produit,Puis Installer Et D&eacutemonter Rapidement.Simple Et Laborieux-&eacuteconomiser Pour Installer Sur Les Toits,Poteaux T&eacutel&eacutephoniques,M&acircts De Navire Et Autres &eacutequipements.', 'Applications Largement:G&eacuten&eacuterateur D\'&eacutenergie D\'air De Rotor D\'aimant Permanent Habituellement Employ&eacute En Conjonction Avec Des G&eacuten&eacuterateurs Solaires Pour Maximiser La Production D\'&eacutenergie,Largement Utilis&eacute &agrave La Maison,Installations D\'&eacuteclairage Public,Bateaux,Usines,&eacutequipement Offshore,Etc.', 'Lame De D&eacutemarrage Facile:Adopter 5-Lame Verticale De Feuille Et Double-tour De Bride D\'axe.Le G&eacuten&eacuterateur D\'&eacutenergie &eacuteolienne est facile &agrave D&eacutemarrer Dans Les 2-3 Vent De Niveau,Applicabilit&eacute Plus Large.Faible Amplitude Pendant La Rotation De La Lame,Tr&egraves Stable Et Faible Bruyant Pendant Le Travail.', 'eolienne8.jpg', 'eolienne', 0, 0, 420, 800),
(9, 225, '\r\nKit de Panneau Solaire 200W ', '(Excellentes performances): Le cadre en aluminium r&eacutesistant &agrave la corrosion permet aux panneaux de durer des d&eacutecennies et de r&eacutesister au vent fort (2400Pa) et &agrave la neige orageuse (5400Pa). La bo&icircte de jonction est &eacutegalement &eacutetanche IP65.\r\n', '(Large application) : sortie 800 Wh/jour sous 4 heures de plein soleil, parfait pour caravane, marine, camping-car, scooter &eacutelectrique, voiturettes de golf, roues motrices, moteur de p&ecircche &agrave la tra&icircne, remorque &agrave outils, camping-car, alimentation de secours pour la maison, etc.', '(Protection multiple): Le contr&ocircleur de chargeur dispose d\'une protection int&eacutegr&eacutee contre les courts-circuits, les circuits ouverts et les surcharges, ce qui garantit la s&eacutecurit&eacute d\'utilisation. Et il prend en charge 3 types de batteries : les batteries au lithium, les batteries au plomb et les batteries au gel.', '(Installation facile) : les trous pr&eacute-perc&eacutes et les c&acircbles Plug & Play &agrave l\'arri&egravere permettent un montage rapide. Le kit peut &ecirctre connect&eacute en s&eacuterie (24V) ou en parall&egravele (12V) selon vos besoins.', '(Garantie compl&egravete): Une garantie d’un an avec support technique 24/7 est disponible. Si vous avez un probl&egraveme ou une question concernant le produit, n\'h&eacutesitez pas à nous contacter via Green Home ou &agrave appeler la hotline ECO-WORHTY pour obtenir de l\'aide.', 'panneau1.jpg', 'panneau', 0, 0, 500, 200),
(10, 235, 'Lot de 2 panneaux solaires monocristallins flexibles 100 W', 'Lot de 2 panneaux solaires monocristallins flexibles 100 W 18 V pour camping-car, bateau, tente, voiture, remorque, chargeur de batterie 12 V', '(Haute efficacit&eacute) Avec des cellules solaires monocristallines à haut rendement, l\'efficacit&eacute de la production d\'&eacutelectricit&eacute est de 22% et la surface globale est plus petite pour la m&ecircme puissance.', '(Durable) La surface est fabriqu&eacutee en PET d&eacutepoli, trait&eacute avec une technologie sp&eacuteciale pour le rendre plus r&eacutesistant à l\'usure et am&eacuteliorer l\'efficacit&eacute d\'absorption de la lumi&egravere du soleil. Il peut &eacutegalement supporter une forte pression du vent, des charges de neige et des temp&eacuteratures extr&ecircmes.', '(Fiable) mat&eacuteriau d\'encapsulation avanc&eacute avec laminage multicouche pour am&eacuteliorer la performance cellulaire et fournir une longue dur&eacutee de vie. La prise de composants utilise un c&acircble sp&eacutecial photovolta&iumlque et un connecteur. Il est s&ucircr, &eacutetanche, r&eacutesistant aux hautes temp&eacuteratures et aux intemp&eacuteries pour une utilisation en ext&eacuterieur. Le connecteur est facile &agrave utiliser et plug and play.', '(Facile à installer) 6 trous de montage renforc&eacutes en m&eacutetal &agrave chaque coin pour fixer les vis et pour une installation facile. Le panneau solaire flexible peut &eacutegalement &ecirctre directement coll&eacute &agrave la surface avec de la colle silicone. Respectueux de l\'environnement et &eacuteconomie d\'&eacutenergie.', 'panneau2.jpg', 'panneau', 0, 0, 300, 100),
(11, 63, 'Panneau Solaire Solaire Simple De Haute Efficacit&eacute 50W ', 'con&ccedilu pour les g&eacuten&eacuterateurs solaires: un panneau solaire pliable 100 w est compatible avec la plupart des g&eacuten&eacuterateurs solaires / des centrales portables sur le march&eacute. combinaison, cela fournit une alimentation parfaite pour le voyage et l\'urgence. les panneaux solaires pliables contiennent 10 connecteurs de conversion de diff&eacuterentes tailles et 3 mod&egraveles diff&eacuterents de c&acircbles pour &ecirctre parfaitement compatibles avec diff&eacuterentes piles.\r\n', 'il convient tr&egraves parfaitement &agrave toutes les installations hors ligne sur le v&eacutehicule ou sur la carte, ou peut &ecirctre utilis&eacute pour tout syst&egraveme solaire hors r&eacuteseau ind&eacutependant avec une batterie, tel qu\'un syst&egraveme solaire &agrave domicile ou un &eacuteclairage solaire.', 'l\'efficacit&eacute de la conversion de module est aussi &eacutelev&eacutee que 23,6%. la performance quotidienne est id&eacuteale (en fonction de l\'intensit&eacute lumineuse). les diodes de d&eacuterivation peuvent minimiser la diminution de la puissance caus&eacutee par des ombrages et assurer une excellente performance dans un environnement lumineux faible.\r\n', 'le niveau de silicium monocristal de 18% de l\'adh&eacutesif zellwirk est utilis&eacute et la batterie de 125 mm de cristal est utilis&eacutee en allemagne t&uumlv certification, de 3,6 m&egravetres, il est toujours intact. la surface est faite de verre solaire tremp&eacute durcissant, avec une trame d\'alumine aluminium anodis&eacutee unique achet&eacutee aupr&egraves du concessionnaire directement aupr&egraves du concessionnaire.', 'imperm&eacuteable et durable: les panneaux solaires sont en nylon imperm&eacuteable durable avec des supports ajustables pour obtenir une lumi&egravere solaire efficace. les panneaux solaires sont certifi&eacutes par fcc, rohs, ce. la technologie de protection des courts-circuits vous prot&egravege et votre appareil.', 'panneau3.jpg', 'panneau', 0, 0, 350, 50),
(12, 99, 'Mono Panneau solaire monocristallin 150W', 'Enjoy solar Mono Panneau solaire monocristallin 12V Id&eacuteal pour camping-car, abris de jardin, bateau (150W)', '(Donn&eacutees techniques) Puissance nominale (Pmax): 150 W - Tension max. (Vmp): 18,5 V - Courant max. (Imp): 8,12 A - Tension en circuit ouvert (Voc): 22,80 V - Courant de court-circuit (Isc): 8,77 A - Tension maximale du syst&egraveme: 1000VDC - Temp&eacuterature de fonctionnement.: -45 ° C à + 85 ° C - Dimensions: 1240 * 670 * 35mm --Poids: 9.7KG', '(Application) On-Grid ou Off-Grid pour maisons &eacutecologiques, cabanes, caravanes, mobil-homes, bateaux etc. pour tous les besoins li&eacutes &agrave un approvisionnement &eacutenerg&eacutetique autonome et mobile.', '(Garantie) Garantie de tol&eacuterance plus (- + 3%), garantie de performance jusqu\'&agrave 10 ans avec 90% et jusqu\'à 25 ans avec 80%', '(Mat&eacuteriaux) cellules solaires de qualit&eacute A de haute qualit&eacute, efficacit&eacute sup&eacuterieure gr&acircce au jeu de 5 barres, m&ecircme dans de mauvaises conditions d\'&eacuteclairage; Surface en verre solaire ESG tremp&eacute avec rev&ecirctement r&eacutesistant aux intemp&eacuteries; Cadre en aluminium r&eacutesistant &agrave la corrosion pour une utilisation ext&eacuterieure prolong&eacutee avec des trous de montage pr&eacute-perc&eacutes; Bo&icircte de jonction IP65 avec c&acircble solaire &agrave double isolation de 90 cm de long 4 mm² et prise MC4; Deux diodes bypass int&eacutegr&eacutees', 'panneau4.jpg', 'panneau', 0, 0, 420, 150),
(13, 192, 'Panneau Solaire 100W', 'SWAREY 100W Panneau Solaire Pliable ETFE Monocristallin Chargeur Solaire Portable 18V Type-C PD 60W DC/USB/QC3.0/MC4 MPPT pour G&eacuten&eacuterateur Solaire Camping Ordinateur Portable Tablette T&eacutel&eacutephone', 'Utilisant du silicium monocristallin de haute qualit&eacute et un film ETFE, il pr&eacutesente une excellente transmission de la lumi&egravere, une r&eacutesistance &agrave la chaleur et des performances d\'&eacutetanch&eacuteit&eacute, ce qui peut augmenter la conversion jusqu\'&agrave 23 % (5 % de plus que les mat&eacuteriaux traditionnels).  Veuillez noter : la bo&icircte de jonction n\'est pas &eacutetanche et veuillez la garder au sec.', 'La cellule solaire est &eacutequip&eacutee de 1 port USB, 1 port USB QC3.0 (18W Max), 1 port USB Type-C (PD 60W) et 1 port DC (support MC-4) pour permettre 4 appareils &eacutelectroniques &agrave charger simultan&eacutement, gardant vos appareils pleins de jus. Le paquet est livr&eacute avec un adaptateur CC 10 en 1, compatible avec la plupart des g&eacuten&eacuterateurs solaires et fournit de l\'&eacutenergie verte pour vos activit&eacutes de sortie.\r\n', 'Abandonnant les sacs en tissu traditionnels, utilisant des mat&eacuteriaux polym&egraveres avanc&eacutes, le poids est 60% plus l&eacuteger que les panneaux solaires traditionnels, plus adapt&egraves à l\'ext&egraverieur, laissez votre voyage d\'aventure aller plus loin. Et la b&egravequille am&egravelior&egravee peut r&egravetr&egravecir automatiquement sans g&ecircner la collecte.', 'Le film de panneau solaire ETFE a une forte propri&eacutet&eacute autonettoyante. En raison de son faible coefficient de frottement, la poussi&egravere et la salet&eacute ne peuvent pas rester sur la surface lisse. M&ecircme s\'il y a de la poussi&egravere flottante &agrave la surface, elle peut &ecirctre emport&eacutee par une pluie l&eacuteg&egravere. Gardez la surface propre &agrave tout moment pour obtenir un meilleur effet de conversion de l\'&eacutenergie solaire.', 'panneau5.jpg', 'panneau', 0, 0, 300, 100),
(14, 239, ' Panneau solaire pliable de 140 W', 'ALLPOWERS Panneau solaire pliable de 140 W - Kit de chargement solaire Chargeur Solaire Portable Avec Sortie MC-4 pour camping centrale &eacutelectrique portative Alimentation de secours tablette', 'M&eacutethodes de sortie multiple MC4 et 4 en un : La sortie MC4 peut fournir un courant maximal de 20 A, tandis que le port CC de seulement 10 A, un port USB (5 V/2,4 A par port) avec la technologie iSolar pour charger vos appareils 5 V et une sortie 18 V CC (18 V/3 A) pour charger votre ordinateur portable ou une batterie de voiture 12 V et un g&eacuten&eacuterateur portable.', 'Les cellules solaires de 140 W sont fabriqu&eacutees aux &eacute tats-Unis avec un rendement allant jusqu\'à 22 % et offrent un plaisir infini aux ordinateurs portables, centrales, t&eacutel&eacutephones portables et autres batteries sous le soleil.', 'Pliable et facile &agrave transporter : 1/3 plus l&eacuteger pour la m&ecircme puissance que Solar Slicon. La puissance globale augmente de 1/3 par rapport &agrave la m&ecircme taille du panneau solaire. Dimensions pli&eacute : seulement 22 x 14,2 x 0,2 cm, id&eacuteal pour les voyages hors route sans acc&egraves &agrave l\'&eacutelectricit&eacute et ne prend pas beaucoup de place.', 'L&eacuteger, imperm&eacuteable et r&eacutesistant. Fabriqu&eacute en nylon r&eacutesistant et imperm&eacuteable et support r&eacuteglable pour obtenir la lumi&egravere du soleil la plus efficace. Le panneau solaire est certifi&eacute FCC, RoHS, CE. La technologie de protection contre les courts-circuits et les surtensions vous prot&egravege ainsi que vos appareils.', 'panneau6.jpg', 'panneau', 0, 0, 430, 140),
(15, 83, '100W Panneau solaire monocristallin ', '100W Panneau solaire monocristallin 100Watt id&eacuteal pour les mobil-homes, abris de jardin, bateaux (emballage individuel)', 'Cellules solaires de haute qualit&eacute, efficacit&eacute accrue gr&acircce au bar &agrave 5 bus m&ecircme dans des conditions de faible luminosit&eacute ; surface en verre tremp&eacute tremp&eacute avec rev&ecirctement r&eacutesistant aux intemp&eacuteries ; cadre en aluminium r&eacutesistant &agrave la corrosion pour une utilisation ext&eacuterieure prolong&eacutee avec trous de montage pr&eacute-perc&eacutes ; bo&icircte de raccordement IP65 de 90 cm de long avec c&acircble solaire &agrave double isolation et prise MC4 ; deux diodes Bypass int&eacutegr&eacutees.', 'Saar test&eacute selon les normes en vigueur.', 'Sur grille ou hors grille pour les maisons &eacutecologiques, les cabanes, les caravanes, les camping-cars, les bateaux, etc. pour tous les besoins en alimentation autonome et mobile.', ' Tol&eacuterance de plus (-+3%), Garantie de performance jusqu\'&agrave 10 ans avec 90% et jusqu\'&agrave 25 ans &agrave 80%', 'panneau7.jpg', 'panneau', 0, 0, 234, 100),
(16, 120, 'Kit panneau solaire monocristallin 120 W', 'Kit panneau solaire monocristallin 120 W avec contr&ocircleur de charge et c&acircbles haute efficacit&eacute 12 V 24 V chargeur de batterie pour syst&egraveme hors r&eacuteseau domestique', 'Anti-reflet, haute transparence, verre tremp&eacute &agrave faible teneur en fer avec plus de rigidit&eacute et de r&eacutesistance aux chocs', 'La couche de verre le rend facile &agrave nettoyer. Le panneau solaire dispose d\'un cadre en aluminium r&eacutesistant &agrave la corrosion, robuste, scell&eacute, vous offre des ann&eacutees et des ann&eacutees de puissance constante et libre. R&eacutesiste au vent et &agrave la neige, le design &eacutetanche garantit que le panneau peut &ecirctre utilis&eacute dans toutes les conditions m&eacutet&eacuteorologiques', 'Bo&icircte de jonction &eacutetanche, c&acircbles m&acircles et femelles pour une utilisation facile Plug and Play. Installation facile, trous pr&eacute-perc&eacutes pour un montage rapide et s&eacutecuris&eacute.', 'Contr&ocircleur de charge LCD, syst&egraveme de d&eacutetection automatique 12 V/24 V, l\'affichage LCD peut indiquer la tension de la batterie et le courant de charge, avec la batterie invers&eacutee, la surcharge, les courts-circuits et la protection contre la surcharge/d&eacutecharge garantit une plus grande application hors r&eacuteseau et la s&eacutecurit&eacute.', 'panneau8.jpg', 'panneau', 0, 0, 243, 120);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `pays` varchar(255) NOT NULL,
  `numero_tel` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `carte` varchar(255) NOT NULL,
  `numero_carte` int(255) NOT NULL,
  `date_expiration_carte` varchar(255) NOT NULL,
  `cryptogram` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `prenom`, `nom`, `pseudo`, `mdp`, `adresse`, `ville`, `code_postal`, `pays`, `numero_tel`, `email`, `carte`, `numero_carte`, `date_expiration_carte`, `cryptogram`) VALUES
(1, 'Romain', 'Rousselot', 'RomainR', 'RomainR123', '15 allée d\'Annecy', 'Annecy', 74940, 'France', 635251545, 'romain.rousselot@edu.ece.fr', 'Visa', 356458963, '2023-01-10', 299),
(4, 'Elise', 'Beauvillain', 'EliseB', 'EliseB123', '5 residence Elysee 1', 'La celle st cloud', 78170, 'France', 635221985, 'elise.beauvillain@edu.ece.fr', 'Mastercard', 48562596, '2022-05-08', 896),
(6, 'Ines', 'Mainetti', 'InesM', 'InesM123', '5 rue de pau', 'pau', 54879, 'France', 658987548, 'ines.mainetti@edu.ece.fr', 'Paypal', 589875654, '2025-28-14', 987),
(11, 'Corentin', 'Billa', 'CorentinB', 'CorentinB123', '5 allee de aix', 'Aix', 78985, 'France', 654879854, 'corentin.billa@edu.ece.fr', 'Paypal', 48562596, '2027-03-17', 896);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
