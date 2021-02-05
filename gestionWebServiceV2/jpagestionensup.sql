-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 05 fév. 2021 à 17:42
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `jpagestionensup`
--

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

CREATE TABLE `course` (
  `themeCourse` varchar(255) NOT NULL,
  `numberHours` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `course`
--

INSERT INTO `course` (`themeCourse`, `numberHours`) VALUES
('Anglais', 7),
('Informatique', 65),
('Rien', 2);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(8),
(8);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `value` float NOT NULL,
  `course_themeCourse` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id`, `value`, `course_themeCourse`, `student_id`) VALUES
(1, 16.5, 'Informatique', 2),
(4, 6, 'Informatique', 3),
(5, 10, 'Informatique', 4),
(6, 15, 'Informatique', 6);

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthDate` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `mailAddress` varchar(255) DEFAULT NULL,
  `numberPhone` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`id`, `address`, `birthDate`, `firstName`, `lastName`, `mailAddress`, `numberPhone`) VALUES
(3, '14 rue de l\'Amadou', '1992-02-05', 'Ahmadou', 'Lo', 'al@gmail.com', '0654739493'),
(4, '10 avenue de la Bretagne', '1994-04-21', 'Fatimata', 'Ba', 'fb@gmail.com', '0678868412'),
(5, '16 rue de la Joconde', '1993-08-14', 'Cédric', 'Nozerand', 'cn@gmail.com', '0678457846'),
(6, '14 rue du Bout Corneret', '1996-09-26', 'Benjamin', 'Boutrois', 'bb@gmail.com', '0607080910'),
(7, '3 avenue des Rois', '1995-05-24', 'Lyes', 'Koriche', 'lk@gmail.com', '0701542414');

-- --------------------------------------------------------

--
-- Structure de la table `student_course`
--

CREATE TABLE `student_course` (
  `Student_id` int(11) NOT NULL,
  `courses_themeCourse` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profil` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `profil`) VALUES
(1, 'admin', 'admin', 'D');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`themeCourse`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKmugpg56w1dfd00m3aoa8sx6fp` (`course_themeCourse`),
  ADD KEY `FK9c10dmjliyhtgsg9n2fv2ukvv` (`student_id`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `student_course`
--
ALTER TABLE `student_course`
  ADD KEY `FKbwm9j0u941p56cdsugy7e9c22` (`courses_themeCourse`),
  ADD KEY `FK1xm2hei9chmwoqf2wfm104nmg` (`Student_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
