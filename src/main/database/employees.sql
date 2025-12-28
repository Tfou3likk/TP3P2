-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 28 déc. 2025 à 22:04
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `employees`
--
CREATE DATABASE IF NOT EXISTS `employees` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `employees`;

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

DROP TABLE IF EXISTS `employes`;
CREATE TABLE `employes` (
  `id` int(20) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `departement` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`id`, `username`, `nom`, `prenom`, `password`, `departement`) VALUES
(1, 'Alice', 'Alice', 'Alice', '123', 'RH'),
(2, 'Bob', 'Bob', 'Bob', 'mdp', 'Informatique'),
(3, 'Claire', 'Claire', 'Claire', '123', 'Finance'),
(4, 'David', 'David', 'David', 'mdp', 'Marketing'),
(5, 'Emma', 'Emma', 'Emma', '123', 'Informatique'),
(6, 'Lucas', 'Lucas', 'Lucas', 'mdp', 'RH'),
(7, 'Sarah', 'Sarah', 'Sarah', '123', 'Finance'),
(8, 'Thomas', 'Thomas', 'Thomas', 'mdp', 'Marketing'),
(9, 'Julie', 'Julie', 'Julie', '123', 'Informatique'),
(10, 'Maxime', 'Maxime', 'Maxime', 'mdp', 'RH'),
(11, 'fares', 'fares', 'fares', 'mdp', 'Finance'),
(12, 'fathi', 'fathi', 'fathi', 'mdp', 'Finance'),
(13, 'jean', 'jean', 'jean', '123', 'RH'),
(14, 'jean2', 'jean2', 'jean2', '123', 'RH'),
(15, 'jean3', 'jean3', 'jean3', '123', 'RH'),
(16, 'fr', 'fr', 'fr', 'mdp', 'Finance'),
(19, 'new', 'new', 'new', '123', 'Finance'),
(20, '', '', '', '', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `employes`
--
ALTER TABLE `employes`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
