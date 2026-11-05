-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 04 août 2025 à 17:59
-- Version du serveur : 5.7.39
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vscanner_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `date_embauche` datetime(6) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `matricule` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `pays` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `adresse`, `date_embauche`, `date_naissance`, `email`, `matricule`, `nom`, `password`, `pays`, `prenom`, `role`, `telephone`, `ville`) VALUES
(1, 'lot 34', '2025-08-01 17:37:42.185634', '2025-08-06', 'anasben@gmail.com', 'MA-01-2025', 'Ait El Qadi', '$2a$10$RiRj7NUoHWr9W6Yw.8awzuk.wN.IZmmhMaLX0knZwQGWS1pvfYoLS', 'Morocco', 'Anas', 'ROLE_ADMIN', '7654345678', 'sale'),
(2, 'lo432 ', '2025-08-01 17:40:02.462806', '2025-08-15', 'admin@admin.com', 'MA-02-2025', 'admin', '$2a$10$NLtTvc2pTXntwrRUuK/T1ef2lVy8tz0prFvEx9VYSDdj.UBFnOPEy', 'maroc', 'admin', 'ROLE_ADMIN', '+212669542109', 'rabat'),
(52, NULL, '2025-08-02 19:31:22.032045', '2015-08-05', 'taha@gmail.com', 'MA-03-2025', 'taha', '$2a$10$dC0V79A2BzxwBrmGpwWWG.R1wFESp2Zzlhit5bHaOhNRv4QhDqOma', 'maroc', 'izmar', 'ROLE_USER', '765434567876', 'kamouni'),
(102, NULL, '2025-08-04 18:49:06.006475', NULL, 'hmed@lbadi.com', 'XX-005-2025', 'hmed', '$2a$10$ZLofoUuG4HhJqbyK2ZX8ieJXyXhOJ.gf8RpepWkvaaJYp6uIfUc6S', NULL, 'lbadi', 'ROLE_USER', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_seq`
--

CREATE TABLE `user_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user_seq`
--

INSERT INTO `user_seq` (`next_val`) VALUES
(601);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
