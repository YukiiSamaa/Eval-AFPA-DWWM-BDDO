-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 04 mars 2021 à 08:13
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
-- Base de données : `gescom-éval`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id_pro` int(11) NOT NULL,
  `id_cus` int(11) NOT NULL,
  `Commande_livraison` varchar(50) DEFAULT NULL,
  `Commande_nombre` int(11) DEFAULT NULL,
  `Commande_remise` int(11) DEFAULT NULL,
  `Commande_prix` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pro`,`id_cus`),
  KEY `id_cus` (`id_cus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commercial`
--

DROP TABLE IF EXISTS `commercial`;
CREATE TABLE IF NOT EXISTS `commercial` (
  `id_com` int(11) NOT NULL,
  `com_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_com`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id_cus` int(11) NOT NULL,
  `cus_name` varchar(50) DEFAULT NULL,
  `cus_firstname` varchar(50) DEFAULT NULL,
  `cus_d_birth` date DEFAULT NULL,
  `cus_password` varchar(50) DEFAULT NULL,
  `cus_add_date` date DEFAULT NULL,
  `cus_modif_date` date DEFAULT NULL,
  `cus_phone` int(11) DEFAULT NULL,
  `cus_country` varchar(50) DEFAULT NULL,
  `cus_address` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_cus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `id_emp` int(11) NOT NULL,
  `emp_hiérachie` varchar(50) DEFAULT NULL,
  `emp_sex` varchar(50) DEFAULT NULL,
  `emp_name` varchar(50) DEFAULT NULL,
  `emp_firstname` varchar(50) DEFAULT NULL,
  `emp_poste` varchar(50) DEFAULT NULL,
  `emp_service` varchar(50) DEFAULT NULL,
  `emp_salary` varchar(50) DEFAULT NULL,
  `emp_child` int(11) DEFAULT NULL,
  `emp_time` date DEFAULT NULL,
  `emp_store` varchar(50) DEFAULT NULL,
  `Id_sto` int(11) NOT NULL,
  PRIMARY KEY (`id_emp`),
  KEY `Id_sto` (`Id_sto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id_pro` int(11) NOT NULL,
  `pro_add_date` date DEFAULT NULL,
  `pro_modif_date` date DEFAULT NULL,
  `pro_price` int(11) DEFAULT NULL,
  `pro_stock_physical` int(11) DEFAULT NULL,
  `pro_catégory` varchar(50) DEFAULT NULL,
  `pro_ref_interne` varchar(50) DEFAULT NULL,
  `pro_libellé` varchar(50) DEFAULT NULL,
  `pro_desc` varchar(50) DEFAULT NULL,
  `pro_name_picture` varchar(50) DEFAULT NULL,
  `pro_sell_yes_no` int(11) DEFAULT NULL,
  `pro_codeEAN` int(11) DEFAULT NULL,
  `pro_alert_stock` int(11) DEFAULT NULL,
  `pro_color` varchar(50) DEFAULT NULL,
  `id_sup` int(11) NOT NULL,
  PRIMARY KEY (`id_pro`),
  KEY `id_sup` (`id_sup`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `Id_sto` int(11) NOT NULL,
  `sto_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_sto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `id_sup` int(11) NOT NULL,
  `sup_name` varchar(50) DEFAULT NULL,
  `id_com` int(11) NOT NULL,
  PRIMARY KEY (`id_sup`),
  KEY `id_com` (`id_com`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vend`
--

DROP TABLE IF EXISTS `vend`;
CREATE TABLE IF NOT EXISTS `vend` (
  `id_pro` int(11) NOT NULL,
  `Id_sto` int(11) NOT NULL,
  PRIMARY KEY (`id_pro`,`Id_sto`),
  KEY `Id_sto` (`Id_sto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
