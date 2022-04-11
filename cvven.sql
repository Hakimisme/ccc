-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 11 avr. 2022 à 12:17
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cvven`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_Client` int(11) NOT NULL AUTO_INCREMENT,
  `NomClient` varchar(50) NOT NULL,
  `PrenomClient` varchar(50) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Motdepasse` varchar(50) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_Client`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_Client`, `NomClient`, `PrenomClient`, `Login`, `Motdepasse`, `Mail`, `admin`) VALUES
(1, 'CHOURA', 'Hakim', 'HakimCHOURA', '81dc9bdb52d04dc20036dbd8313ed055', 'hakimchoura@gmail.com', 1),
(2, 'FADLI', 'Achraf', 'AchrafFADLI', 'd93591bdf7860e1e4ee2fca799911215', 'fadliachraf@gmail.com', 1);

-- --------------------------------------------------------

--
-- Structure de la table `hebergement`
--

DROP TABLE IF EXISTS `hebergement`;
CREATE TABLE IF NOT EXISTS `hebergement` (
  `Num_Hebergement` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Logement` varchar(50) NOT NULL,
  `Num_Type_Hebergement` int(11) NOT NULL,
  `Description` text,
  `Nb_Pers_Max` int(11) NOT NULL,
  PRIMARY KEY (`Num_Hebergement`),
  KEY `HEBERGEMENT_TYPE_HEBERGEMENT_FK` (`Num_Type_Hebergement`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hebergement`
--

INSERT INTO `hebergement` (`Num_Hebergement`, `Nom_Logement`, `Num_Type_Hebergement`, `Description`, `Nb_Pers_Max`) VALUES
(1, 'Chambre 4 Personnes', 1, 'Entree, Douche et wc, 2 Chambres Ã  2 lits avec coin toilette et balcon', 4),
(2, 'Chambre 4 Personnes', 1, 'Entree, Douche et wc, 2 lits doubles', 2),
(3, 'Chambre 3 Personnes', 1, '3 lits separes par une cloison mobile avec coin toilette, wc, douche', 3),
(4, 'Chambre 2 Personnes', 1, 'Entree, Douche et wc, 1 lit double', 2),

(5, 'Chambre 4 Personnes', 2, 'Entree, Douche et wc, 2 lits doubles', 2),
(6, 'Chambre 2 Personnes', 2, 'Entree, Douche et wc, 1 lit double', 2),

(7, 'Chambre 3 Personnes', 3, '3 lits separes par une cloison mobile avec coin toilette, wc, douche', 3),
(8, 'Chambre 4 Personnes', 3, '4 lits separes par une cloison mobile avec douche, wc et balcon', 4),
(9, 'Chambre 4 Personnes', 3, 'logement adapte pour les personnes Ã  mobilite reduite', 4),

(10, 'Chambre 4 Personnes', 4, 'Entree, Douche et wc, 2 Chambres Ã  2 lits avec coin toilette et balcon', 4),
(11, 'Chambre 3 Personnes', 4, '3 lits separes par une cloison mobile avec coin toilette, wc, douche', 3),
(12, 'Chambre 4 Personnes', 4, '4 lits separes par une cloison mobile avec douche, wc et balcon', 4),
(13, 'Chambre 4 Personnes', 4, 'logement adapte pour les personnes Ã  mobilite reduite', 4);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id_Reservation` int(11) NOT NULL AUTO_INCREMENT,
  `Date_Arrivee` date NOT NULL,
  `Date_Depart` date NOT NULL,
  `date-reserv` date DEFAULT NULL,
  `Pension` varchar(50) NOT NULL,
  `Menage` varchar(50) NOT NULL,
  `Nb_Personnes` int(11) NOT NULL,
  `Tarif_Sejour` float NOT NULL,
  `Etat_Reservation` tinyint(50) NOT NULL,
  `id_Client` int(11) NOT NULL,
  `Num_Hebergement` int(11) NOT NULL,
  `Num_Type_Hebergement` int(11) NOT NULL,
  `Situation` int(1) NOT NULL,
  PRIMARY KEY (`id_Reservation`),
  KEY `RESERVATION_CLIENT_FK` (`id_Client`),
  KEY `RESERVATION_HEBERGEMENT0_FK` (`Num_Hebergement`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id_Reservation`, `Date_Arrivee`, `Date_Depart`, `date-reserv`, `Pension`, `Menage`, `Nb_Personnes`, `Tarif_Sejour`, `Etat_Reservation`, `id_Client`, `Num_Hebergement`, `Num_Type_Hebergement`, `Situation`) VALUES
(1, '2022-04-30', '2022-05-07', '2022-05-07', ' Demi_Pension', 'avec', 1, 520, 1, 1, 4, 1, 3),
(2, '2022-04-30', '2022-05-07', '2022-05-07', ' Pension_complÃ¨te', 'sans', 2, 520, 1, 1, 4, 1, 2),
(3, '2022-04-30', '2022-05-07', '2022-05-07', ' Demi_Pension', 'avec', 1, 520, 1, 2, 4, 1, 3),
(4, '2022-04-30', '2022-05-07', '2022-05-07', ' Pension_complÃ¨te', 'sans', 2, 520, 1, 2, 4, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `type_hebergement`
--

DROP TABLE IF EXISTS `type_hebergement`;
CREATE TABLE IF NOT EXISTS `type_hebergement` (
  `Num_Type_Hebergement` int(11) NOT NULL,
  `Type_Hebergement` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nb_Chambres` int(11) NOT NULL,
  `Tarif` float NOT NULL,
  `Lien_Photo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Note` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_hebergement`
--

INSERT INTO `type_hebergement` (`Num_Type_Hebergement`, `Type_Hebergement`, `Description`, `Nb_Chambres`, `Tarif`, `Lien_Photo`, `Note`) VALUES
(1, 'Appartement familial', 'Appartement familial', 4, 430, 'Hotel1.jpg', '5'),
(2, 'Suite panoramique', 'Suite panoramique', 2, 340, 'Hotel2.jpg', '4'),
(3, 'Studio accueillant', 'Studio Accueillant', 3, 250, 'Hotel3.jpg', '3'),
(4, 'Chambre presidentielle', 'Chambre presidentielle', 4, 520, 'Hotel4.jpg', '5');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
