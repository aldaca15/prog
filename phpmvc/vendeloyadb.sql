-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2013 a las 19:15:18
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `vendeloya`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificados`
--

CREATE TABLE IF NOT EXISTS `clasificados` (
  `IdClasificado` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(45) NOT NULL,
  `Precio` float NOT NULL,
  `PrecioDiv` int(1) NOT NULL DEFAULT '0',
  `Detalles` text NOT NULL,
  `Marca` varchar(45) NOT NULL,
  `Modelo` varchar(45) NOT NULL,
  `Estado` varchar(45) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  `Creado` date NOT NULL,
  `Actualizado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdClasificado`),
  KEY `IdUsuario` (`IdUsuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `clasificados`
--

INSERT INTO `clasificados` (`IdClasificado`, `Titulo`, `Precio`, `PrecioDiv`, `Detalles`, `Marca`, `Modelo`, `Estado`, `IdUsuario`, `Creado`, `Actualizado`) VALUES
(1, 'Vendo Ford Mustang 76', 5500, 0, 'Excelente oportunidad\r\nMustang Cobra 76\r\nEl mejor deportivo americano de la historia\r\nTrans Std\r\nBlanco con lineas azules\r\nInteriores originales con excelente cuidado\r\nLlantas nuevas', 'Ford', 'Mustang', '1976', 22, '2013-05-01', '2013-05-09 16:13:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `IdImagen` int(11) NOT NULL AUTO_INCREMENT,
  `IdClasificado` int(11) NOT NULL,
  `NombreImagen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IdImagen`),
  KEY `IdClasificado` (`IdClasificado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`IdImagen`, `IdClasificado`, `NombreImagen`) VALUES
(1, 1, '76-Ford-MustangCobra.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `NickName` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellidos` varchar(45) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Celular` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IdUsuario`),
  KEY `NickName` (`NickName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IdUsuario`, `NickName`, `Password`, `Nombre`, `Apellidos`, `FechaNacimiento`, `Email`, `Telefono`, `Celular`) VALUES
(13, 'Fulanito', 'mocos', 'El Barto', 'Simpson', '1987-05-05', 'fake1234@springfield.com', NULL, NULL),
(22, 'Alberto', '1234567', 'Beto', 'Dmgz', '1990-10-10', 'albert2000@mail.com', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
