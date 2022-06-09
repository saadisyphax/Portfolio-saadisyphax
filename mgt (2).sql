-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 08 juin 2022 à 13:54
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
-- Base de données : `mgt`
--

-- --------------------------------------------------------

--
-- Structure de la table `couleur`
--

DROP TABLE IF EXISTS `couleur`;
CREATE TABLE IF NOT EXISTS `couleur` (
  `ID_COUL` int(11) NOT NULL AUTO_INCREMENT,
  `NOM` varchar(500) NOT NULL,
  PRIMARY KEY (`ID_COUL`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `couleur`
--

INSERT INTO `couleur` (`ID_COUL`, `NOM`) VALUES
(1, 'rouge'),
(2, 'bleu'),
(3, 'vert'),
(4, 'doré');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `ID_mark` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_mark`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`ID_mark`, `nom`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Hawuei'),
(4, 'Oppo');

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_user` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `id_tel` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_user` (`ID_user`),
  KEY `id_tel` (`id_tel`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`ID`, `ID_user`, `quantite`, `id_tel`) VALUES
(12, 3, 4, 6),
(14, 3, 4, 9),
(15, 26, 4, 3),
(16, 26, 1, 6),
(41, 3, 3, 6),
(48, 1, 2, 5),
(51, 1, 1, 10),
(52, 27, 2, 5),
(53, 27, 1, 3),
(54, 27, 1, 9),
(55, 27, 4, 10),
(56, 27, 4, 6),
(57, 29, 4, 5),
(58, 29, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `telephone`
--

DROP TABLE IF EXISTS `telephone`;
CREATE TABLE IF NOT EXISTS `telephone` (
  `id_tel` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `description` varchar(50000) NOT NULL,
  `prix` decimal(15,3) NOT NULL,
  `ram` varchar(50) NOT NULL,
  `stockage` varchar(50) NOT NULL,
  `ID_mark` int(11) NOT NULL,
  `ID_couleur` int(11) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `date_de_livraison` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tel`),
  KEY `telephone_marque_FK` (`ID_mark`),
  KEY `syphax_index` (`ID_couleur`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `telephone`
--

INSERT INTO `telephone` (`id_tel`, `nom`, `description`, `prix`, `ram`, `stockage`, `ID_mark`, `ID_couleur`, `image`, `date_de_livraison`) VALUES
(1, 'iphone 13', 'À propos de cet article\r\nDans le cadre de nos efforts pour atteindre nos objectifs environnementaux, iPhone 13 n\'inclut plus d\'EarPods. Veuillez utiliser vos EarPods existants ou acheter cet accessoire séparément.\r\nÉcran Super Retina XDR 6,1 pouces\r\nMode Cinématique, qui réduit la profondeur de champ et change automatiquement la mise au point dans vos vidéos\r\nDouble appareil photo avancé avec grand-angle et ultra grand-angle de 12 Mpx, Styles photographiques, Smart HDR 4, mode Nuit et enregistrement vidéo 4K HDR en Dolby Vision\r\nCaméra avant TrueDepth 12 Mpx avec mode Nuit et enregistrement vidéo 4K HDR en Dolby Vision\r\nPuce A15 Bionic pour des performances fulgurantes\r\nJusqu’à 19 heures de lecture vidéo\r\nDesign résistant avec Ceramic Shield et meilleure résistance à l’eau du marché (IP68)\r\nConnectivité 5G pour des téléchargements ultra-rapides et du streaming de haute qualité\r\niOS 15, avec toutes sortes de nouvelles fonctionnalités qui multiplient les possibilités qu’offre l’iPhone', '909.000', '4gb', '128gb', 1, 1, 'iphone 13.png', 'livraison gratuit duré 3 jours'),
(3, 'samsung s10', 'À propos de cet article\r\nEcran Infinity 6,1\" incurvé. GPS: A-GPS, GLONASS, BDS, GALILEO\r\nTriple capteur photo - ultra grand angle et zoom optique\r\nLecteur d\'empreinte ultrasonique sous l\'écran\r\nBatterie 3400 mAh avec partage d\'énergie', '122.000', '12gb', '56gb', 2, 3, 'samsung s10.jpg', 'livraison gratuit duré 3 jours'),
(5, 'iphone 11', 'À propos de cet article\r\nDans le cadre de nos efforts pour atteindre nos objectifs environnementaux, iPhone 11 n\'inclut plus d\'EarPods. Veuillez utiliser vos EarPods existants ou acheter cet accessoire séparément.\r\nContenu du coffret: iPhone, Câble Lightning vers USB\r\nÉcran LCD Liquid Retina HD 6,1 pouces\r\nRésistant à la poussière et à l’eau (jusqu’à 2 mètres pendant 30 minutes maximum, IP68)\r\nDouble appareil photo avec ultra grand-angle et grand-angle 12 Mpx ; mode Nuit, mode Portrait et vidéo 4K jusqu’à 60 i/s\r\nCaméra avant TrueDepth 12 Mpx avec mode Portrait, vidéo 4K et ralenti\r\nFace ID pour l’authentification sécurisée et Apple Pay\r\nPuce A13 Bionic avec Neural Engine de troisième génération\r\nRecharge sans fil et capacité de recharge rapide\r\niOS et son lot de nouveautés, telles que les widgets repensés sur l’écran d’accueil, la toute nouvelle Bibliothèque d’apps et les extraits d’app', '450.000', '8gb', '120gb', 1, 1, 'iphone 11.png', 'livraison gratuit duré 3 jours'),
(6, 'samsung note 10', 'À propos de cet article\r\nÉcran Infinité 6,3\" dynamique AMOLED\r\nCharge ultra rapide 25W\r\nStockage 256 Go\r\nS Pen connecté navigation par gestes\r\nUne recharge de 30 minutes pour durer toute la journée', '850.000', '12gb', '50gb', 2, 2, 'samsung note 10.png', 'livraison gratuit duré 3 jours'),
(7, 'samsung s6 edge', 'À propos de cet article\r\nCe produit Reconditionné Certifié a été testé et certifié pour paraître et fonctionner comme un produit neuf, avec très peu voire aucun signe d’usure. Le produit est livré avec les accessoires assortis et une garantie d’au moins un an.\r\nÉcran tactile 5,1 pouces avec une résolution de 1440 x 2560 pixels à un PPI de 577 pixels par pouce.\r\nProcesseur 1,5 GHz octa-core Samsung Exynos 7422\r\nCaméra primaire 16 Mpx à l\'arrière et objectif avant 5,0 Mpx pour les selfies.', '50.000', '3gb', '32gb', 2, 4, 's6 edge.png', 'livraison gratuit duré 3 jours'),
(8, 'iphone SE 64gb', 'À propos de cet article\r\nÉcran Retina HD 4,7 pouces\r\nRésistant à la poussière et à l’eau (jusqu’à 1 mètre pendant 30 minutes maximum, IP67)\r\nAppareil photo grand-angle 12 Mpx avec mode Portrait, Éclairage de portrait, Contrôle de la profondeur, Smart HDR de nouvelle génération et vidéo 4K\r\nCaméra avant 7 Mpx avec mode Portrait, Éclairage de portrait et Contrôle de la profondeur\r\nTouch ID pour l’authentification sécurisée et Apple Pay\r\n', '109.000', '3gb', '64gb', 1, 2, 'iphone se.png', 'livraison gratuit duré 3 jours'),
(9, 'iphone 13pro', 'L\'iPhone 13 Pro Max, d\'Apple, est un smartphone XXL avec un grand écran OLED de 6,7 pouces. Doté d\'un taux de rafraîchissement adaptatif pouvant varier entre 10 et 120 Hz, cet appareil utilise la puce A15 Bionic, dispose d\'un triple module caméra avec équivalents 13, ', '1159.000', '4gb', '256', 1, 3, 'iphone13pro.png', 'livraison gratuit duré 3 jours'),
(10, 'galaxy s22 ultra', 'La sortie des nouveaux smartphones de la gamme Galaxy S de Samsung est l\'un des événements majeurs sur le marché mobile Android et donne souvent le ton du reste de l\'année. Entre leur nouveau design et les améliorations techniques qu\'ils embarquent, les Galaxy S22 ne font pas exception à la règle.\r\n\r\n', '1259.000', '8', '128', 2, 4, 'galaxy s22 ultra.jpg', 'livraison gratuit duré 3 jours');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `ID_user` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `mdp` varchar(200) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `mail` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_user`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`ID_user`, `nom`, `prenom`, `mdp`, `telephone`, `mail`) VALUES
(27, 'yhuzeaqdg', 'gurtatfa', '$2y$10$4h41zGhzkxo0z/xa7nuZ3.oNftNjhBtQjPKZFKmtCv7LV0zd6GUm2', '452', 'syphax@gmail.com'),
(29, 'moha', 'gt', '$2y$10$5S19TXQOB0ek4WSDPUvQJuMWLrr2cC0qvDvMzE1JhHc9.ATJlNvDy', '12534765156748615234', 'mgt@gmail.com'),
(30, '', '', '$2y$10$Kddx.AScCkrlsUcVCPC24OGaGWgtFQk5krwHnVn6FD4hw8pKCOoJO', '', ''),
(31, 'gsqgq', '', '$2y$10$E3dhp9nqpDrYgWr1ettMNOxnjx23UFV9Hhl3AYHAFQpNvUH9YPc.G', '', ''),
(32, 'fgdqsg', '', '$2y$10$U/roAg7j2PTT3iKoYHrgN.37XziLxEC3z/9EbMeNL4mwnGA8rQsvC', '', ''),
(33, 'fgdqsg', '', '$2y$10$0BVGhlhoAo7q5YLVElRzRu9IT6zkOyJivwfBk.5Hf.P74xMlAK0OO', 'sqfqsfsqfqs', ''),
(34, 'ds', '', '$2y$10$inrN/kFczuAucQrvF2olr.OW0zNdUycTu3XB0q1tZKqdtDYeb8UbC', '', ''),
(35, 'ds', '', '$2y$10$4Dryx.BFhPLImZSDTo9v.ee27R.89JICXWPwtDtFB8HcEVnkBKkBm', 'wxvwxv', ''),
(36, 'vwxvw', '', '$2y$10$0Dm0QiCZ5oZeu7BJVnp2HuntQPR7W1c1iRK0K8u4m2qqL0QdceIH.', '', ''),
(37, 'vwxvw', '', '$2y$10$vRBlUEEpb.jzkAEymwjsmOvldMlYMwvQWFJrthoyr0MqYZLCHr9q6', 'xxxxxxxxxx', ''),
(38, 'sfsqsfq', '', '$2y$10$mRWfXXE7Yk7FW2nmGzcFz.XuM9DHqTpogxUnFCcoIze1ESWvoRtyO', '', ''),
(39, 'sfsqsfq', '', '$2y$10$NI00aQc7pl0AFfFucigxmuX4TZH30TXuNhE7dgUhCQcs/HrLekKkG', 'fqsfsqfs', ''),
(40, 'sfsqsfq', '', '$2y$10$H7EOcKOHFhpzxvOXTfJib.crgoQML45Zv9mkRH6daRPo1KRxTz8CW', 'fqsfsqfs', ''),
(41, 'sqfqsfqsfsqfsq', '', '$2y$10$apXnoHfcKGitobgT6BYreeiHhLY4ldK//rImk1JDTIfnmoIQWWmYC', '', ''),
(42, 'sqfqsfqsfsqfsq', '', '$2y$10$8okdFLN2gm.XSGnV/2voEuWdIN8Q/1JLqa9PjfbpoWXTF0adJNsBW', '', ''),
(43, 'sqfqsfqsfsqfsq', '', '$2y$10$ATKdoQ.wLUlwIbn8fi8h5ONcJRG6B.xK22epTkALbZZ.O7.uUTvlK', '', ''),
(44, 'djsz', 'hfijezr', '$2y$10$Et./42Oy.ssAo5RuS5cfHOwzWnHyQ7WzVaXnVwNxftHiP/SRT4NbG', 'jlk', 'syphax@gmail.com'),
(45, 'kjfev', 'njekfc', '$2y$10$OrGsd8b8PoO2dcLujpNXUe7pJf1/9AhDLn/Kw8MhvN4Y5SJGhEwdO', '', 'fkj@j'),
(46, '', '', '$2y$10$KPSr7dXaQtnnGmnOBghzCOv/ZwZOQQCdmnTwWDtXoGFLYQorae5G2', '', ''),
(47, '', '', '$2y$10$mpcU0UW7xDpHvyBEFrgXZepWZJHZ2MfWyOTsmXXiwGCA/rz2mY5HG', '', '');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `telephone`
--
ALTER TABLE `telephone`
  ADD CONSTRAINT `telephone_ibfk_1` FOREIGN KEY (`ID_couleur`) REFERENCES `couleur` (`ID_COUL`),
  ADD CONSTRAINT `telephone_marque_FK` FOREIGN KEY (`ID_mark`) REFERENCES `marque` (`ID_mark`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
