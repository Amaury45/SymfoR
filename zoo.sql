-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 28 juin 2022 à 14:30
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `zoo`
--

-- --------------------------------------------------------

--
-- Structure de la table `animal`
--

CREATE TABLE `animal` (
  `numéro d'authentification` tinyint(14) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `date de naissance` date DEFAULT NULL,
  `date d'arrivée au zoo` date NOT NULL,
  `date de départ du zoo` date NOT NULL,
  `propriétaire` tinyint(1) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `espèce` varchar(255) NOT NULL,
  `Sexe` varchar(50) NOT NULL,
  `stérilisation` tinyint(1) NOT NULL,
  `quarantaine` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `enclos`
--

CREATE TABLE `enclos` (
  `Espace` varchar(50) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `superficie` int(11) NOT NULL,
  `nombre max d'animaux` int(11) NOT NULL,
  `quarantaine` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `espace`
--

CREATE TABLE `espace` (
  `nom` varchar(50) NOT NULL,
  `superficie` int(11) NOT NULL,
  `date de d'ouverture` date NOT NULL,
  `date de fermeture` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`numéro d'authentification`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
