-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 24 Novembre 2014 à 18:57
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `supermarchecoco`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(30) NOT NULL AUTO_INCREMENT COMMENT 'Correspond à l''identifiant d''un client',
  `nom_client` varchar(20) NOT NULL COMMENT 'Correspond au nom du client',
  `prenom_client` varchar(20) NOT NULL COMMENT 'Correspond au prénom du client',
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table Client (id, nom, prenom)' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `id_commande` int(30) NOT NULL AUTO_INCREMENT COMMENT 'Correspond à l''identifiant de la commande',
  `id_client` int(30) NOT NULL COMMENT 'Correspond à l''identifiant du client',
  `id_produit` int(11) NOT NULL COMMENT 'Correspond à l''identifiant du produit',
  PRIMARY KEY (`id_commande`,`id_client`,`id_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table commande (id_client, id_produit, id_commande)' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

CREATE TABLE IF NOT EXISTS `connexion` (
  `id_client` int(30) NOT NULL AUTO_INCREMENT COMMENT 'Correspond à l''identifiant du client',
  `login` varchar(20) NOT NULL COMMENT 'Correspond au login de connexion du client',
  `motdepasse` varchar(20) NOT NULL COMMENT 'Correspond au mot de passe du client lors de la connexion',
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table connexion(id, login, mdp)' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `id_produit` int(30) NOT NULL AUTO_INCREMENT COMMENT 'Correspond à l''identifiant d''un produit',
  `nom_produit` varchar(20) NOT NULL COMMENT 'Correspond au nom du produit',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL COMMENT 'Correspond au type du produit',
  `prix` float NOT NULL COMMENT 'Correspond au prix d''un produit',
  `note` int(5) NOT NULL COMMENT 'Correspond à la note du produit',
  `quantite` int(20) NOT NULL COMMENT 'Correspond à la quantité du produit',
  PRIMARY KEY (`id_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table produit(id, nom, type, prix, note, quantite)' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
