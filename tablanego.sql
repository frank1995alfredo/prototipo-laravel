-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 07:52 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tablanego`
--

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nomcliente` varchar(120) DEFAULT NULL,
  `cedularuc` varchar(14) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono1` varchar(10) DEFAULT NULL,
  `telefono2` varchar(10) DEFAULT NULL,
  `correoelec` varchar(100) DEFAULT NULL,
  `comentario` varchar(200) DEFAULT NULL,
  `fechareg` date DEFAULT NULL,
  `flag` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`id`, `nomcliente`, `cedularuc`, `direccion`, `telefono1`, `telefono2`, `correoelec`, `comentario`, `fechareg`, `flag`) VALUES
(1, 'FERRIMANIA', '1790011674001', 'CHAVEZ FRANCO Y MACHALA', '2898248', '0997850190', 'mquiroz@ferrimania.com', 'mquiros@latinmail.com', '0000-00-00', 1),
(2, 'HINO CIA. LTDA.', '1201898721002', 'AV. JUAN TANCA MARENGO', '2565453', '0992310205', 'noeliapalomeque@hotmail.com', 'ES un test', '2020-12-09', 0),
(3, 'CORREOS DEL ECUADOR EP', '0915702413', 'AV. PEDRO CARBO Y 10 DE AGOSTO', '2895600', NULL, 'info@correosep.ec', NULL, '2018-05-12', 1),
(4, 'HOLCIM CIA. LTDA. ASO.', '1201898331002', 'AV. GUAYAQUIL Y CALLE CUARTA', '25624875', '0956575859', 'gerencia@holcim.com.ec', 'El cliente: VolviÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³ al mercado mÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡', '2017-07-11', 1),
(5, 'EMPRESA DE ALUMINIO', '0913002218001', 'Av. Las AmÃ©ricas y Calle Quinta', '2898248', '0997635802', 'ediacebvo@gmail.com', 'El cliente: ya se normalizÃ³', '2017-07-14', 1),
(6, 'COLORATEX ECUADOR SA', '1710003406500', 'CHAVEZ FRANCO Y MACHALA', '032895645', '0997860105', 'jguayamabe@colorates.ec', 'Cliente permitido', '2017-07-14', 1),
(7, 'FERRISARIATO EL ROSADO SA', '1760001550001', 'CALLE ILLINWORHT Y MALECÃ“N SIMÃ“N BOLÃVAR', '032567849', NULL, 'rmerygarcia@elrosado.com', NULL, '2020-12-08', 1),
(8, 'EL FERRETERO', '1710034065001', 'CALLE ILLINWORHT Y MALECÃ“N SIMÃ“N BOLÃVAR', '2564556', '0997849511', 'rvalverde@gmail.com', 'Cliente permitido', '2017-07-14', 1),
(9, 'FERRETON SA', '0913002218', 'AV. CORAZÃ“N DE LEÃ“N Y CALLE LIBERTAD', '2564556', '0997849511', 'antobazan@yahoo.com', 'Cliente permitido', '2017-07-14', 1),
(10, 'FERRIMALL', '1790011674001', 'CHAVEZ FRANCO Y MACHALA', '2898248', '0997850190', 'mquiros@latinmail.com', 'Cliente permitido', '2017-07-18', 1),
(11, 'TERRAPLIENZA', '1303753618', 'CALLE LITORAL Y GUAMOTE', '2348045', NULL, 'ediacebo@hotmail.com', NULL, '2017-08-14', 1),
(12, 'FERRETERIA EL TORNILLO', '0190158357001', 'AV. LAS AGUAS Y CALLE DELTA', '2564578', '0994562302', 'mespinoza@gmail.com', 'Cliente permitido', '2017-08-14', 1),
(13, 'ARTEHOGAT', '1310651912', 'Av. Quito y Sucre esquina', '2350894', '0985112001', 'epazminio@gmail.com', 'Cliente permitido', '2017-08-14', 1),
(14, 'EL OXIFIERRO', '0302040142', 'MACHALA Y CHAVEZ FRANCO', '2564578', '0997815102', 'epazminio@gmail.com', 'ES UN TEST', '2018-12-22', 1),
(15, 'ELECTROFERRETERO', '0302040159', 'Av. Machala y Calle GarcÃ­a Goyena', '2350894', NULL, 'gerencia@holcim.com.ec', NULL, '2017-08-14', 1),
(16, 'FERRI PICA', '0103232005', 'Av. 25 de Julio y Calle PÃ­o Jaramillo', '2658978', NULL, 'mquiros@latinmail.com', NULL, '2017-08-14', 0),
(17, 'EMILIO TACURI', '1802556199', 'CHAVEZ FRANCO Y MACHALA', '2350894', NULL, 'etacuri@hotmail.com', NULL, '2017-08-20', 0),
(18, 'SAUL FRANCISCO BECERRA', '1202692321', 'AV. MACHALA Y CALLE CHAVEZ FRANCO', '2564578', '0956124510', 'rcordova@gmail.com', 'Cliente permitido', '2017-08-20', 0),
(19, 'RAFAEL BERMEO NAVIA', '0919109769001', 'Av. Las AmÃ©ricas y Calle Quinta', '2658978', '0992151025', 'wgamarra@hotmail.com', 'Cliente permitido', '2017-08-20', 0),
(20, 'TEOFILO BOHORQUEZ CONTRERAS', '1200754164001', 'CALLE LITORAL Y GUAMOTE', '2348045', '0985212501', 'mvelasquez@gmail.com', 'Cliente permitido', '2017-08-20', 0),
(21, 'franklin alfredo', '2100373873', 'km 1/2', '0994569828', '0498491', 'frank@gmail.com', 'nuevo comentario', '2021-04-25', 0),
(22, 'sfsf', '234234', 'sdfd', 'dasdasd', NULL, 'frank@gmail.com', NULL, '2021-04-25', 0),
(23, 'Franklin Cañadas', '2100373873', 'LAS ALBRICIAS', '0495781', NULL, 'frank@gmail.com', NULL, '2021-04-25', 0),
(24, 'sfsfsdf', '234234', 'sdfd', 'dasdasd', NULL, 'frank@gmail.com', NULL, '2021-04-25', 0),
(25, 'Franklin Cañadas', '2100373873', 'km 1/2 via narajito', '4654', NULL, 'frank@gmail.com', NULL, '2021-04-26', 0),
(26, 'Franklin Cañadas', '2100373873', 'km 1/2 via narajito', '0495781', NULL, 'frank@gmail.com', NULL, '2021-04-26', 0),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-26', 0),
(28, 'Franklin Cañadas', '234234', 'km 1/2 via narajito', '2895600', NULL, 'info@correosep.ec', NULL, '2021-04-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_04_25_193257_nuevoscampos_ausers', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbllogin`
--

