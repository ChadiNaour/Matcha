-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : sam. 27 mars 2021 à 13:41
-- Version du serveur :  8.0.23
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_matcha`
--

-- --------------------------------------------------------

--
-- Structure de la table `blockList`
--

CREATE TABLE `blockList` (
  `id` int NOT NULL,
  `blocker_id` int DEFAULT NULL,
  `blocked_id` int DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `likesList`
--

CREATE TABLE `likesList` (
  `id` int NOT NULL,
  `liker_id` int DEFAULT NULL,
  `liked_id` int DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `likesList`
--

INSERT INTO `likesList` (`id`, `liker_id`, `liked_id`, `date`) VALUES
(1, 43, 44, '2021-03-18 03:20:32'),
(3, 44, 43, '2021-03-19 03:40:52'),
(6, 47, 43, '2021-03-26 16:27:53'),
(7, 43, 47, '2021-03-26 16:45:52');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `sender` int NOT NULL,
  `receiver` int NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `sender`, `receiver`, `message`) VALUES
(42, 44, 43, 'fin azaml'),
(43, 44, 43, 'cv'),
(44, 44, 43, 'n7wik'),
(45, 43, 44, 'xsqc'),
(46, 44, 43, 'hhhhd'),
(47, 44, 43, 'sxx'),
(48, 44, 43, 'qsc dscdsc'),
(49, 47, 43, 'k'),
(50, 47, 43, 'k'),
(51, 47, 43, 'k'),
(52, 47, 43, 'k'),
(53, 47, 43, 'k'),
(54, 47, 43, 'k'),
(55, 47, 43, 'k'),
(56, 47, 43, 'l'),
(57, 47, 43, 'l'),
(58, 47, 43, 'l'),
(59, 47, 43, 'l'),
(60, 47, 43, 'l'),
(61, 47, 43, 'l'),
(62, 47, 43, 'a'),
(63, 47, 43, 'a'),
(64, 47, 43, 'aa'),
(65, 47, 43, 'a'),
(66, 47, 43, 'a'),
(67, 47, 43, 'a'),
(68, 47, 43, 'a'),
(69, 47, 43, 'a'),
(70, 47, 43, 'aa'),
(71, 47, 43, 'aa'),
(72, 47, 43, 'a'),
(73, 47, 43, 'a'),
(74, 47, 43, 'aa'),
(75, 47, 43, 'a');

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `by` int NOT NULL,
  `receiver` int NOT NULL,
  `content` varchar(255) NOT NULL,
  `seen` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`id`, `by`, `receiver`, `content`, `seen`) VALUES
(1, 43, 44, 'issam sent you a message', 1),
(2, 43, 44, 'issam sent you a message', 1),
(3, 43, 44, 'issam sent you a message', 1),
(4, 43, 44, 'issam sent you a message', 1),
(5, 43, 44, 'issam sent you a message', 1),
(6, 43, 44, 'issam sent you a message', 1),
(7, 43, 44, 'issam sent you a message', 1),
(8, 43, 44, 'issam sent you a message', 1),
(9, 43, 44, 'issam sent you a message', 1),
(10, 43, 44, 'issam sent you a message', 1),
(11, 43, 44, 'issam sent you a message', 1),
(12, 43, 44, 'issam sent you a message', 1),
(13, 43, 44, 'issam sent you a message', 1),
(14, 43, 44, 'issam sent you a message', 1),
(17, 43, 44, 'issam sent you a message', 1),
(18, 43, 44, 'issam sent you a message', 1),
(19, 43, 44, 'issam sent you a message', 1),
(20, 43, 44, 'issam sent you a message', 1),
(21, 43, 44, 'issam sent you a message', 1),
(22, 43, 44, 'issam sent you a message', 1),
(23, 43, 44, 'issam sent you a message', 1),
(24, 43, 44, 'issam sent you a message', 1),
(25, 43, 44, 'issam sent you a message', 1),
(26, 43, 44, 'issam sent you a message', 1),
(27, 43, 44, 'issam sent you a message', 1),
(28, 43, 44, 'issam sent you a message', 1),
(29, 43, 44, 'issam sent you a message', 1),
(30, 43, 44, 'issam sent you a message', 1),
(31, 43, 44, 'issam sent you a message', 1),
(32, 43, 44, 'issam sent you a message', 1),
(33, 43, 44, 'issam sent you a message', 1),
(34, 43, 44, 'issam sent you a message', 1),
(35, 43, 44, 'issam sent you a message', 1),
(36, 43, 44, 'issam sent you a message', 1),
(37, 43, 44, 'issam sent you a message', 1),
(39, 43, 44, 'issam sent you a message', 1),
(43, 43, 44, 'issam sent you a message', 1),
(53, 47, 44, 'mosalah viewed your profile', 0),
(57, 47, 44, 'mosalah viewed your profile', 0),
(59, 47, 44, 'mosalah viewed your profile', 0),
(61, 47, 44, 'mosalah viewed your profile', 0),
(63, 47, 44, 'mosalah viewed your profile', 0),
(65, 47, 44, 'mosalah viewed your profile', 0),
(67, 47, 44, 'mosalah viewed your profile', 0),
(69, 47, 44, 'mosalah viewed your profile', 0),
(70, 47, 44, 'mosalah viewed your profile', 0),
(72, 47, 44, 'mosalah viewed your profile', 0),
(74, 47, 44, 'mosalah viewed your profile', 0),
(83, 47, 44, 'mosalah viewed your profile', 0),
(85, 47, 44, 'mosalah viewed your profile', 0),
(87, 47, 44, 'mosalah viewed your profile', 0),
(88, 47, 44, 'mosalah viewed your profile', 0),
(95, 47, 44, 'mosalah liked you', 0),
(96, 47, 44, 'mosalah viewed your profile', 0),
(97, 47, 44, 'mosalah viewed your profile', 0),
(103, 47, 44, 'mosalah viewed your profile', 0),
(105, 47, 44, 'mosalah viewed your profile', 0),
(114, 43, 44, 'issam viewed your profile', 0),
(118, 43, 44, 'issam viewed your profile', 0),
(119, 43, 44, 'issam viewed your profile', 0),
(120, 43, 44, 'issam viewed your profile', 0),
(121, 43, 44, 'issam viewed your profile', 0),
(122, 43, 44, 'issam viewed your profile', 0),
(123, 43, 44, 'issam viewed your profile', 0),
(124, 43, 44, 'issam viewed your profile', 0),
(126, 48, 44, 'bruno18 viewed your profile', 0),
(129, 47, 50, 'mosalah viewed your profile', 0),
(130, 47, 50, 'mosalah viewed your profile', 0),
(131, 47, 50, 'mosalah viewed your profile', 0),
(132, 55, 44, 'soso viewed your profile', 0),
(134, 55, 44, 'soso viewed your profile', 0),
(136, 55, 44, 'soso viewed your profile', 0),
(138, 55, 44, 'soso viewed your profile', 0),
(141, 55, 44, 'soso viewed your profile', 0),
(146, 55, 53, 'soso viewed your profile', 0),
(147, 55, 50, 'soso viewed your profile', 0),
(148, 55, 51, 'soso viewed your profile', 0),
(149, 55, 54, 'soso viewed your profile', 0),
(150, 55, 48, 'soso viewed your profile', 0),
(151, 55, 52, 'soso viewed your profile', 0),
(152, 55, 53, 'soso viewed your profile', 0),
(154, 55, 44, 'soso viewed your profile', 0),
(155, 57, 53, 'correction viewed your profile', 0),
(156, 57, 51, 'correction viewed your profile', 0),
(157, 57, 51, 'correction liked you', 0),
(158, 57, 53, 'correction viewed your profile', 0),
(186, 47, 53, 'mosalah viewed your profile', 0),
(187, 47, 51, 'mosalah viewed your profile', 0),
(188, 47, 53, 'mosalah viewed your profile', 0),
(189, 47, 50, 'mosalah viewed your profile', 0),
(190, 47, 43, 'mosalah viewed your profile', 0),
(191, 47, 56, 'mosalah viewed your profile', 0),
(192, 47, 48, 'mosalah viewed your profile', 0),
(193, 47, 52, 'mosalah viewed your profile', 0);

-- --------------------------------------------------------

--
-- Structure de la table `pics`
--

CREATE TABLE `pics` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `path` varchar(255) NOT NULL,
  `isProfilePic` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pics`
