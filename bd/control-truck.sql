-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-01-2020 a las 00:37:00
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `control-truck`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fpreop_1`
--

CREATE TABLE `fpreop_1` (
  `Id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Vehiculo` varchar(50) NOT NULL,
  `Realizado_por` varchar(50) NOT NULL,
  `L_alta_baja` varchar(50) NOT NULL,
  `L_intermitentes` varchar(50) NOT NULL,
  `L_Marcha_atras` varchar(50) NOT NULL,
  `L_freno` varchar(50) NOT NULL,
  `Che_general_motor` varchar(50) NOT NULL,
  `Sistema_pedal_freno` varchar(50) NOT NULL,
  `Sistema_direccion` varchar(50) NOT NULL,
  `N_combustible` varchar(50) NOT NULL,
  `N_aceite` varchar(50) NOT NULL,
  `N_liquido_frenos` varchar(50) NOT NULL,
  `N_liquido_hidraulico` varchar(50) NOT NULL,
  `N_dispositivo_agua` varchar(50) NOT NULL,
  `Latoneria_pintura` varchar(50) NOT NULL,
  `Equipo_refrijeracion` varchar(50) NOT NULL,
  `bocina` varchar(50) NOT NULL,
  `Cinturon_seguridad` varchar(50) NOT NULL,
  `Tablero_control` varchar(50) NOT NULL,
  `Espejos_retrovisores` varchar(50) NOT NULL,
  `Estado_puertas` varchar(50) NOT NULL,
  `Orden_aseo` varchar(50) NOT NULL,
  `Soat_tarjeta` varchar(50) NOT NULL,
  `Ll_delanteras` varchar(50) NOT NULL,
  `Ll_traseras` varchar(50) NOT NULL,
  `Ll_repuesto` varchar(50) NOT NULL,
  `Aprete_ruedas` varchar(50) NOT NULL,
  `K_botiquin` varchar(50) NOT NULL,
  `K_extintor` varchar(50) NOT NULL,
  `K_herramientas` varchar(50) NOT NULL,
  `Otro` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fpreop_1`
--