CREATE TABLE `tbllogin` (
  `id` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Horai` time DEFAULT NULL,
  `Fecha2` date DEFAULT NULL,
  `Horas` time DEFAULT NULL,
  `Latitud` varchar(250) DEFAULT NULL,
  `Longitud` varchar(250) DEFAULT NULL,
  `Latitud2` varchar(250) DEFAULT NULL,
  `Longitud2` varchar(250) DEFAULT NULL,
  `addip` varchar(20) DEFAULT NULL COMMENT 'Agegar ip',
  `asistencia` tinyint(1) DEFAULT 0,
  `Estado` int(1) DEFAULT 0,
  `flag` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbllogin`
--

INSERT INTO `tbllogin` (`id`, `idusuario`, `Fecha`, `Horai`, `Fecha2`, `Horas`, `Latitud`, `Longitud`, `Latitud2`, `Longitud2`, `addip`, `asistencia`, `Estado`, `flag`) VALUES
(1, 1, '2021-01-30', '19:27:52', '2021-01-30', '19:27:52', '0', '0', '0', '0', '19:27:52', 0, 1, 1),
(2, 1, '2021-01-31', '15:01:38', '2021-01-31', '15:01:38', '0', '0', '0', '0', '15:01:38', 0, 1, 1),
(3, 1, '2021-02-02', '10:12:15', '2021-02-02', '10:12:15', '0', '0', '0', '0', '10:12:15', 0, 1, 1),
(4, 1, '2021-02-03', '00:05:23', '2021-02-03', '00:05:23', '0', '0', '0', '0', '00:05:23', 0, 1, 1),
(5, 2, '2021-02-03', '18:16:02', '2021-02-03', '18:16:02', '0', '0', '0', '0', '18:16:02', 0, 1, 1),
(6, 1, '2021-02-06', '11:04:33', '2021-02-06', '11:04:33', '0', '0', '0', '0', '11:04:33', 0, 1, 1),
(7, 1, '2021-02-08', '09:38:54', '2021-02-08', '09:38:54', '0', '0', '0', '0', '09:38:54', 0, 1, 1),
(8, 1, '2021-02-09', '20:26:14', '2021-02-09', '20:26:14', '0', '0', '0', '0', '20:26:14', 0, 1, 1),
(9, 1, '2021-02-11', '14:51:28', '2021-02-11', '14:51:28', '0', '0', '0', '0', '14:51:28', 0, 1, 1),
(10, 1, '2021-02-12', '00:01:48', '2021-02-12', '00:01:48', '0', '0', '0', '0', '00:01:48', 0, 1, 1),
(11, 1, '2021-02-14', '09:11:55', '2021-02-14', '09:11:55', '0', '0', '0', '0', '09:11:55', 0, 1, 1),
(12, 1, '2021-02-15', '07:54:53', '2021-02-15', '07:54:53', '0', '0', '0', '0', '07:54:53', 0, 1, 1),
(13, 1, '2021-02-16', '10:04:49', '2021-02-16', '10:04:49', '0', '0', '0', '0', '10:04:49', 0, 1, 1),
(14, 1, '2021-02-18', '09:36:34', '2021-02-18', '09:36:34', '0', '0', '0', '0', '09:36:34', 0, 1, 1),
(15, 1, '2021-02-19', '11:17:12', '2021-02-19', '11:17:12', '0', '0', '0', '0', '11:17:12', 0, 1, 1),
(16, 1, '2021-02-20', '15:41:18', '2021-02-20', '15:41:18', '0', '0', '0', '0', '15:41:18', 0, 1, 1),
(17, 1, '2021-02-21', '18:11:17', '2021-02-21', '18:11:17', '0', '0', '0', '0', '18:11:17', 0, 1, 1),
(18, 1, '2021-02-23', '11:01:35', '2021-02-23', '11:01:35', '0', '0', '0', '0', '11:01:35', 0, 1, 1),
(19, 1, '2021-02-24', '01:00:59', '2021-02-24', '01:00:59', '0', '0', '0', '0', '01:00:59', 0, 1, 1),
(20, 1, '2021-02-28', '13:07:18', '2021-02-28', '13:07:18', '0', '0', '0', '0', '13:07:18', 0, 1, 1),
(21, 2, '2021-02-28', '13:10:30', '2021-02-28', '13:10:30', '0', '0', '0', '0', '13:10:30', 0, 1, 1),
(22, 2, '2021-03-02', '00:05:51', '2021-03-02', '00:05:51', '0', '0', '0', '0', '00:05:51', 0, 1, 1),
(23, 1, '2021-03-02', '08:55:27', '2021-03-02', '08:55:27', '0', '0', '0', '0', '08:55:27', 0, 1, 1),
(24, 1, '2021-03-04', '14:15:27', '2021-03-04', '14:15:27', '0', '0', '0', '0', '14:15:27', 0, 1, 1),
(25, 1, '2021-03-05', '00:08:02', '2021-03-05', '00:08:02', '0', '0', '0', '0', '00:08:02', 0, 1, 1),
(26, 1, '2021-03-06', '09:08:01', '2021-03-06', '09:08:01', '0', '0', '0', '0', '09:08:01', 0, 1, 1),
(27, 1, '2021-03-07', '09:16:28', '2021-03-07', '09:16:28', '0', '0', '0', '0', '09:16:28', 0, 1, 1),
(28, 1, '2021-03-08', '09:42:54', '2021-03-08', '09:42:54', '0', '0', '0', '0', '09:42:54', 0, 1, 1),
(29, 1, '2021-03-09', '19:09:38', '2021-03-09', '19:09:38', '0', '0', '0', '0', '19:09:38', 0, 1, 1),
(30, 1, '2021-03-10', '10:24:06', '2021-03-10', '10:24:06', '0', '0', '0', '0', '10:24:06', 0, 1, 1),
(31, 1, '2021-03-11', '00:01:46', '2021-03-11', '00:01:46', '0', '0', '0', '0', '00:01:46', 0, 1, 1),
(32, 1, '2021-03-12', '13:12:13', '2021-03-12', '13:12:13', '0', '0', '0', '0', '13:12:13', 0, 1, 1),
(33, 1, '2021-03-13', '12:43:26', '2021-03-13', '12:43:26', '0', '0', '0', '0', '12:43:26', 0, 1, 1),
(34, 1, '2021-03-15', '20:12:11', '2021-03-15', '20:12:11', '0', '0', '0', '0', '20:12:11', 0, 1, 1),
(35, 1, '2021-03-16', '08:03:01', '2021-03-16', '08:03:01', '0', '0', '0', '0', '08:03:01', 0, 1, 1),
(36, 1, '2021-03-17', '08:45:37', '2021-03-17', '08:45:37', '0', '0', '0', '0', '08:45:37', 0, 1, 1),
(37, 1, '2021-03-18', '16:16:22', '2021-03-18', '16:16:22', '0', '0', '0', '0', '16:16:22', 0, 1, 1),
(38, 1, '2021-03-19', '09:12:47', '2021-03-19', '09:12:47', '0', '0', '0', '0', '09:12:47', 0, 1, 1),
(39, 1, '2021-03-20', '00:12:51', '2021-03-20', '00:12:51', '0', '0', '0', '0', '00:12:51', 0, 1, 1),
(40, 1, '2021-03-21', '09:05:01', '2021-03-21', '09:05:01', '0', '0', '0', '0', '09:05:01', 0, 1, 1),
(41, 1, '2021-03-22', '00:28:59', '2021-03-22', '00:28:59', '0', '0', '0', '0', '00:28:59', 0, 1, 1),
(42, 1, '2021-03-23', '17:34:06', '2021-03-23', '17:34:06', '0', '0', '0', '0', '17:34:06', 0, 1, 1),
(43, 1, '2021-03-24', '10:55:41', '2021-03-24', '10:55:41', '0', '0', '0', '0', '10:55:41', 0, 1, 1),
(44, 1, '2021-03-25', '13:09:56', '2021-03-25', '13:09:56', '0', '0', '0', '0', '13:09:56', 0, 1, 1),
(45, 2, '2021-03-25', '18:16:27', '2021-03-25', '18:16:27', '0', '0', '0', '0', '18:16:27', 0, 1, 1),
(46, 1, '2021-03-26', '10:26:29', '2021-03-26', '10:26:29', '0', '0', '0', '0', '10:26:29', 0, 1, 1),
(47, 2, '2021-03-26', '10:44:23', '2021-03-26', '10:44:23', '0', '0', '0', '0', '10:44:23', 0, 1, 1),
(48, 2, '2021-03-27', '00:06:06', '2021-03-27', '00:06:06', '0', '0', '0', '0', '00:06:06', 0, 1, 1),
(49, 2, '2021-03-28', '10:19:09', '2021-03-28', '10:19:09', '0', '0', '0', '0', '10:19:09', 0, 1, 1),
(50, 1, '2021-03-28', '12:56:43', '2021-03-28', '12:56:43', '0', '0', '0', '0', '12:56:43', 0, 1, 1),
(51, 1, '2021-03-29', '10:04:53', '2021-03-29', '10:04:53', '0', '0', '0', '0', '10:04:53', 0, 1, 1),
(52, 1, '2021-03-30', '00:24:54', '2021-03-30', '00:24:54', '0', '0', '0', '0', '00:24:54', 0, 1, 1),
(53, 1, '2021-03-31', '16:23:16', '2021-03-31', '16:23:16', '0', '0', '0', '0', '16:23:16', 0, 1, 1),
(54, 1, '2021-04-01', '12:03:02', '2021-04-01', '12:03:02', '0', '0', '0', '0', '12:03:02', 0, 1, 1),
(55, 2, '2021-04-01', '12:57:18', '2021-04-01', '12:57:18', '0', '0', '0', '0', '12:57:18', 0, 1, 1),
(56, 2, '2021-04-02', '12:22:14', '2021-04-02', '12:22:14', '0', '0', '0', '0', '12:22:14', 0, 1, 1),
(57, 1, '2021-04-02', '13:20:33', '2021-04-02', '13:20:33', '0', '0', '0', '0', '13:20:33', 0, 1, 1),
(58, 1, '2021-04-03', '10:37:55', '2021-04-03', '10:37:55', '0', '0', '0', '0', '10:37:55', 0, 1, 1),
(59, 1, '2021-04-05', '12:46:54', '2021-04-05', '12:46:54', '0', '0', '0', '0', '12:46:54', 0, 1, 1),
(60, 1, '2021-04-06', '10:18:19', '2021-04-06', '10:18:19', '0', '0', '0', '0', '10:18:19', 0, 1, 1),
(61, 1, '2021-04-07', '10:04:05', '2021-04-07', '10:04:05', '0', '0', '0', '0', '10:04:05', 0, 1, 1),
(62, 1, '2021-04-08', '09:28:54', '2021-04-08', '09:28:54', '0', '0', '0', '0', '09:28:54', 0, 1, 1),
(63, 1, '2021-04-09', '10:07:28', '2021-04-09', '10:07:28', '0', '0', '0', '0', '10:07:28', 0, 1, 1),
(64, 1, '2021-04-10', '11:25:23', '2021-04-10', '11:25:23', '0', '0', '0', '0', '11:25:23', 0, 1, 1),
(65, 6, '2021-04-10', '14:01:31', '2021-04-10', '14:01:31', '0', '0', '0', '0', '14:01:31', 0, 1, 1),
(66, 1, '2021-04-13', '12:11:10', '2021-04-13', '12:11:10', '0', '0', '0', '0', '12:11:10', 0, 1, 1),
(67, 2, '2021-04-13', '22:29:30', '2021-04-13', '22:29:30', '0', '0', '0', '0', '22:29:30', 0, 1, 1),
(68, 1, '2021-04-14', '15:17:48', '2021-04-14', '15:17:48', '0', '0', '0', '0', '15:17:48', 0, 1, 1),
(69, 1, '2021-04-15', '12:17:15', '2021-04-15', '12:17:15', '0', '0', '0', '0', '12:17:15', 0, 1, 1),
(70, 6, '2021-04-16', '10:41:32', '2021-04-16', '10:41:32', '0', '0', '0', '0', '10:41:32', 0, 1, 1),
(71, 2, '2021-04-16', '11:44:19', '2021-04-16', '11:44:19', '0', '0', '0', '0', '11:44:19', 0, 1, 1),
(72, 1, '2021-04-17', '09:43:50', '2021-04-17', '09:43:50', '0', '0', '0', '0', '09:43:50', 0, 1, 1),
(73, 1, '2021-04-19', '23:58:54', '2021-04-19', '23:58:54', '0', '0', '0', '0', '23:58:54', 0, 1, 1),
(74, 1, '2021-04-20', '00:05:41', '2021-04-20', '00:05:41', '0', '0', '0', '0', '00:05:41', 0, 1, 1),
(75, 1, '2021-04-21', '09:33:38', '2021-04-21', '09:33:38', '0', '0', '0', '0', '09:33:38', 0, 1, 1),
(76, 1, '2021-04-22', '10:23:09', '2021-04-22', '10:23:09', '0', '0', '0', '0', '10:23:09', 0, 1, 1),
(77, 1, '2021-04-23', '11:14:18', '2021-04-23', '11:14:18', '0', '0', '0', '0', '11:14:18', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id` int(11) NOT NULL,
  `tipouser` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flag` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `tipouser`, `flag`) VALUES
(1, 'Administrador', 1),
(2, 'Supervisor', 1),
(3, 'Vendedor', 1),
(4, 'Empleado', 1),
(5, 'Super Administrador', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `idtipouser` int(11) NOT NULL,
  `fecha_reg` date DEFAULT NULL,
  `flag` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `idtipouser`, `fecha_reg`, `flag`) VALUES
(1, 'franklin', 'frank1995alfredo@gmail.com', NULL, '$2y$10$k4V99HAGZV0SNczY8nxCUe17FTNdK7R.2Rd7D57rG61hPDO45vRqe', NULL, '2021-04-26 00:46:22', '2021-04-26 00:46:22', 2, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `correo` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `idtipouser` int(1) DEFAULT NULL,
  `fecha_reg` date DEFAULT NULL,
  `flag` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `username`, `password`, `idtipouser`, `fecha_reg`, `flag`) VALUES
(1, 'abasantes@hotmail.com', 'admin', '$2y$10$f27td282MZkBzfb0oLCU1eQUosGonAHRf.e0zEOL/gfowmbuRjHmO', 1, '2021-04-16', 1),
(2, 'mfalcivar@yahoo.com', 'maralcivar', '$2y$10$f27td282MZkBzfb0oLCU1eQUosGonAHRf.e0zEOL/gfowmbuRjHmO', 2, '2021-04-16', 1),
(3, 'jalvarez@gmail.com', 'johalvarez', '$2y$10$U7FV0TndjwszLYhZ6y9a1ujTtSdHj2EStPw45JYdU0BkdNgLpu1RW', 3, '2021-01-10', 1),
(4, 'abarzola@gmail.com', 'anabarzola', '$2y$10$U7FV0TndjwszLYhZ6y9a1ujTtSdHj2EStPw45JYdU0BkdNgLpu1RW', 3, '2020-02-20', 1),
(5, 'amcasquete@yimail.com', 'anacasquete', '$2y$10$U7FV0TndjwszLYhZ6y9a1ujTtSdHj2EStPw45JYdU0BkdNgLpu1RW', 3, '2059-01-20', 1),
(6, 'mzoilacastillo@gmail.com', 'marcastillo', '$2y$10$UDX5Z7U3C7RMuIRXpbLxY.dqlfgxjFsxo28F7oam5JaqbhrZ2GeVS', 1, '2021-04-16', 1),
(7, 'frank1995alfredo@gmail.com', 'franklin', '$2y$10$lDoIVv9udFjU/csbcQiiyOQjjU00fw.sVP/1LnAuDo4Od.SQrltN2', 2, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllogin`
--
ALTER TABLE `tbllogin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indexes for table `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `idtipouser` (`idtipouser`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_TipoUsuario` (`idtipouser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbllogin`
--
ALTER TABLE `tbllogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbllogin`
--
ALTER TABLE `tbllogin`
  ADD CONSTRAINT `tbllogin_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idtipouser`) REFERENCES `tipousuario` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