--

INSERT INTO `pics` (`id`, `user_id`, `path`, `isProfilePic`) VALUES
(18, 42, '2021-03-16T19:42:15.440Zdb.png', 1),
(19, 42, '2021-03-16T19:42:22.920Zkeila-hotzel-tJtUvIG3vPI-unsplash.jpg', 0),
(24, 31, '2021-03-17T15:07:30.429Zundraw_connection_b38q.png', 1),
(25, 31, '2021-03-17T15:09:35.579Zkeila-hotzel-tJtUvIG3vPI-unsplash.jpg', 0),
(26, 31, '2021-03-17T15:09:47.157Zundraw_connection_b38q.png', 0),
(27, 31, '2021-03-17T15:09:53.579Zundraw_connection_b38q.png', 0),
(28, 31, '2021-03-17T15:09:59.239Zundraw_connection_b38q.png', 0),
(29, 43, '2021-03-19T00:32:00.460Zdb.png', 0),
(30, 44, '2021-03-19T00:37:51.974Zkeila-hotzel-tJtUvIG3vPI-unsplash.jpg', 1),
(31, 43, '2021-03-19T11:41:11.587Z404.png', 1),
(32, 46, '2021-03-21T06:01:48.770Z404.png', 1),
(33, 46, '2021-03-21T06:04:50.851Z404.png', 0),
(34, 47, '2021-03-26T14:44:58.249Zsalah.jpg', 1),
(35, 47, '2021-03-26T14:45:03.518Zsalahmrakez.jpg', 0),
(36, 47, '2021-03-26T14:45:08.036Zsalahtayya7.jpg', 0),
(37, 48, '2021-03-26T16:22:48.690Zsalahmrakez.jpg', 1),
(38, 50, '2021-03-26T17:17:00.526Zsalah.jpg', 0),
(39, 50, '2021-03-26T17:17:04.507Zsalahtayya7.jpg', 0),
(40, 50, '2021-03-26T17:17:10.405Zsalahmrakez.jpg', 1),
(41, 51, '2021-03-27T09:31:20.111Zmia.jpg', 1),
(42, 53, '2021-03-27T09:32:29.973ZAVT_Maria-Sharapova_4884.jpg', 1),
(43, 52, '2021-03-27T09:33:22.052Zhaile.jpg', 1),
(44, 54, '2021-03-27T09:34:31.932Zemily.jpeg', 1),
(45, 55, '2021-03-27T09:36:00.799Zsoso.jpeg', 1),
(46, 56, '2021-03-27T10:17:29.230Zsoso.jpeg', 1),
(47, 57, '2021-03-27T10:37:29.654Zmia.jpg', 1),
(48, 57, '2021-03-27T10:37:36.185Zemily.jpeg', 0),
(49, 59, '2021-03-27T11:09:12.262Zemily.jpeg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reportList`
--

CREATE TABLE `reportList` (
  `id` int NOT NULL,
  `reporter_id` int NOT NULL,
  `reported_id` int NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int NOT NULL,
  `tag` varchar(255) NOT NULL,
  `create_tag` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tags`
--

INSERT INTO `tags` (`tag_id`, `tag`, `create_tag`) VALUES
(79, 'sqxsqx', 31),
(80, 'xsqxsq', 31),
(84, 'cdscdssd', 31),
(85, 'xsjxjsq', 32),
(86, 'issam', 32),
(87, 'zouiten', 32),
(88, 'dcvdsvdsvdsv', 42),
(89, 'issamm', 31),
(90, 'iss', 46),
(91, 'isam', 46),
(92, 'ZO', 46),
(93, 'xsqx', 46),
(94, 'xqsxsq', 46),
(95, '#issam124', 59),
(96, '#issam14', 59),
(97, '#othmane', 43);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `vfToken` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'null',
  `verif` int NOT NULL DEFAULT '0',
  `Online` int NOT NULL DEFAULT '0',
  `lastSignIn` datetime DEFAULT NULL,
  `date_birthday` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `Sexual_orientation` varchar(255) DEFAULT NULL,
  `biography` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `step` int NOT NULL DEFAULT '0',
  `age` int DEFAULT NULL,
  `rating` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `username`, `email`, `password`, `vfToken`, `verif`, `Online`, `lastSignIn`, `date_birthday`, `gender`, `Sexual_orientation`, `biography`, `latitude`, `longitude`, `step`, `age`, `rating`) VALUES
(43, 'zouiten', 'issam', 'issam', 'is-sam1225@hotmail.fr', '$2b$10$hrqUqZSQbIlw/KQuCmRIpOzxJcUAEAmYBctBDCVHtOgrQDoy4yHZm', 'a497bb8a00f366d604d66811a9eee7b2d3751f214b545bb2143290e6249ba5149c3663ec20dd797c0ccc2b45919710a01ef622deb4cf91591b964e7de53f13f4', 1, 0, '2021-03-27 14:09:04', '1999-03-25', 'male', 'women', 'wqxqx', 32.8811, -6.9063, 3, 21, 5),
(44, 'Badr', 'issam', 'issam11', 'is-1sam25@hotmail.fr', '$2b$10$cXMbttYnf3.gTmBvAo.Op.eDJOxRCMpI68BBftNDY/ccTWCfJD6k.', '718439e60d522c0c362cbde73ee8eb48025fec65357c3e18d00546747d2cdc48cf948a69739527229c32f8fdd49a8a5b5ad4b620557c2efaf405a4206c8221a7', 1, 1, NULL, '1999-03-04', 'male', 'women', 'zouiten12issam', 32.8811, -6.9063, 3, 22, 4.5),
(47, 'salah', 'mohamad', 'mosalah', 'hjsvbfhjsfb@gmail.com', '$2b$10$JIuSjSjBRnCULPOa3jd0g.vsfK5nm.gq.QAxG8aaZ45tVqgVl6hgy', '348e0c3e91beb6f6d9d825cd5145905cb6db40630158515dbe7ea0cec8d8edd7a3f2f52423c656becdbbc93fd01fc882d07d3e6f797401eea7215ac2acac2af6', 1, 1, NULL, '1986-03-17', 'male', 'both', 'fakhr l3arab', 31.0913, 29.9784, 3, 35, 4.7),
(48, 'fernandez', 'bruno', 'bruno18', 'monali8046@asfalio.com', '$2b$10$vrQHQQmAqIflLW.F5n.q5e//Fa6K6i2HBD5ZowT/dWZ3bVj3rwxiC', '972dee12d96fa7bf6898a5d3ed39ba805bd8620079578cc9e50c70a3c4b82f7b90c461bda2a06efc4e9f7653eeea2f4e26779f79bf369ec150d7c08dcb2d0283', 1, 0, '2021-03-26 18:13:12', '1994-03-26', 'male', 'women', 'pilantyat', 32.89, -6.92106, 3, 27, 0.4),
(49, NULL, NULL, 'othmane', 'ineiqvjv@maxresistance.com', '$2b$10$TAY/tX91tNdqvvoErV.1HOtDAqtf4ebAswDRMgCz5FhMY4XwHy8.2', '7764aae10b81134d06ca9611986798d6599f46542f85380fe923b6d9e0819075c1bc9554bf39bfd66386472d8bbb0fa0ee1f1ce24d7a95ba4c934445c3315497', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(50, 'salah', 'bruno', 'othmane2', 'ofwlpdokxmxpxc@maxresistance.com', '$2b$10$Vu3M6k2jQT1wtg./ql.cj.BDAuwcsIoGoXNUYiooPSS0DzC6JPkzS', 'a5a3afd5098710735b25581b08731757e1e177d707def4bbf8f3f495325894aa307ffba00a25e4587db5beb209a0ff57dae99de6af2896be16e9a2ab68d51af6', 1, 1, NULL, '1992-03-22', 'male', 'women', 'cdscdsc', 31.152, 29.9183, 3, 29, 1),
(51, 'khalifa', 'mia', 'mia10', 'shbsguvb@gmail.com', '$2b$10$g37K88KyAeHFhEpc1QOpbu7pwKHLPVyjSX/or4Wx5vv/qDdupikd2', '2f87f415ad50a460a037602d227000fe4b1d0091b973a7d275f48ec10ab9ead9801a62b9e8803e700c81838a7a44c35705b0d62d0d082df7475bf15072186196', 1, 0, '2021-03-27 10:31:45', '1990-02-01', 'female', 'men', 'khchaya', 32.8736, -6.91763, 3, 31, 0.8),
(52, 'steinfeld', 'hailee', 'hailee', 'sbcshvbvh@gmail.com', '$2b$10$HZbsQLhjAGSlWlBEj1Wllu8ivCdc1gINyW.tPAStm7yacSo7u/m6e', '8f41c7689161fcfcb566637fe1eada1747d21f6374f191ebfcad44574c8ebc8466bf3c2fe76b39f069fe51c9dfc6373a04c00ce7e3a1600743dea47abfe54b28', 1, 0, '2021-03-27 10:33:36', '1980-02-01', 'female', 'men', 'mosi9a', 32.8295, -6.79335, 3, 41, 0.4),
(53, 'pova', 'chara', 'charapova', 'hsbchjsbvh@gmail.com', '$2b$10$4p10lomxKbAJ8Gej2dQ6Ouo.MEALSG7JwFGSvNyL.gnVNqJXcwa2q', 'efecaf19965f8de5590f5abd77033ab44e4ca17862a72534a61065d72b76d442a550c8c4c4f1075f7bbf72ebc4bdb5b190cc70c535c9f73991a2549a435cbab7', 1, 0, '2021-03-27 10:32:39', '1979-02-01', 'female', 'men', 'tenis', 32.8755, -6.89823, 3, 42, 1.2),
(54, 'inparis', 'emily', 'emily', 'shfvhfbsfh@gmail.com', '$2b$10$MQdbsWqEL7vxxTOHtbdLcOcmF37IP6kdIehQIzqkel9Rtt/nPr3O6', '166aa6b23279032e665cd03ac514e9c44e95ae37cc0463ed03b57d3c5c6555e69d79da725634b9a00158825e00e54468dc5f89eee9eba32b3e847c12a195c2e1', 1, 0, '2021-03-27 10:34:39', '1972-02-27', 'female', 'men', 'tamtil', 32.8665, -6.90304, 3, 49, 0.2),
(55, 'ta3khtknboso', 'soso', 'soso', 'habggvchb@gmail.com', '$2b$10$h/qfNhimEz6ubzUcINlB6udAKChhq9U2Y6i8r4XFPvmSiDqPAgDge', 'c669a86d08f57a7b4a9e43561af15ef82f06e3c415b9449945d3bc14e56414b0a7963ce90b87cdda99c656e76ca1ab13775353310a3e773c7d2e3b226bd449e6', 1, 0, '2021-03-27 11:09:52', '1969-07-04', 'male', 'both', 'gerraz o haz mehraz', 32.8651, -6.91952, 3, 51, 0),
(56, '9alda', '3alal', '3alal', 'hsbvhjvb@gmail.com', '$2b$10$1Zqu6NOINjzYhAgcAtHmmuCbDvWa/.apfXhaKprHuceTz7lDgw8gy', '7ce2c66e3689ddf079018793fa5eb48b782b0c607a0b08ab7b3415d25cb4ed30a71a57c3551f93d1fec48442f8214dc68d293b3e26ba0c501dd831941641f3af', 1, 0, '2021-03-27 11:17:39', '1992-01-30', 'male', 'women', 'gerraz o haz mehraz', 32.8811, -6.9063, 3, 29, 0.2),
(57, 'moul chi', 'zanbout', 'correction', 'zpetabjntz@maxresistance.com', '$2b$10$.p1Dj.F.NGz/1iIc.UIT4uqEvdIeZqaWTuyN1ukOfmwko2l9bY.xq', '38c57ebab2257dbf846201e36dd43f45bba321565e4f5941bc7784c52b41bea667c74da035824d421a1d01084b23acc90513ddff2f502caaee67a374e0d33328', 1, 0, '2021-03-27 12:05:42', '1998-01-01', 'male', 'women', 'rachgo fek zanbout', 32.8836, -6.93351, 3, 23, 0),
(58, NULL, NULL, 'ennseyrri', 'youssef@gmail.com', '$2b$10$aGAGGhabQV/BJ52Bfp40YuVjnuMukIl1vQ0dxKQjysS4ZPvo51wGq', '837efee0e75f91c2ad0ef5d99ca3d0cb0b0faf995f80cf3593bc58e41a265c42033e2d5e24e59895e911d7fee562b91f3ca08d47bd4952ea58759f2674a4c8dd', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(59, 'issam', 'zouiten', 'bruno1', 'bnblvvmfwgdtvct@maxresistance.com', '$2b$10$G50kmt0aaln9BYUabRXO9uIh8iKtaipsAYvM8jiLx/Yh/nuv3D.CG', '23f91c4f21465cd37d272b20ce6a7b7b0fd1f8b2f5f5a668562cc0d02aa6145d65f6421bbe907c09af634d88a1a4735b002f712d0ab0b16e9a0e9468cb3622c7', 1, 0, '2021-03-27 12:29:14', '1998-03-02', 'male', 'men', 'gerraz o haz mehraz', 32.8811, -6.9063, 3, 23, 0),
(60, 'essafi', 'othmane', 'mosalah133', 'tiuikxzangp@maxresistance.com', '$2b$10$KMHx.4XS69eW3qcOETgbEOyVwi8noshreJum/AERbOiJSsgHQ1pea', 'eb75cad94fbbc0f775301ddc984d56d262b350c2fe863886b666e4ac82e3c84e2049a4a42ca149df1e8f8824209581d5bd229c414c34bf1c373612afc293e773', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(61, 'issamessaf', 'zouiten', 'dasjcbdkls', 'cdsadcdsc@mdmscd.com', '$2b$10$JcgNn7/LFLDrSFXJhixHu.9EGJi1ahUW.2S9iS67OYHda.wfhaf6.', '5ecdc4eefff2436bb21cd79cc0f6d99df22b8807a3ac420988fb2fc384b85d68b70ace3a514bc303a41579555ec16b510f6d16a9605eb23cd4015d24fab1152d', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(62, 'vdsvdfs', 'vdfvs', 'bruno181', 'sxepquud@maxresistance.com', '$2b$10$oa0ckMrCubHtKyfCbZ/sDuUpD1tfOQ6eL2SsglnQidSaGJIJz0Jou', 'd0941035507c33a3539701a9dd3019f452e44ed6ff918632a5bc9be423620d8cc8165b63717773a6d746fd4ac601c20327bdf2ccb06816a64cf196b657d8d1ed', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `useTags`
--

CREATE TABLE `useTags` (
  `id_tag` int NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `useTags`
--

INSERT INTO `useTags` (`id_tag`, `id_user`) VALUES
(79, 31),
(79, 42),
(79, 47),
(79, 48),
(79, 51),
(79, 56),
(80, 43),
(80, 46),
(80, 47),
(80, 50),
(80, 59),
(84, 43),
(84, 44),
(84, 47),
(84, 53),
(84, 55),
(85, 47),
(85, 57),
(86, 32),
(87, 32),
(87, 54),
(89, 47),
(89, 52);

-- --------------------------------------------------------

--
-- Structure de la table `viewProfileList`
--

CREATE TABLE `viewProfileList` (
  `id` int NOT NULL,
  `viewer` int NOT NULL,
  `viewed` int NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `viewProfileList`
--

INSERT INTO `viewProfileList` (`id`, `viewer`, `viewed`, `date`) VALUES
(1, 47, 43, '2021-03-26 15:59:33'),
(2, 47, 43, '2021-03-26 16:02:53'),
(3, 47, 43, '2021-03-26 16:02:56'),
(4, 47, 43, '2021-03-26 16:04:06'),
(5, 47, 43, '2021-03-26 16:04:23'),
(6, 47, 44, '2021-03-26 16:05:07'),
(7, 47, 43, '2021-03-26 16:05:10'),
(8, 47, 43, '2021-03-26 16:05:31'),
(9, 47, 43, '2021-03-26 16:06:59'),
(10, 47, 44, '2021-03-26 16:07:04'),
(11, 47, 43, '2021-03-26 16:07:41'),
(12, 47, 44, '2021-03-26 16:07:44'),
(13, 47, 43, '2021-03-26 16:07:48'),
(14, 47, 44, '2021-03-26 16:07:52'),
(15, 47, 43, '2021-03-26 16:08:35'),
(16, 47, 44, '2021-03-26 16:08:38'),
(17, 47, 43, '2021-03-26 16:08:42'),
(18, 47, 44, '2021-03-26 16:08:44'),
(19, 47, 43, '2021-03-26 16:09:22'),
(20, 47, 44, '2021-03-26 16:09:24'),
(21, 47, 43, '2021-03-26 16:09:56'),
(22, 47, 44, '2021-03-26 16:09:58'),
(23, 47, 44, '2021-03-26 16:10:03'),
(24, 47, 43, '2021-03-26 16:10:29'),
(25, 47, 44, '2021-03-26 16:10:31'),
(26, 47, 43, '2021-03-26 16:10:36'),
(27, 47, 44, '2021-03-26 16:11:14'),
(28, 47, 43, '2021-03-26 16:11:21'),
(29, 47, 43, '2021-03-26 16:11:41'),
(30, 47, 43, '2021-03-26 16:12:14'),
(31, 47, 43, '2021-03-26 16:12:42'),
(32, 47, 43, '2021-03-26 16:12:57'),
(33, 47, 43, '2021-03-26 16:13:09'),
(34, 47, 43, '2021-03-26 16:15:39'),
(35, 47, 43, '2021-03-26 16:16:25'),
(36, 47, 44, '2021-03-26 16:17:38'),
(37, 47, 43, '2021-03-26 16:17:42'),
(38, 47, 44, '2021-03-26 16:17:43'),
(39, 47, 43, '2021-03-26 16:17:55'),
(40, 47, 44, '2021-03-26 16:18:01'),
(41, 47, 44, '2021-03-26 16:18:04'),
(42, 47, 43, '2021-03-26 16:18:31'),
(43, 47, 43, '2021-03-26 16:18:34'),
(44, 47, 43, '2021-03-26 16:21:09'),
(45, 47, 43, '2021-03-26 16:21:52'),
(46, 47, 43, '2021-03-26 16:26:11'),
(47, 47, 43, '2021-03-26 16:27:05'),
(48, 47, 44, '2021-03-26 16:27:32'),
(49, 47, 44, '2021-03-26 16:27:42'),
(50, 47, 43, '2021-03-26 16:27:48'),
(51, 47, 43, '2021-03-26 16:27:57'),
(52, 47, 43, '2021-03-26 16:28:33'),
(53, 47, 43, '2021-03-26 16:29:20'),
(54, 47, 44, '2021-03-26 16:29:32'),
(55, 47, 43, '2021-03-26 16:29:35'),
(56, 47, 44, '2021-03-26 16:29:59'),
(57, 47, 43, '2021-03-26 16:30:31'),
(58, 47, 43, '2021-03-26 16:30:42'),
(59, 43, 47, '2021-03-26 16:46:42'),
(60, 43, 47, '2021-03-26 16:47:00'),
(61, 43, 47, '2021-03-26 16:59:32'),
(62, 43, 47, '2021-03-26 16:59:38'),
(63, 43, 47, '2021-03-26 16:59:51'),
(64, 43, 44, '2021-03-26 17:02:02'),
(65, 43, 47, '2021-03-26 17:02:07'),
(66, 43, 47, '2021-03-26 17:02:10'),
(67, 43, 47, '2021-03-26 17:02:46'),
(68, 43, 44, '2021-03-26 17:02:50'),
(69, 43, 44, '2021-03-26 17:03:36'),
(70, 43, 44, '2021-03-26 17:03:41'),
(71, 43, 44, '2021-03-26 17:03:51'),
(72, 43, 44, '2021-03-26 17:03:53'),
(73, 43, 44, '2021-03-26 17:04:08'),
(74, 43, 44, '2021-03-26 17:04:18'),
(75, 43, 47, '2021-03-26 17:04:21'),
(76, 48, 44, '2021-03-26 17:46:38'),
(77, 48, 43, '2021-03-26 17:47:43'),
(78, 47, 43, '2021-03-27 09:45:53'),
(79, 47, 50, '2021-03-27 09:54:35'),
(80, 47, 50, '2021-03-27 09:55:18'),
(81, 47, 50, '2021-03-27 09:55:37'),
(82, 55, 44, '2021-03-27 10:36:26'),
(83, 55, 43, '2021-03-27 10:36:29'),
(84, 55, 44, '2021-03-27 10:36:34'),
(85, 55, 43, '2021-03-27 10:36:40'),
(86, 55, 44, '2021-03-27 10:36:44'),
(87, 55, 43, '2021-03-27 10:36:46'),
(88, 55, 44, '2021-03-27 10:37:04'),
(89, 55, 43, '2021-03-27 10:37:06'),
(90, 55, 43, '2021-03-27 10:37:09'),
(91, 55, 44, '2021-03-27 10:37:11'),
(92, 55, 47, '2021-03-27 10:37:14'),
(93, 55, 47, '2021-03-27 10:37:17'),
(94, 55, 47, '2021-03-27 10:37:20'),
(95, 55, 47, '2021-03-27 10:37:28'),
(96, 55, 53, '2021-03-27 10:37:40'),
(97, 55, 50, '2021-03-27 10:37:42'),
(98, 55, 51, '2021-03-27 10:37:44'),
(99, 55, 54, '2021-03-27 10:37:46'),
(100, 55, 48, '2021-03-27 10:37:47'),
(101, 55, 52, '2021-03-27 10:37:48'),
(102, 55, 53, '2021-03-27 10:38:39'),
(103, 55, 43, '2021-03-27 10:38:41'),
(104, 55, 44, '2021-03-27 10:38:43'),
(105, 57, 53, '2021-03-27 11:53:25'),
(106, 57, 51, '2021-03-27 11:53:31'),
(107, 57, 53, '2021-03-27 11:53:38'),
(108, 47, 53, '2021-03-27 14:24:35'),
(109, 47, 51, '2021-03-27 14:24:44'),
(110, 47, 53, '2021-03-27 14:24:50'),
(111, 47, 50, '2021-03-27 14:25:01'),
(112, 47, 43, '2021-03-27 14:25:04'),
(113, 47, 56, '2021-03-27 14:25:07'),
(114, 47, 48, '2021-03-27 14:25:29'),
(115, 47, 52, '2021-03-27 14:25:40');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `blockList`
--
ALTER TABLE `blockList`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `likesList`
--
ALTER TABLE `likesList`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pics`
--
ALTER TABLE `pics`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reportList`
--
ALTER TABLE `reportList`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `useTags`
--
ALTER TABLE `useTags`
  ADD PRIMARY KEY (`id_tag`,`id_user`);

--
-- Index pour la table `viewProfileList`
--
ALTER TABLE `viewProfileList`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `blockList`
--
ALTER TABLE `blockList`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `likesList`
--
ALTER TABLE `likesList`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT pour la table `pics`
--
ALTER TABLE `pics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `reportList`
--
ALTER TABLE `reportList`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pour la table `viewProfileList`
--
ALTER TABLE `viewProfileList`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