INSERT INTO `fpreop_1` (`Id`, `usuario_id`, `Fecha`, `Vehiculo`, `Realizado_por`, `L_alta_baja`, `L_intermitentes`, `L_Marcha_atras`, `L_freno`, `Che_general_motor`, `Sistema_pedal_freno`, `Sistema_direccion`, `N_combustible`, `N_aceite`, `N_liquido_frenos`, `N_liquido_hidraulico`, `N_dispositivo_agua`, `Latoneria_pintura`, `Equipo_refrijeracion`, `bocina`, `Cinturon_seguridad`, `Tablero_control`, `Espejos_retrovisores`, `Estado_puertas`, `Orden_aseo`, `Soat_tarjeta`, `Ll_delanteras`, `Ll_traseras`, `Ll_repuesto`, `Aprete_ruedas`, `K_botiquin`, `K_extintor`, `K_herramientas`, `Otro`) VALUES
(1, 1, '2019-12-23 02:06:06', 'THL70O', 'Antonio Diaz', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', '', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B'),
(2, 1, '2019-12-23 02:06:06', 'MLJ65Y', 'Antonio Diaz', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', '', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B'),
(3, 1, '2019-12-27 18:33:18', 'RLQ455', 'Antonio Diaz', 'M', 'M', 'M', 'M', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', '', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'Nada que reportar'),
(4, 1, '2019-12-27 18:36:47', 'TLR54A', 'Antonio Diaz', 'M', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', '', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'No tiene el forro del volante'),
(5, 1, '2019-12-27 19:33:22', 'ULM10T', 'Antonio Diaz', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'No hay otro reporte'),
(6, 1, '2019-12-27 20:49:37', 'PRT40U', 'Antonio Diaz', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'Sin comentarios'),
(7, 1, '2019-12-27 20:55:37', 'TYY6L', 'Antonio Diaz', 'B', 'B', 'B', 'B', 'B', 'M', 'M', 'M', 'M', 'M', 'B', 'B', 'B', 'M', 'M', 'M', '', 'B', 'B', 'B', 'M', 'M', 'B', 'B', 'M', 'B', 'B', 'B', 'Sin reporte'),
(8, 1, '2019-12-27 20:57:05', 'TMN5B', 'Antonio Diaz', 'B', 'B', 'B', 'M', 'M', 'M', 'M', 'M', 'B', 'B', 'B', 'M', 'M', 'B', 'B', 'B', 'M', 'M', 'B', 'B', 'B', 'B', 'B', 'M', 'B', 'B', 'B', 'M', ''),
(9, 1, '2019-12-27 21:02:58', 'FTR4R', 'Antonio Diaz', 'B', 'B', 'M', 'B', 'B', 'B', 'B', 'M', 'B', 'M', 'M', 'B', 'M', 'B', 'B', 'B', 'B', 'M', 'B', 'M', 'B', 'B', 'B', 'M', 'B', 'B', 'B', 'B', 'No mas'),
(10, 1, '2019-12-30 14:12:52', 'TTP09O', 'Antonio Diaz', 'B', 'M', 'B', 'B', 'B', 'M', 'B', 'B', 'B', 'M', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'M', 'B', 'B', 'B', 'B', 'M', 'M', 'No hay mas na');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_general`
--

CREATE TABLE `log_general` (
  `Id` int(11) NOT NULL,
  `Accion` text NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `Id` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Rol_id` int(11) NOT NULL,
  `Estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `Sexo` text NOT NULL,
  `Direccion` text NOT NULL,
  `Fecha_nacimiento` date NOT NULL,
  `usuarioid` int(11) NOT NULL,
  `Fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `Nombre`, `Apellido`, `Sexo`, `Direccion`, `Fecha_nacimiento`, `usuarioid`, `Fecha_creacion`) VALUES
(1, 'Antonio', 'Diaz', 'Masculino', 'Calle 175 #20A-64', '1988-03-06', 1, '2019-12-26 14:46:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `Id` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id` int(11) NOT NULL,
  `Email` text NOT NULL,
  `Password` text NOT NULL,
  `Fecha_acceso` timestamp NOT NULL DEFAULT current_timestamp(),
  `Estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id`, `Email`, `Password`, `Fecha_acceso`, `Estado`) VALUES
(1, 'sadian88@gmail.com', 'bateriass', '2019-12-18 13:08:57', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `Id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL,
  `Placla` varchar(50) NOT NULL,
  `Linea` varchar(50) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `Clase_vehiculo` varchar(200) NOT NULL,
  `T_Carroceria` varchar(200) NOT NULL,
  `C_Vehiculo` varchar(200) NOT NULL,
  `Marca` varchar(200) NOT NULL,
  `Color` varchar(200) NOT NULL,
  `N_chasis` varchar(200) NOT NULL,
  `N_motor` varchar(200) NOT NULL,
  `Cilindraje` varchar(200) NOT NULL,
  `Uso_vehiculo` varchar(200) NOT NULL,
  `Upn` varchar(100) NOT NULL,
  `Soat` date NOT NULL,
  `Tecnicomecanica` date NOT NULL,
  `N_licencia` varchar(200) NOT NULL,
  `N_llantas` int(11) NOT NULL,
  `N_ventanas` int(11) NOT NULL,
  `Capacidad` varchar(200) NOT NULL,
  `Llantas` varchar(50) NOT NULL,
  `Destornillador` varchar(50) NOT NULL,
  `Gato` varchar(50) NOT NULL,
  `Alicates` varchar(50) NOT NULL,
  `Extintor` varchar(50) NOT NULL,
  `Rachas` varchar(50) NOT NULL,
  `Lampara_pilas` varchar(50) NOT NULL,
  `Conos` varchar(50) NOT NULL,
  `Banderas` varchar(50) NOT NULL,
  `Mechones` varchar(50) NOT NULL,
  `Llanta_emergencia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `Placla`, `Linea`, `Modelo`, `Clase_vehiculo`, `T_Carroceria`, `C_Vehiculo`, `Marca`, `Color`, `N_chasis`, `N_motor`, `Cilindraje`, `Uso_vehiculo`, `Upn`, `Soat`, `Tecnicomecanica`, `N_licencia`, `N_llantas`, `N_ventanas`, `Capacidad`, `Llantas`, `Destornillador`, `Gato`, `Alicates`, `Extintor`, `Rachas`, `Lampara_pilas`, `Conos`, `Banderas`, `Mechones`, `Llanta_emergencia`) VALUES
(1, '262', 'JX1043DC2', '2.009', 'Camion', 'Furgon', 'JMC', 'Blanco', 'LETYECG2X9HN00080', 'JX493ZQ4A7D001674', '4.000', 'Transporte ', '', '1/08/2020', '0000-00-00', '0000-00-00', '6', 2, 3, '50 Ton  ', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(2, '513', 'NPR 729', '2.008', 'Camion', 'Furgon', 'Chevrolet', 'Blanco arco bicapa', '9GDNPR7138B011527', '534285', '4.600', 'Transporte ', '', '24/08/2020', '0000-00-00', '0000-00-00', '6', 2, 4, '31 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(3, '763', 'XZU413L-HKMQD3', '2.012', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3UT11H8C6000797', 'N04CTT25585', '4.009', 'Transporte', '', '21/09/2020', '0000-00-00', '0000-00-00', '6', 2, 4, '45 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(4, '514', 'FC9JJSA', '2.013', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3FC9JJSDXX15189', 'J05ETC17940', '5.123', 'Transporte', '', '12/11/2020', '0000-00-00', '0000-00-00', '6', 2, 6, '45 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(5, '388', 'XZU423L-HKMR', '2.012', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3YT20HXC6001247', 'N04CTT26705', '4.009', 'Transporte', '', '25/07/2020', '0000-00-00', '0000-00-00', '6', 2, 5, '30 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(6, '921', 'XZU650L-HKMMJ3', '2.014', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3CCJ3H6E4100047', 'N04CUY10955', '4.009', 'Transporte', '', '20/11/2020', '0000-00-00', '0000-00-00', '6', 2, 2, '66 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(7, '922', 'XZU650L-HKMMJ3', '2.014', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3CCJ3H4E4100046', 'N04CUY10956', '4.009', 'Transporte', '', '20/11/2020', '0000-00-00', '0000-00-00', '6', 2, 0, 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', ''),
(8, '927', 'XZU710L-HKFQ', '2.014', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3UCL1H3E3100872', 'N04CVB17256', '4.009', 'Transporte', '', '14/12/2019', '0000-00-00', '0000-00-00', '6', 2, 0, 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', ''),
(9, '623', 'XZU720L-HKFRP', '2.016', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3YCP0H2G5101108', 'N04CUV21611', '4.009', 'Transporte', '', '24/08/2020', '0000-00-00', '0000-00-00', '6', 2, 0, 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', ''),
(10, '857', 'XZU720L-HKFRP', '2.016', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3YCP0H5G5101202', 'N04CUV22444', '4.009', 'Transporte', '', '15/12/2019', '0000-00-00', '0000-00-00', '6', 2, 5, '15 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(11, '842', 'XZU710L-HKFML3', '2.015', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3UCL3HXF3101533', 'N04CVB21088', '5.123', 'Transporte', '', '12/09/2019', '0000-00-00', '0000-00-00', '6', 2, 3, '39 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(12, '987', 'NP300FRONTIER', '2.017', 'Camion', 'Furgon', 'Nissan', 'Blanco', '3N6AD35X5ZK364644', 'QR25-082352H', '2.488', 'Transporte', '', '13/07/2020', '0000-00-00', '0000-00-00', '6', 2, 3, '39 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(13, '467', 'XZU710L-HKFMP3', '2.017', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3UCPH8H3102688', 'N04CUV23915', '4.009', 'Transporte', '', '17/08/2020', '0000-00-00', '0000-00-00', '6', 2, 3, '60 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(14, '614', 'FRR', '2.014', 'Camion', 'Furgon', 'Chevrolet', 'Blanco', '9GDFRR905EB008806', '4HK1-087880', '5.193', 'Transporte', '', '30/07/2020', '0000-00-00', '0000-00-00', '6', 2, 6, '10 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(15, '105', 'NHR', '2019', 'Camion', 'Furgon', 'Chevrolet', 'Blanco', '9GDNLR774KB005453', '3L6922', '2.999', 'Transporte', '', '18/07/2020', '0000-00-00', '0000-00-00', '6', 2, 1, '65 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(16, '123', 'NHR', '2017', 'Camion', 'Furgon', 'Chevrolet', 'Blanco', '9GDNLR778HB026184', '2S3868', '2.999', 'Transporte', '', '1/11/2020', '0000-00-00', '0000-00-00', '6', 2, 1, '70 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(17, '203', 'XZU640L-HKMLN3', '2017', 'Camioneta', 'Furgon', 'Hino', 'Blanco', '9F3BCN4H2H2103397', 'N04CVC12516', '4.009', 'Transporte', '', '7/09/2020', '0000-00-00', '0000-00-00', '6', 2, 1, '55 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(18, '259', 'XZU710L-HKFQP3', '2017', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3UCP1H5H3102652', 'N04CUV23736', '4.009', 'Transporte', '', '27/05/2020', '0000-00-00', '0000-00-00', '6', 2, 4, '18 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(19, '330', 'XZU640L-HKMLN3', '2019', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3BCN4H6K2106424', 'N04CVC17822', '4.009', 'Transporte', '', '', '0000-00-00', '0000-00-00', '6', 2, 1, '483 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(20, '358', 'XZU720L-HKFRP', '2019', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3YCP0H1K5102193', 'N04CUV32319', '4.009', 'Transporte', '', '28/01/2020', '0000-00-00', '0000-00-00', '6', 2, 5, 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', ''),
(21, '449', 'XZU720L-HKFRP', '2018', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3YCP0H9J5101579', 'N04CUV26289', '', 'Transporte', '', '', '0000-00-00', '0000-00-00', '6', 2, 4, '050 Ton', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI'),
(22, '359', 'XZU720L-HKFRP', '2019', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3YCP0H1K5102193', 'N04CUV32319', '4.009', 'Transporte', '', '28/01/2020', '0000-00-00', '0000-00-00', '6', 2, 5, 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', ''),
(23, '744', 'XZU640L-HKMLN3', '2019', 'Camioneta', 'Furgon', 'Hino', 'Blanco', '9F3BCN4H4K2105515', 'N04CVC15224', '4.009', 'Transporte', '', '9/07/2019', '0000-00-00', '0000-00-00', '6', 2, 2, '', '', '', '', '', '', '', '', '', '', '', ''),
(24, '757', 'XZU650L-HKMMP3', '2017', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3CCP3H0H4100228', 'N04CUV23412', '4.009', 'Transporte', '', '27/05/2020', '0000-00-00', '0000-00-00', '6', 2, 2, '65 Ton', '', '', '', '', '', '', '', '', '', '', ''),
(25, '469', 'XZU720L-HKFRP', '2.018', 'Camion', 'Furgon', 'Hino', 'Blanco', '9F3YCP0H9J5101579', 'N04CUV26289', '', 'Transporte', '', '', '0000-00-00', '0000-00-00', '6', 2, 4, '050 Ton', '', '', '', '', '', '', '', '', '', '', ''),
(30, 'PLACA:', 'LINEA:', 'MODELO', 'CLASE DE VEHICULO', 'TIPO DE CARROCERRIA', 'MARCA:', 'COLOR:', 'No CHASIS:', 'No MOTOR:', 'CILINDRAJE:', 'USO DEL VEH?CULO:', 'No INTERNO UPN', 'SOAT FECHA DE VENCIMIENTO:', '0000-00-00', '0000-00-00', 'N?mero llantas:', 0, 0, 'Llantas', 'Destormillador', 'Gato', 'Alicates', 'Extintor', 'Rachas', 'Lampara de pilas', 'Conos', 'Banderas', 'Mechones', 'Llanta Emergencia', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fpreop_1`
--
ALTER TABLE `fpreop_1`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `log_general`
--
ALTER TABLE `log_general`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fpreop_1`
--
ALTER TABLE `fpreop_1`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `log_general`
--
ALTER TABLE `log_general`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
