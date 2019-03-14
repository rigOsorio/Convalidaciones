-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2019 a las 13:05:38
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_universidades3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_asignaturas`
--

CREATE TABLE `tb_asignaturas` (
  `id` int(11) NOT NULL,
  `nombre_asignatura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_Grado` int(11) NOT NULL,
  `creditos` float DEFAULT NULL,
  `por_creditos` tinyint(1) DEFAULT NULL,
  `por_outcom` tinyint(1) DEFAULT NULL,
  `por_contenido` tinyint(1) DEFAULT NULL,
  `id_outcom` int(11) DEFAULT NULL,
  `id_asignatura` int(11) DEFAULT NULL,
  `aprueba` tinyint(1) NOT NULL,
  `id_asignaturas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_asignaturas`
--

INSERT INTO `tb_asignaturas` (`id`, `nombre_asignatura`, `id_Grado`, `creditos`, `por_creditos`, `por_outcom`, `por_contenido`, `id_outcom`, `id_asignatura`, `aprueba`, `id_asignaturas`) VALUES
(1, 'Algebra', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(2, 'Análisis matemático', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(3, 'Estadística', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(4, 'Fundamentos de computadores', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(5, 'Fundamentos de organización de empresas', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(6, 'Fundamentos Físicos de la Informática', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(7, 'Introducción a la informática y a la programación', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(8, 'Matemática discreta', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(9, 'Programación', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(10, 'Tecnología de computadores', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(11, 'Concurrencia y sistemas distribuidos', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(12, 'Deontología y profesionalismo', 2, 4.5, 0, 0, 0, 1, NULL, 0, NULL),
(13, 'Estructura de computadores', 2, 9, 0, 0, 0, 1, NULL, 0, NULL),
(14, 'Estructuras de datos y algoritmos', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(15, 'Fundamentos de sistemas operativos', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(16, 'Interfaces persona computador', 2, 4.5, 0, 0, 0, 1, NULL, 0, NULL),
(17, 'Lenguajes, tecnologías y paradigmas de la programación', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(18, 'Redes de computadores', 2, 9, 0, 0, 0, 1, NULL, 0, NULL),
(19, 'Teoría de autómatas y lenguajes formales', 2, 4.5, 0, 0, 0, 1, NULL, 0, NULL),
(20, 'Arquitectura e ingeniería de computadores', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(21, 'Bases de datos y sistemas de información', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(22, 'Computación paralela', 2, 4.5, 0, 0, 0, 1, NULL, 0, NULL),
(23, 'Gestión de proyectos', 2, 4.5, 0, 0, 0, 1, NULL, 0, NULL),
(24, 'Ingeniería del software', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(25, 'Sistemas inteligentes', 2, 4.5, 0, 0, 0, 1, NULL, 0, NULL),
(26, 'Tecnología de sistemas de información en la red', 2, 6, 0, 0, 0, 1, NULL, 0, NULL),
(27, 'Trabajo de fin de Grado', 2, 12, 0, 0, 0, 1, NULL, 0, NULL),
(28, 'Álgebra Lineal', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(29, 'Cálculo', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(30, 'Empresa', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(31, 'Fundamentos de Informática', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(32, 'Introducción a la Programación', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(33, 'Estadística', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(34, 'Ondas y Electromagnetismo', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(35, 'Fundamentos de Computadores y Redes', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(36, 'Autómatas y Matemáticas Discretas', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(37, 'Metodología de la Programación', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(38, 'Algoritmia', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(39, 'Arquitectura de Computadores', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(40, 'Bases de Datos', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(41, 'Computabilidad', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(42, 'Computación Numérica', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(43, 'Comunicación Persona Máquina', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(44, 'Estructuras de Datos', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(45, 'Sistemas Operativos', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(46, 'Tecnología Electrónica de Computadores', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(47, 'Tecnologías y Paradigmas de la Programación', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(48, 'Administración de Sistemas', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(49, 'Configuración y Evaluación de Sistemas', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(50, 'Infraestructura Informática', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(51, 'Ingeniería de Redes', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(52, 'Ingeniería del Software', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(53, 'Programación Concurrente y Paralela', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(54, 'Redes de Computadores', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(55, 'Sistemas Distribuidos', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(56, 'Sistemas Inteligentes', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(57, 'Sistemas de Información', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(58, 'Gestión de Tecnologías de la Información', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(59, 'Informática Móvil', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(60, 'Ingeniería de Servicios', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(61, 'Inteligencia de Negocio', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(62, 'Proyectos', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(63, 'Pruebas y Despliegue de Software', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(64, 'Prácticas en empresa', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(65, 'Seguridad', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(66, 'Tecnologías Web', 1, 6, 0, 0, 0, 1, NULL, 0, NULL),
(67, 'Trabajo de Fin de Grado', 1, 12, 0, 0, 0, 1, NULL, 0, NULL),
(68, 'Álgebra Lineal y Discreta', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(69, 'Fundamentos Físicos de la Informática', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(70, 'Inglés', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(71, 'Introducción al Software', 3, 6, 1, 1, 0, 1, 132, 0, NULL),
(72, 'Sistemas Digitales', 3, 6, 1, 1, 0, 1, 131, 0, NULL),
(73, 'Análisis Matemático y Métodos Numéricos', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(74, 'Economía y Administración de Empresas', 3, 6, 1, 1, 0, 1, 165, 0, NULL),
(75, 'Estadística y Optimización', 3, 6, 1, 1, 0, 1, 142, 0, NULL),
(76, 'Introducción a los Computadores', 3, 6, 1, 1, 0, 1, 141, 0, NULL),
(77, 'Métodos de Programación', 3, 6, 1, 1, 1, 1, 147, 0, 1),
(78, 'Estructura de Computadores', 3, 6, 0, 0, 0, 1, 131, 0, NULL),
(79, 'Estructuras de Datos', 3, 6, 1, 1, 0, 1, 144, 0, NULL),
(80, 'Matemática Discreta', 3, 6, 1, 1, 1, 1, 139, 0, 1),
(81, 'Sistemas de Información', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(82, 'Valores, Ética y Profesión Informática', 3, 6, 1, 1, 0, 1, 153, 0, NULL),
(83, 'Algorítmica y Complejidad', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(84, 'Bases de Datos', 3, 6, 1, 1, 1, 1, 143, 0, 1),
(85, 'Lógica', 3, 6, 1, 1, 1, 1, 140, 0, 1),
(86, 'Organización de Computadores', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(87, 'Sistemas Operativos', 3, 6, 1, 1, 0, 1, 147, 0, NULL),
(88, 'Ingeniería del Software I', 3, 6, 1, 1, 0, 1, 151, 0, NULL),
(89, 'Interacción Persona−Computador', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(90, 'Introducción a las Redes de Computadores', 3, 6, 1, 1, 0, 1, 141, 0, NULL),
(91, 'Introducción a los Sistemas Inteligentes', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(92, 'Programación Paralela, Concurrente y de Tiempo Real', 3, 6, 1, 1, 0, 1, 152, 0, NULL),
(93, 'Aprendizaje Automático y Minería de Datos', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(94, 'Arquitectura e Ingeniería de Computadores', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(95, 'Desarrollo de Sistemas de Información', 3, 6, 1, 1, 1, 1, 148, 0, 1),
(96, 'Ingeniería de Requisitos', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(97, 'Ingeniería del Software II', 3, 6, 1, 1, 0, 1, 155, 0, NULL),
(98, 'Lenguajes Formales', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(99, 'Redes de Computadores y Sistemas Distribuidos', 3, 6, 1, 1, 0, 1, 152, 0, NULL),
(100, 'Sistemas de Tiempo Real', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(101, 'Sistemas Informáticos', 3, 6, 1, 1, 0, 1, 141, 0, NULL),
(102, 'Bases de Datos Avanzadas', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(103, 'Calidad y Auditoría', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(104, 'Computer Animation and Video Games', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(105, 'Diseño de Algoritmos', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(106, 'Diseño de Software', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(107, 'Diseño y Administración de Redes', 3, 6, 1, 1, 0, 1, 141, 0, NULL),
(108, 'Gráficos por Computador y Realidad Virtual', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(109, 'Métodos de Desarrollo', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(110, 'Modelos de Cálculo', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(111, 'Multiprocesadores', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(112, 'Procesos de Ingeniería del Software', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(113, 'Representación del Conocimiento', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(114, 'Sistemas Embebidos', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(115, 'Sistemas Operativos Avanzados', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(116, 'Diseño y Gestión de Sistemas Informáticos', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(117, 'Garantía y Seguridad en Sistemas y Redes', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(118, 'Gestión de Proyectos Software', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(119, 'Informática Industrial', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(120, 'Lenguajes de Programación', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(121, 'Natural Language Processing', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(122, 'Proceso del Lenguaje Humano', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(123, 'Servicios Software', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(124, 'Sistemas de Información de la Empresa', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(125, 'System and Network Security and Assurance', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(126, 'Advanced Operating Systems', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(127, 'Animación por Computador y Videojuegos', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(128, 'Prácticas Académicas Externas I', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(129, 'Prácticas Académicas Externas II', 3, 6, 0, 0, 0, 1, NULL, 0, NULL),
(130, 'Trabajo de Fin de Grado', 3, 12, 1, 0, 0, 1, NULL, 0, NULL),
(131, 'Tecnología y Estructura de Ordenadores', 4, 6, NULL, NULL, NULL, 5, NULL, 0, NULL),
(132, 'Programación I', 4, 6, NULL, NULL, NULL, 3, NULL, 0, NULL),
(133, 'Introducción a la Gestión de Proyectos de Software', 4, 6, NULL, NULL, NULL, 4, NULL, 0, NULL),
(134, 'Matemática I', 4, 6, NULL, NULL, NULL, 1, NULL, 0, NULL),
(135, 'Física', 4, 6, NULL, NULL, NULL, 2, NULL, 0, NULL),
(136, 'Matemática II', 4, 6, NULL, NULL, NULL, 1, NULL, 0, NULL),
(137, 'Programación II', 4, 6, NULL, NULL, NULL, 3, NULL, 0, NULL),
(138, 'Tecnologias de la Informacion y Comunicación', 4, 6, NULL, NULL, NULL, 4, NULL, 0, NULL),
(139, 'Matematica Discreta', 4, 6, NULL, NULL, NULL, 1, NULL, 0, NULL),
(140, 'Logica', 4, 6, NULL, NULL, NULL, 1, NULL, 0, NULL),
(141, 'Redes de Ordenadores', 4, 6, NULL, NULL, NULL, 6, NULL, 0, NULL),
(142, 'Estadística', 4, 6, NULL, NULL, NULL, 1, NULL, 0, NULL),
(143, 'Bases de Datos I', 4, 6, NULL, NULL, NULL, 4, NULL, 0, NULL),
(144, 'Estructuras de Datos y Algoritmos I', 4, 6, NULL, NULL, NULL, 3, NULL, 0, NULL),
(145, 'Matematica Numerica', 4, 6, NULL, NULL, NULL, 1, NULL, 0, NULL),
(146, 'Lenguajes de Programación', 4, 6, NULL, NULL, NULL, 3, NULL, 0, NULL),
(147, 'Sistemas Operativos', 4, 6, NULL, NULL, NULL, 6, NULL, 0, NULL),
(148, 'Bases de Datos II', 4, 6, NULL, NULL, NULL, 4, NULL, 0, NULL),
(149, 'Estructuras de Datos y Algoritmos II', 4, 6, NULL, NULL, NULL, 3, NULL, 0, NULL),
(150, 'Inglés II', 4, 6, NULL, NULL, NULL, 7, NULL, 0, NULL),
(151, 'Ingeniería de Software I', 4, 6, NULL, NULL, NULL, 4, NULL, 0, NULL),
(152, 'Sistemas Distribuidos y Programación en Paralelo', 4, 6, NULL, NULL, NULL, 6, NULL, 0, NULL),
(153, 'Ética y Legislación Informática', 4, 6, NULL, NULL, NULL, 8, NULL, 0, NULL),
(154, 'Inglés III', 4, 6, NULL, NULL, NULL, 7, NULL, 0, NULL),
(155, 'Ingeniería de Software II', 4, 6, NULL, NULL, NULL, 4, NULL, 0, NULL),
(156, 'Dirección de Sistemas de Información', 4, 6, NULL, NULL, NULL, 4, NULL, 0, NULL),
(157, 'Seguridad Informática y Criptografía', 4, 6, NULL, NULL, NULL, 6, NULL, 0, NULL),
(158, 'Inglés IV', 4, 6, NULL, NULL, NULL, 7, NULL, 0, NULL),
(159, 'Practicum', 4, 6, NULL, NULL, NULL, 14, NULL, 0, NULL),
(160, 'Programación Web I', 4, 6, NULL, NULL, NULL, 3, NULL, 0, NULL),
(161, 'Inteligencia Artificial', 4, 6, NULL, NULL, NULL, 4, NULL, 0, NULL),
(162, 'Proyectos', 4, 6, NULL, NULL, NULL, 4, NULL, 0, NULL),
(163, 'Trabajo de Fin de Grado', 4, 12, NULL, NULL, NULL, 15, NULL, 0, NULL),
(164, 'Programación Web II', 4, 6, NULL, NULL, NULL, 3, NULL, 0, NULL),
(165, 'Economía de la Empresa y Emprendedores', 4, 6, NULL, NULL, NULL, 9, NULL, 0, NULL),
(166, 'Organización de Empresas', 4, 6, NULL, NULL, NULL, 11, NULL, 0, NULL),
(167, 'Investigación de Mercados', 4, 6, NULL, NULL, NULL, 12, NULL, 0, NULL),
(168, 'Teoría y Práctica de la Comunicación Visual', 4, 6, NULL, NULL, NULL, 13, NULL, 0, NULL),
(169, 'Contabilidad I', 4, 6, NULL, NULL, NULL, 10, NULL, 0, NULL),
(170, 'Recursos Humanos', 4, 6, NULL, NULL, NULL, 11, NULL, 0, NULL),
(171, 'Marketing Estratégico y Operativo', 4, 6, NULL, NULL, NULL, 12, NULL, 0, NULL),
(172, 'Sociedad de la Información y el Conocimiento', 4, 6, NULL, NULL, NULL, 13, NULL, 0, NULL),
(173, 'Contabilidad II', 4, 6, NULL, NULL, NULL, 10, NULL, 0, NULL),
(174, 'Automática y Control', 4, 6, NULL, NULL, NULL, 11, NULL, 0, NULL),
(175, 'Marketing Digital y Medios Interactivos', 4, 6, NULL, NULL, NULL, 12, NULL, 0, NULL),
(176, 'Animación Digital', 4, 6, NULL, NULL, NULL, 13, NULL, 0, NULL),
(177, 'Matemáticas Financieras', 4, 6, NULL, NULL, NULL, 10, NULL, 0, NULL),
(178, 'Administración de la Producción y Logística', 4, 6, NULL, NULL, NULL, 11, NULL, 0, NULL),
(179, 'Comunicación Corporativa e Institucional', 4, 6, NULL, NULL, NULL, 12, NULL, 0, NULL),
(180, 'Creación de Productos Multimedia', 4, 6, NULL, NULL, NULL, 13, NULL, 0, NULL),
(181, 'Análisis de Estados Financieros', 4, 6, NULL, NULL, NULL, 10, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_carreras`
--

CREATE TABLE `tb_carreras` (
  `id` int(11) NOT NULL,
  `nombre_Grado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_Universidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tb_carreras`
--

INSERT INTO `tb_carreras` (`id`, `nombre_Grado`, `id_Universidad`) VALUES
(1, 'Ingeniería Informática en Tecnologías de la Información', 1),
(2, 'Ingeniería Informática', 2),
(3, 'Ingeniería Informática', 3),
(4, 'Ingeniería Informática', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_contenido`
--

CREATE TABLE `tb_contenido` (
  `id` int(11) NOT NULL,
  `contenido` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_asignaturas` int(11) NOT NULL,
  `creditos` int(11) DEFAULT NULL,
  `id_outcom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_contenido`
--

INSERT INTO `tb_contenido` (`id`, `contenido`, `id_asignaturas`, `creditos`, `id_outcom`) VALUES
(1, 'Teoría de conjuntos elemental: unión, intersección,\r\ncomplementario, leyes de Morgan;\r\nfunciones;\r\nrelaciones de orden y equivalencia; inducción.\r\nÁlgebra Lineal:\r\nEspacios vectoriales, bases;\r\nAplicaciones lineales, matrices;\r\nresolución de ecuaciones lineales;\r\nteoría del endomorfismo;\r\ngeometría euclídea\r\nAnillos, cuerpos, grupos;\r\npolinomios univariados;\r\ndivisibilidad: algoritmo de euclides;\r\necuación diofántica lineal y Teorema chino de los restos\r\nGrupos finitos', 68, NULL, NULL),
(2, 'Bloque: I Análisis de eficiencia de algoritmos.\r\nOrdenes de magnitud.\r\nResolución de recurrencias.\r\nBloque II:\r\nGrafos y su implementación.\r\nÁrboles y grafos acíclicos.\r\nAlgoritmo de Kruskal y Prim.\r\nRecorrido sobre grafos.\r\nCaminos mínimos.\r\nBloque III:\r\nBacktracking y ramificación y poda.\r\nAlgoritmos voraces y heurísticas voraces.\r\nEl algoritmo de Kruskal como algoritmo voraz.\r\nBloque IV:\r\nEsquema divide-y-venceras\r\nProgramación dinámica\r\nDiferencias entre Programación dinámica,\r\ndivide-y-venceras y algoritmos voraces.\r\nBloque V:\r\nClases de complejidad, problemas de decisión y\r\noptimización.\r\nLa clase de problemas P, NP y NP-Completos.\r\nProblemas NP-Completos sobre grafos.', 83, NULL, NULL),
(3, 'Estudio de la simulación exacta y aproximada de la\r\ndinámica simple en un ordenador: trayectorias de objetos\r\nbajo fuerzas gravitatorias y de rozamiento.\r\nComo herramientas técnicas para este propósito: cálculo\r\nde derivadas (en una y varias variables) y de primitivas;\r\nmétodos básicos de resolución de ecuaciones\r\ndiferenciales ordinarias (separación de variables\r\necuaciones lineales de primer orden, ecuaciones lineales\r\nhomogéneas de segundo orden con coeficientes\r\nconstantes, incluyendo un breve repaso de la aritmética\r\ncompleja); existencia, unicidad y resolución numérica de\r\nproblemas de valores iniciales.\r\nEstudio de los elementos básicos de las gráficas en una\r\nsimulación informática: dibujo de curvas, recorrido de las\r\nmismas a la velocidad deseada.\r\nComo herramientas para la consecución de estos\r\nobjetivos: interpolación polinomial; cálculo de trazadores\r\ncúbicos; integral definida y Teorema Fundamental del\r\nCálculo; curvas parametrizadas, longitud y\r\nparametrización por longitud de arco; cálculo aproximado\r\nde integrales mediante la regla del punto medio\r\ncompuesta.\r\nEstudio de algunos métodos matemáticos básicos para la\r\ntoma de decisiones por una inteligencia artificial en un\r\nvideojuego: previsión de la localización de un jugador,\r\nselección de la mejor estrategia.\r\nComo herramientas matemáticas para estos objetivos:\r\ncálculo aproximado de derivadas de primer y segundo\r\norden; Teorema de Taylor; resolución de ecuaciones y\r\nsistemas de ecuaciones mediante el método de bisección,\r\nsecante, Newton y Newton modificado; optimización de\r\nfunciones de varias variables reales; método del gradiente.', 73, NULL, NULL),
(4, '1. INTRODUCCIÓN A LAS BASES DE DATOS\r\nConcepto de Base de Datos y SGBD. De los sistemas de\r\nficheros a la BD relacional. Niveles de abstracción.\r\nRazones que justifican el uso de BD. Cuándo no usar una\r\nBD. Introducción a las bases de datos relacionales y al\r\nlenguaje estándar SQL. Concepto de transacción.\r\nArquitectura del SGBD. Roles de usuarios.\r\n2. MODELO DE DATOS RELACIONAL\r\nIntroducción. El modelo relacional: elementos básicos,\r\nclases de relaciones, restricciones, valores nulos.\r\nEsquemas relacionales. El modelo relacional y la\r\narquitectura ANSI-SPARC. Fases del diseño e\r\nimplementación de BD: Modelos conceptuales, lógicos y\r\nfísicos. Herramientas CASE\r\n\r\n3. LENGUAJE SQL\r\nIntroducción al lenguaje SQL. Estándares. Tipos de datos.\r\nSentencias para la creación, alteración y manipulación de\r\nbases de datos. Índices. Vistas. Gestión de transacciones.\r\nGestión de errores. Procedimientos, funciones y\r\ndisparadores.\r\n4. ADMINISTRACIÓN DE BASES DE DATOS\r\nArquitectura del Servicio de Informática de una\r\nOrganización. Funciones del administrador de BD y del\r\nadministrador de datos.\r\nHerramientas de administración de BD. Aspectos\r\nrelacionados con la seguridad y encriptación de datos, la\r\ndisponibilidad e integridad de la información.\r\n5. DISEÑO Y DESARROLLO DE APLICACIONES DE\r\nBASE DE DATOS\r\nConcepto de aplicación. Elementos de las aplicaciones.\r\nArquitecturas de las aplicaciones de usuario. Lenguajes y\r\nherramientas. Tecnologías.\r\n6. OTROS MODELOS DE DATOS\r\nIntroducción a otros modelos de datos: objeto-relacional,\r\norientado a objeto, multidimensional, semiestructurado,\r\netc', 84, NULL, NULL),
(5, 'LA EMPRESA Y SU ENTORNO Tema 1. La empresa\r\nTema 2. El entorno de la empresa Tema 3. El entorno\r\nmacroeconómico Tema 4. El entorno sectorial y\r\nmicroeconómico\r\n\r\nDIRECCIÓN Y GESTIÓN DE LA EMPRESA Tema 5.\r\nDirección, planificación y control Tema 6. Organización y\r\ncomportamiento organizativo Tema 7. La dirección de\r\nrecursos humanos Tema 8. Inversión y financiación\r\nempresarial Tema 9. Contabilidad.\r\nGESTIÓN DE LA PRODUCCIÓN EN LA EMPRESA Tema\r\n10. Producción y productividad Tema 11. Gestión\r\neconómica de stocks Tema 12. Planificación de la\r\nproducción Tema 13. Proceso de planificación maestra\r\nTema 14. Control de proyectos', 74, NULL, NULL),
(6, 'Estadística Descriptiva\r\nProbabilidad\r\nDistribuciones de Probabilidad\r\nIntervalos de Confianza y Contrastes de Hipótesis\r\nRegresión y Correlación\r\nIntroducción a la Optimización\r\nMétodos y Aplicaciones\r\nAlgoritmos de Optimización', 75, NULL, NULL),
(7, 'Sistemas de Entrada/Salida.\r\nDefinición de E/S; Dispositivos y Controladores de E/S;\r\nEjemplo de dispositivos: Dispositivos de almacenamiento\r\nmasivo: discos SSD; Fases de gestión de la E/S; Software\r\nde gestión: Driver; Rendimiento de la E/S.\r\nGestión de la Entrada/Salida.\r\nDescripción del sistema de E/S de la Raspberry-Pi; El\r\ndispositivo más sencillo: GPI; Ejemplo de programación\r\npara el manejo de LEDs y pulsadores; Modelo gestión de\r\nE/S por encuesta; El timer: descripción y utilidad; Las\r\nexcepciones en ARM; Gestión de E/S por excepciones:\r\nfases de la gestión de las interrupciones; Programación\r\ndel timer; Transferencia de datos por DMA\r\nOtros dispositivos de E/S en la Raspberry-Pi.\r\nLa comunicación serie: Interfaz SPI y control de una\r\npantalla; E/S analógica: Dispositivos de audio (PWM).\r\nElementos de interconexión: buses.\r\nNecesidades de interconexión de los componentes del\r\ncomputador; Estructura de un bus: modo de operación,\r\nprincipales elementos de diseño; Estudio del rendimiento\r\ndel bus; Principales elementos del diseño de un bus;\r\nEjemplo de bus: El bus PCI.\r\nUnidad de Memoria.\r\nConceptos básicos: tipos de memoria, mapa de memoria\r\ny medidas del rendimiento; Jerarquía de memoria;\r\nIntroducción a la Memoria cache; La memoria principal:\r\norganización y conexión.', 78, NULL, NULL),
(14, '1. Introducción.\r\nEstructura de Datos.\r\nTipo de Datos Abstracto.\r\nInterfaces en POO.\r\nInterfaces genéricas\r\nColecciones Java.\r\nRelación con asignaturas anteriores.\r\n\r\n2. Análisis de algoritmos.\r\nConcepto de algoritmo.\r\nEficiencia de los algoritmos.\r\nNotación asintótica.\r\nCálculo de tiempos de ejecución.\r\nCálculo de tiempos de ejecución de algoritmos recursivos\r\nsencillos.\r\n\r\n3. Listas\r\nTDA Lista.\r\nIteradores.\r\nImplementación de listas con arrays.\r\nPunteros.\r\nImplementación de listas mediante celdas simplemente\r\nenlazadas.\r\nIterador en listas simplemente enlazadas.\r\nImplementación de listas mediante celdas doblemente\r\nenlazadas.\r\nIterador en listas doblemente enlazadas.\r\nImplementación de listas basada en cursores.\r\nComparación de las implementaciones.\r\nListas en “Java Collections Framework”\r\n\r\n4. PilasPilas y Colas.\r\nTDA Pila.\r\nImplementación de Pilas basada en array.\r\nImplementación de Pilas basada en celdas enlazadas.\r\nTDA Cola.\r\nImplementación de Colas basada en array circular.\r\nImplementación de Colas basada en celdas enlazadas.\r\nComparación de las implementaciones.\r\nPilas y Colas en “Java Collections Framework”\r\n5. Árboles.\r\nDefiniciones.\r\nRecorrido de árboles ordenados.\r\nEjemplos de aplicaciones de árboles.\r\nTDA árbol general.\r\nImplementación de árboles.\r\nÁrboles en “Java Collections Framework”.\r\n6. Mapas.\r\nTDA mapa.\r\nTablas de Dispersión y funciones de dispersión.\r\nImplementación de mapas basada en tablas de dispersión\r\nabierta.\r\nImplementación de mapas basada en tablas de dispersión\r\ncerrada.\r\nEficiencia de mapas basados en tablas de dispersión\r\nÁrboles binarios de búsqueda.\r\nImplementación de mapas basada en ABB.\r\nÁrboles AVL (Adelson-Velskii y Landis).\r\nÁrboles Rojinegros.\r\nImplementaciones de mapas: comparación.\r\nMapas en JCF.\r\n7. TDAs ordenados.\r\nLlaves y relaciones de orden total.\r\nRelaciones de orden en Java.\r\nOrdenación de secuencias.\r\nTDA Secuencia Ordenada.\r\nImplementación de secuencias ordenadas basada en\r\nlistas.\r\nTDA Cola de Prioridad.\r\nImplementación de Colas de Prioridad basada en celdas\r\nenlazadas.\r\nImplementación de Colas de Prioridad basada en\r\nMontículo binario.\r\nColas de Prioridad: comparación de las implementaciones.\r\nSecuencias ordenadas y Colas de prioridad en JCF.\r\n7. Conjuntos\r\nTDA Conjunto.\r\nImplementación de Conjuntos basada en tablas de\r\ndispersión.\r\nTDA Conjunto Ordenado.\r\nImplementación de Conjuntos Ordenados basados en\r\nárbol binario de búsqueda (ABB).\r\nTDA Bolsa.\r\nTDA Secuencia sin repetición.\r\nResumen de conjuntos y listas.\r\nConjuntos, Bolsas y Secuencias en JFC', 79, NULL, NULL),
(15, 'Bloque Temático 1: Campo eléctrico y propiedades eléctricas de la materia\r\n1.1 Carga, Aislantes y Conductores. Ley de Coulomb. Campo Eléctrico. Campo Eléctrico de una Distribución de Carga.\r\nLíneas de Campo Eléctrico. Flujo Eléctrico. Ley de Gauss. Aplicaciones de la Ley de Gauss. Conductores en\r\nequilibrio electrostático.\r\nPotencial Eléctrico. Obtención del Campo a partir del Potencial. Potencial Eléctrico debido a distribuciones\r\ncontínuas de carga. Potencial Eléctrico debido a un conductor cargado. APLICACIONES de la Electrostática.\r\nCapacidad y Dieléctricos. Cálculo de la capacidad. Combinación de Condensadores. Energía almacenada en un\r\nCondensador cargado. Condensadores con Dieléctricos. Tipos de Condensadores.\r\n1.2 Resolución de problemas y cuestiones propuestos por el profesor al comenzar el desarrollo del bloque temático.\r\n1.3 PRÁCTICA 1. Instrumentación básica en un Laboratorio de Circuitos. Manejo de Multímetros y Fuentes de\r\nAlimentación.\r\nPRÁCTICA 2. Estudio de Elementos Resistivos.\r\n1.4 (2-4 alumnos según disponibilidad) Planteamiento de problemas de diseño, a resolver por grupos, para practicar\r\ncon el material presentado en el Bloque Temático.\r\n\r\n2 Bloque Temático 2: Electrocinética\r\n2.1 Corriente Eléctrica y Densidad de corriente. Velocidad de arrastre. Resistencia. Resistencia y Temperatura. Energía\r\nEléctrica y Potencia. Potencia en un calefactor eléctrico.\r\nCircuitos de Corriente Contínua. Equivalentes Thevenin y Norton. Transferencia de Potencia. Técnicas de Nudos y\r\nMallas.\r\n2.2 Resolución de problemas y cuestiones propuestos por el profesor al comenzar el desarrollo del bloque temático.\r\n2.3 PRÁCTICAS en LSC ( 3 Sesiones + 1 Sesión de Evaluación). Introducción a los Simuladores Circuitales (EWB).\r\nPRÁCTICA 3. Equivalentes Thevenin y Norton en el Laboratorio.\r\n2.4 (2-4 alumnos según disponibilidad) Planteamiento de problemas de diseño, a resolver por grupos, para practicar\r\ncon el material presentado en el Bloque Temático.\r\n\r\n3 Bloque Temático 3: Campo magnético e Inducción electromagnética. Ecuaciones de Maxwell\r\n3.1 Fuerza ejercida por un campo magnético. Fuerza sobre conductor de corriente. Movimiento de una partícula\r\ncargada. Fuerza de Lorentz. (APLICACIONES).\r\nFuentes Campo Magnético. Fuerza magnética entre dos conductores paralelos. Ley de Ampère. Campo magnético\r\nde un solenoide. Flujo magnético. Magnetismo de la Materia.\r\nInducción electromagnética y autoinducción. Corriente de inducción. Leyes de Faraday y de Lenz. Autoinducción e\r\ninductancia. Energía de un campo magnético asociado a un inductor.\r\nEcuaciones de Maxwell. Propagación de ondas electromagnéticas.\r\n3.2 Resolución de problemas y cuestiones propuestos por el profesor al comenzar el desarrollo del bloque temático.\r\n3.3 (2-4 alumnos según disponibilidad) Planteamiento de problemas de diseño, a resolver por grupos, para practicar\r\ncon el material presentado en el Bloque Temático.\r\n\r\nBloque Temático 4: Circuitos eléctricos en regimen transitorio\r\n4.1 Evolución temporal del estado de un circuito. Circuitos de primer y segundo orden. Ecuaciones de los elementos\r\nalmacenadores de energía. Análisis de circuitos de primer orden en regimen transitorio. Circuitos sin fuentes de\r\nexcitación y condiciones iniciales no nulas. Circuitos con fuentes de excitación y condiciones iniciales nulas.\r\nCircuitos con fuentes de excitación y condiciones iniciales no nulas.\r\n4.2 Resolución de problemas y cuestiones propuestos por el profesor al comenzar el desarrollo del bloque temático.\r\n4.3 \r\nPRÁCTICA 4. Manejo de Osciloscopios y Generadores de Funciones.\r\nPRÁCTICA 5. Estudio de Circuitos RC.\r\n4.4 (2-4 alumnos según disponibilidad) Planteamiento de problemas de diseño, a resolver por grupos, para practicar\r\ncon el material presentado en el Bloque Temático.\r\n\r\n5 Bloque Temático 5: Introducción a la electrónica\r\n5.1 Física Cuántica. Efecto Fotoeléctrico. Modelo cuántico de Bohr del átomo. Fotones y Ondas Electromagnéticas.\r\nFísica Atómica. Estructura del átomo. Transiciones atómicas.\r\nFísica de estado Sólido. Enlaces entre átomos y moléculas. Teoría de bandas en sólidos. Metales,\r\nSemiconductores y Aislantes. Clasificación de los Semiconductores. Concentración de portadores de carga.\r\nCorrientes en Semiconductores. Fabricación de Dispositivos.\r\nDispositivos Semiconductores I – Diodos. Diodo semiconductor - Unión pn. Diodo Rectificador. (APLICACIONES).\r\nDispositivos Semiconductores II – Transistores. Transistor bipolar BJT. Transistores de efecto campo FET. El\r\ntransistor JFET. El transistor MOSFET. Tecnologías bipolar y CMOS. Circuitos Lógicos. (APLICACIONES).\r\n5.2 Resolución de problemas y cuestiones propuestos por el profesor al comenzar el desarrollo del bloque temático.\r\n5.3 PRÁCTICA 6. Estudio de Diodos.\r\nPRÁCTICA 7. Estudio de Transistores.\r\n5.4 (2-4 alumnos según disponibilidad) Planteamiento de problemas de diseño, a resolver por grupos, para practicar\r\ncon el material presentado en el Bloque Temático.', 69, NULL, NULL),
(16, 'Presentación de la asignatura y familiarización con los\r\nrecursos bibliográficos.\r\nObjetivos de aprendizaje-enseñanza (B1/B2) y prueba de\r\ndiagnóstico.\r\nRepaso general de conceptos funcionales, léxicos,\r\ngramaticales, morfosintácticos y fonéticos.\r\nParts of a computer.\r\nFunctions of a PC.\r\nTypes of computer systems.\r\nGrammar: Passive Voice and Modal Verbs.\r\n\r\nProcessing.\r\nInput and output devices.\r\nGrammar: Relative Clauses and\r\nComparatives/Superlatives.\r\nOperating systems, user interfaces and computer\r\nsoftware.\r\nFormal and informal letters.\r\nGrammar: Infinitives vs Gerunds, countable and\r\nuncountable nouns.\r\nComputer networks.\r\nThe Internet.\r\nGrammar: Collocations and Conditionals.\r\nProgramming.\r\nGrammar: Reported Speech.', 70, NULL, NULL),
(17, 'Introducción a la Ingeniería de Computadores.\r\nRepresentación de la información en el computador.\r\n- Números naturales, enteros, reales\r\n- Caracteres\r\n- Desbordamiento\r\n\r\nArquitectura del procesador ARM.\r\n- Lenguaje ensamblador\r\n- Lenguaje máquina\r\n- Compilar, ensamblar, enlazar, ejecutar programas\r\nMicroarquitectura del procesador ARM.\r\n- Análisis de rendimiento\r\n- Procesador monociclo', 76, NULL, NULL),
(18, 'BLOQUE TEMÁTICO 1: Programación en un lenguaje\r\nimperativo estructurado de alto nivel\r\n\r\nPresentación de la asignatura\r\nIntroducción a los lenguajes de programación.\r\nLenguajes de alto nivel. El proceso de compilación. El\r\nciclo de vida del software. Concepto de algoritmo.\r\nEstructura general de un programa.\r\nFundamentos de programación en C.\r\nEstructura de un programa C. Entrada/salida de texto y de\r\ncaracteres. Entrada/salida de números. Funciones\r\nDatos y expresiones.\r\nTipos primitivos. Variables y constantes. Operadores y\r\nexpresiones. Conversión de tipos. Paso de parámetros.\r\nUso de funciones matemáticas.\r\nEstructuras algorítmicas.\r\nInstrucción condicional. Instrucción condicional múltiple.\r\nInstrucciones de bucle. Recursividad. Descripción de\r\nalgoritmos mediante pseudocódigo.\r\nDatos compuestos.\r\nArrays y tablas unidimensionales. Algoritmos de recorrido\r\ny búsqueda. Arrays multidimensionales. Tipos\r\nenumerados. Estructuras\r\n\r\nProgramación modular\r\nDiseño modular. Ámbito de las variables. Bibliotecas\r\n\r\nEstructuras de datos dinámicas\r\nDefinición. Declaración de punteros y asignación de\r\nmemoria. Reserva dinámica de memoria. Punteros y\r\nfunciones. Punteros y estructuras\r\nBLOQUE TEMÁTICO 2: Herramientas\r\nUso de sistemas operativos.\r\nSistemas operativos comunes. El sistema de ficheros. El\r\nintérprete de órdenes. Ejecución de programas. El gestor\r\ngráfico de ficheros. Uso de la memoria USB. Guiones\r\n(scripts).\r\nUso de un entorno integrado de desarrollo de programas.\r\nProceso de desarrollo de programas. El compilador y la\r\nejecución. Entorno integrado de desarrollo. La depuración.\r\nGeneración de documentos.\r\nUso de una hoja de cálculo.\r\nIntroducción. Creación de una hoja de cálculo. Fórmulas.\r\nFormatear las celdas. Gráficos. Hojas múltiples. Ordenar\r\ndatos. Configuración regional\r\nUso de una base de datos.\r\nIntroducción. Creación de una base de datos. Tablas de\r\ndatos. Relaciones entre datos. Consultas. Formularios.\r\nInformes', 71, NULL, NULL),
(19, 'INTRODUCCIÓN\r\nLógica en la informática, historia.\r\nConceptos fundamentales.\r\nLÓGICA PROPOSICIONAL\r\n1. Sintaxis y Semántica\r\n - Introducción: proposiciones y conectivas\r\n - Sintaxis: alfabeto y gramática\r\n - Semántica: Interpretación y evaluación, satisfabilidad,\r\nconsecuencia lógica, equivalencia\r\n2. Formas Normales\r\n - Formas normales conjuntiva y disyuntiva\r\n - Forma clausal, equisatisfabilidad, cláusulas de Horn,\r\nestrategias de borrado.\r\n3. Métodosde prueba:\r\n - Prueba por refutación\r\n - Tablas de verdad\r\n - Arboles semánticos\r\n - Resolución: regla de resolución (consistencia), prueba\r\npor resolución (consistencia, completud), algoritmo de\r\nresolución.\r\n - Deducción natural (*)\r\nLÓGICA DE PREDICADOS\r\n1. Sintaxis y Semántica:\r\n - Introducción: motivación, extensión de L0\r\n - Sintaxis: alfabeto, fórmulas, cuantificadores\r\n - Semántica: interpretación y evaluación, satisfabilidad,\r\nconsecuencia lógica, equivalencia.\r\n2. Formas Normales\r\n - Forma normal prenex: renombrado, definición y\r\nexistencia, transformación\r\n - Forma normal de Skolem: definición, algoritmo de\r\nSkolemización, equisatisfabilidad\r\n - Forma clausal: definición, transformación\r\n3. Teorema de Herbrand (*)\r\n - Semidecibilidad, universo de Herbrand\r\n - Base e interpretación de Herbrand, Teorema de\r\nHerbrand\r\n - El método de Gilmore y el método de Davis y Putnam\r\n4. Resolución\r\n - Sustituciones\r\n - Unificación, unificador más general\r\n - Resolución: regla de resolución, prueba por resolución\r\n - Estrategias y refinamientos de resolución (*)\r\nPROGRAMACIÓN LÓGICA\r\n - Introducción, resolución SLD\r\n - Sintaxis básica de Prolog, proceso de resolución\r\n - Aritmética, recursividad, recursividad de cola\r\n - Estructuras estáticas y dinámicas\r\n - Estructuras de control: el corte (*)', 85, NULL, NULL),
(20, 'COMBINATORIA\r\nAplicaciones y enumeración.\r\nPrincipios enumerativos.\r\nDistribuciones. Subconjuntos y particiones. Relaciones de\r\nequivalencia.\r\nSeries de potencias formales. Funciones generatrices:\r\nRecurrencias lineales.\r\n\r\nCUERPOS FINITOS Y CÓDIGOS CORRECTORES\r\nCuerpos finitos: existencia y construcción.\r\nCódigos lineales: construcción y corrección de errores.\r\nTEORÍA DE GRAFOS\r\nDefinición, representación e isomorfismos.\r\nCaminos y ciclos; grafos eulerianos y hamiltoniano.\r\nDistancias y caminos mínimos, conexión y conectividad.\r\nÁrboles generadores, algoritmos de ordenación.\r\nBúsqueda en anchura y profundidad.\r\nGrafos bipartitos y problemas de emparejamiento.\r\nColoraciones en grafos.', 80, NULL, NULL),
(21, '1. Introducción al lenguaje Java.\r\nCaracterísticas principales. Compilación para máquina\r\nvirtual. Estructura de un programa. Datos y expresiones.\r\nEstructuras algorítmicas. Datos compuestos.\r\nEntrada/salida básica. Concepto de clase y objeto.\r\nIntroducción a las clases y objetos en Java.\r\n\r\n2. Proceso de desarrollo de software.\r\nIngeniería del software. Procesos de desarrollo de\r\nsoftware. Modelado del software: UML. Introducción al\r\nanálisis de requisitos. Diseño orientado a objetos.\r\nProgramación orientada a objetos. Proceso de desarrollo\r\nusado en la asignatura\r\n3. Clases, referencias y objetos en Java.\r\nCreación e inicialización de objetos. Tipos primitivos,\r\nreferencias y objetos. Comparación de objetos. Recolector\r\nde basura. Métodos y campos de clase (o estáticos).\r\nAnidamiento de clases.\r\n4. Diseño Modular.\r\nConceptos de modularidad y abstracción. Modificadores\r\nde acceso básicos. Paquetes. Módulos genéricos.\r\nProgramación con módulos predefinidos. Documentación\r\ndel código fuente. Patrón Modelo-Vista-Controlador\r\n5.Herencia y Polimorfismo.\r\nHerencia. Clases abstractas. Polimorfismo. La clase\r\nObject\r\n6. Tratamiento de errores.\r\nTratamiento de errores por paso de parámetros.\r\nExcepciones Java: generación y propagación automática.\r\nBloques de tratamiento excepciones. La cláusula finally.\r\nPatrones de tratamiento de excepciones. Lanzar\r\nexcepciones. Creación de excepciones propias.\r\nExcepciones “comprobadas” y cláusula throws.\r\nNotificación de errores mediante excepciones. Usos\r\nincorrectos de las excepciones\r\n7. Entrada/salida con ficheros.\r\nConceptos básicos. Flujos de datos (streams). E/S de\r\ntexto. E/S de texto con formato. E/S binaria.\r\n8. Prueba de programas.\r\nVerificación y validación. Pruebas del software. Caja\r\nnegra. Herramienta JUnit.', 77, NULL, NULL),
(22, 'Tema 1: Rendimiento y consumo energético de\r\nComputadores.\r\n1.1 Definición de rendimiento de computadores.\r\n1.2 Métricas de rendimiento.\r\n1.3 Ecuación de prestaciones de CPU\r\n1.4 Programas de prueba o benchmarking.\r\n1.6 Consumo de potencia y Energía\r\n1.7 Conclusiones y resumen del tema.\r\n1.8 Ejercicios.\r\n\r\nTema 2: Jerarquía de memoria\r\n2.1. Concepto de Jerarquía de Memoria\r\n2.2 Conceptos Básicos.\r\n2.3. Memoria Cache.\r\n2.4 Rendimiento de la Memoria Cache\r\n2.5 Memoria Virtual.\r\n2.6 Conclusión y resumen del tema.\r\n2.7. Ejercicios.\r\n\r\nTema 3: El procesador: Camino de Datos y de Control.\r\n3.1 Definición de Conceptos Básicos.\r\n3.2 Formato del Repertorio de Instrucciones.\r\n3.3 Diseño del camino de datos.\r\n3.4 Unidad de Control del Procesador\r\n3.5 Funcionamiento del Procesador.\r\n3.6 Problemas de la implementación monociclo.\r\n3.7 Conclusiones y resumen del tema.\r\n3.8 Ejercicios\r\nTema 4: Procesadores Segmentados.\r\n4.1 Concepto de segmentación\r\n4.2 Procesamiento segmentado de instrucciones\r\n4.3 Segmentación del camino de datos en el procesador\r\nMIPS\r\n4.4 Control del procesador segmentado.\r\n4.5 Problemas de la segmentación.\r\n4.6 Riesgos de datos y anticipación.\r\n4.7 Riesgos de datos y bloqueos.\r\n4.8 Riesgos de control: saltos\r\n4.9 Paralelismo a nivel de instrucción.\r\n4.10 Conclusiones y resumen del tema.\r\n4.11 Ejercicios.\r\nTema 5. Arquitecturas Paralelas\r\n5.1 Introducción\r\n5.2 SIMD y Procesamiento Vectorial\r\n5.3 Ejecución Multihilo en Hardware\r\n5.4 Multiprocesadores de Memoria Compartida\r\n5.5 Multiprocesadores de Memoria Distribuida o Clusters\r\n5.6 Introduccion a las Unidades de Procesamiento Grático', 86, NULL, NULL),
(23, 'INTRODUCCIÓN A LOS SISTEMAS DE INFORMACIÓN:\r\n1. Conceptos de Sistema, Información y Sistema de\r\nInformación\r\n2. Los sistemas y su entorno\r\n3. Aplicación de las Tecnologías de Información a los\r\nSistemas de Información\r\n4. Concepto de Ingeniería del Software\r\nLOS SISTEMAS DE INFORMACIÓN EN LAS\r\nORGANIZACIONES:\r\n1.¿Qué es una organización ?\r\n2.Niveles de trabajo y planificación: Estrategia, Táctica,\r\nOperativa\r\n3.Tecnologías de la Información y Organizaciones\r\n4.Estructura de los Sistemas de Información en las\r\norganizaciones\r\n5.Automatización de los Sistemas de Información\r\nSISTEMAS DE INFORMACIÓN Y NECESIDADES DE\r\nNEGOCIO:\r\n1.Introducción a la Ingeniería de Requisitos\r\n2.Clasificación de requisitos\r\n3.Técnicas de recogida de información\r\n4.Técnicas de especificación de requisitos\r\nSEGURIDAD DE LOS SISTEMAS DE INFORMACIÓN:\r\n1.¿Qué es la protección y seguridad de la Información?\r\n2.Conceptos Fundamentales: Confidencialidad, Integridad,\r\nDisponibilidad\r\n3.Políticas de Seguridad\r\n4.Principios Fundamentales de la Seguridad Informática\r\nGESTIÓN DE RIESGOS ASOCIADOS A UN SISTEMA DE\r\nINFORMACIÓN:\r\n1. Valor de un Sistema de Información\r\n2. Vulnerabilidad, Amenazas y Contramedidas\r\n3. Planes de Contingencia\r\n4. Metodología MAGERIT\r\n5. ISO/IEC 27005:2011\r\n\r\nGESTIÓN DE LA INFORMACIÓN:\r\n1.Estructuración y conceptualización de la Información\r\n2.Tecnologías XML para gestionar información\r\n3.Sistemas de recuperación de la información\r\nSISTEMAS DE INFORMACIÓN WEB:\r\n1.Origen de Internet\r\n2.Principales servicios de Internet\r\n3.Creación de sistemas de información web', 81, NULL, NULL),
(24, 'Introducción:\r\n- Computador.\r\n- Circuitos Lógicos.\r\n- Información.\r\n- Codificación.\r\n- Señales Analógicas y Digitales.\r\n- Lenguajes.\r\n- Programas.\r\nNúmeros naturales:\r\n- Sistema de numeración y operaciones básicas.\r\n- Números enteros\r\nCircuitos lógicos combinacionales:\r\n- Introducción, definición.\r\n- Modelo matemático.\r\n- Puertas lógicas.\r\n- CLC grandes interconectando pequeños.\r\n- Análisis de CLC.\r\n- Álgebra de conmutación.\r\n- Análisis y síntesis usando el álgebra de conmutación.\r\n- Suma de minterms.\r\n- Decodificador.\r\n- ROM.\r\nCircuitos lógicos secuenciales:\r\n- Introducción, definiciones básicas.\r\n- Necesidades de memoria, biestable D\r\n- Necesidades de sincronización, reloj.\r\n- Modelo de Mealy, especificación.\r\n- Modelo de Moore, especificación.\r\n- Síntesis de circuitos secuenciales.\r\n- Análisis de circuitos secuenciales\r\nElementos básicos de un procesador de propósito\r\ngeneral:\r\n- Unidad de proceso general.\r\n- Añadiendo memoria de datos.\r\n- Del secuenciamiento explícito al implícito.\r\n- Codificación de las señales de control.\r\n- Formato de instrucciones.\r\n- Unidad de control general.', 72, NULL, NULL),
(25, 'Introducción al sistema Operativo: Concepto de Sistema\r\nOperativo. Hardware y su Tratamiento. Visión funcional del\r\nsistema operativo. Evolución y componentes.\r\nUso de intérprete de comandos y el sistema de desarrollo.\r\nUso del sistema de desarrollo del Lenguaje C\r\nGestión de Procesos\r\nCreación de procesos POSIX.\r\nPlanificación de procesos.\r\nSincronización y Comunicación de procesos\r\nSincronización POSIX: Señales.\r\nComunicación POSIX: Pipes y Fifos.\r\nProcesos ligeros (threads)\r\nCreación de procesos ligeros POSIX (pthreads)\r\nSincronización de procesos ligeros POSIX: Mutex y\r\nvariables de condición.\r\n\r\nGestión de la memoria: Paginación y Segmentación.\r\nGestión de la memoria Virtual.\r\nGestión de disco: Sistemas de ficheros y directorios.', 87, NULL, NULL),
(26, 'VALORES Y DERECHOS\r\nIgualdad entre hombres y mujeres. Interculturalidad.\r\nAccesibilidad universal para las personas con\r\ndiscapacidad. Voluntariado. Cooperación para desarrollo.\r\nDerechos humanos. Ciudadanía europea. Protección de\r\ndatos. Mediación y Gestión de Conflictos. Propiedad\r\nintelectual y plagio. Normativa y patentes.Consumo\r\nresponsable.\r\nPROFESIÓN INFORMÁTICA:\r\nPapel del Ingeniero Informatico en la Sociedad del futuro.\r\nConcepto de Profesión. Características de la actividad\r\nprofesional en informática. Roles sociales de los\r\ninformáticos. Relaciones con usuarios y clientes: gestión\r\nde expectativas. Modelos de negocio en Informática.\r\nColegios y asociaciones profesionales. Códigos éticos en\r\nInformática. Normativa y regulación de la informática en\r\nlos ámbitos nacional, europeo e internacional. Aspectos a\r\ndebate sobre temas de interés informático\r\nGESTIÓN DE PROYECTOS:\r\nConcepto de Proyecto. Ciclo de Vida de un Proyecto.\r\nIntroducción a los procesos de Gestión de Proyectos.\r\nGestión de la integración y el alcance. Gestión del tiempo.\r\nGestión de riesgos. Gestión de costes.\r\nCOMPETENCIAS Y HABILIDADES:\r\nBúsqueda y uso legítimo de la información. Introducción a\r\nla programación en ANSI C. Presentaciones eficaces.\r\nSoftware LIbre.', 82, NULL, NULL),
(27, 'Tema 1. Tendencias actuales y futuro de la tecnología de\r\nbases de datos:\r\nEvolución de las tecnologías de gestión de datos.\r\nRespuesta tecnológica para afrontar nuevos retos.\r\nHitos en la evolución de la gestión de datos. Tipologías de\r\nBases de datos. Temas de interés y organizaciones\r\nrelevantes en BD\r\nTema 2. Bases de datos activas\r\nRepaso del modelo relacional. Modelar el comportamiento\r\nactivo en Bases de Datos. SQL Programático.\r\nOtros aspectos de SQL Avanzado.\r\n\r\nTema 3. Base de datos Objeto-Relacionales\r\nDebilidades de los SGBD Relacionales. Tipos de SGBD\r\ncon Objetos. Aspectos objetuales en el estándar\r\nSQL:2003. Modelo ODMG. Diseño de BD objetuales con\r\nUML. Transformación a diseños físicos en tecnología\r\nobjeto-relacional. Comparación de los gestores orientados\r\na objetos y objeto-relacionales.\r\nTema 4. Gestión de datos semiestructurados\r\nModelado de datos semi-estructurados. XML y Schemas\r\nXML. Lenguajes: XQuery y XPath. XML, JSON y Bases de\r\nDatos, estándares SQL/XML y SQL/JSON.\r\nTema 5. BD distribuidas\r\nBDD: conceptos, ventajas y riesgos de su uso.\r\nClasificación. Consideraciones de diseño: fragmentación y\r\nreplicación. Componentes relevantes de un gestor\r\ndistribuido.Servidores replicados. BD móviles.\r\nComparativa de las diferentes estrategias de distribución.\r\n\r\nTema 6. BD NoSQL\r\nIntroducción a las BD NoSQL: Propiedades, Tipos,\r\nVentajas e Inconvenientes. Taxonomía de soluciones.\r\nEjemplo de modelos e implementaciones NoSQL\r\nTema 7. Otras tipos de Bases de Datos.\r\nBD espaciales, geográficas, temporales, multimedia, etc', 102, NULL, NULL),
(28, 'CALIDAD DE LOS SISTEMAS DE INFORMACIÓN.\r\nDefiniciones de calidad y concepto de calidad en uso.\r\nIntroducción a los modelos y normas de calidad más\r\nrelevantes (ISO 9001, ISO 25000, CMMI). Seguridad de la\r\nTI en la organización y tecnología. Marco normativo y\r\nlegislativo (LOPD, ENS).\r\n\r\nCALIDAD DE PRODUCTO. Calidad de producto interna y\r\nexterna. Modelos, evaluación y medición (ISO 25000).\r\nHerramientas de análisis de la calidad de producto.\r\n\r\nCALIDAD DE PROCESO. Evaluación y mejora de\r\nprocesos (CMMI). Auditoría.', 103, NULL, NULL),
(29, 'BLOQUE I: INTRODUCCION A LA ASIGNATURA Y\r\nMODELADO DE FORMAS. Organizacion de la asignatura.\r\nBibliografia básica. Otras fuentes de informacion (revistas,\r\nlibros, CDs, sitios web). Software y hardware para\r\nanimación por computador y creación de videojuegos.\r\nEjemplos relevantes y ámbito de aplicación. Graficos por\r\nComputador Avanzados. Modelado de formas por\r\ncomputador (curvas, superficies, modelos poligonales,\r\nCSG). Práctica I: Algoritmos básicos de modelado gráfico.\r\nPráctica II: modelado de formas.\r\nBLOQUE II: ANIMACION POR COMPUTADOR.\r\nAnimación y efectos especiales en el cine. Fundamentos\r\nde la animación. Estudio de casos. Fundamentos de la\r\nanimación por computador. Estudio de casos. Humanos\r\nvirtuales. Modelado y animación del movimiento de\r\nactores sintéticos. Animación del comportamiento.\r\nInteligencia artificial. Modelos cognitivos. Práctica III:\r\nModelado de actores sintéticos. Práctica IV: Animación del\r\nmovimiento de actores sintéticos.\r\nBLOQUE III: DISEÑO Y CREACION DE VIDEOJUEGOS.\r\nHistoria de los videojuegos. Tipos de videojuegos. Etapas\r\nen el diseño, creacion e implementación de un videojuego.\r\nDesarrollo de un proyecto. Pipeline gráfico de un\r\nvideojuego. Producción digital. Práctica V: Creación de un\r\nentorno virtual 3D. Práctica VI: Diseño de un videojuego.', 104, NULL, NULL),
(30, 'Conceptos Algorítmicos Fundamentales. Análisis de\r\neficiencia. Caso peor y caso medio. Notación de Landau.\r\nDivide y vencerás. Análisis de algoritmos recursivos:\r\nBinary Search. Quicksort, MergeSort, QuickSetect.\r\nAnálisis de Estructuras de Datos: Árboles Binarios de\r\nBúsqueda. Árboles Balanceados. Heaps. Tries. Análisis\r\nde algoritmos voraces y estructuras asociadas: Dijkstra,\r\nPrim, Kruskal. Particiones. Hashing. Montículos de\r\nFibonacci.\r\nProgramación Dinámica. Principio de optimalidad.\r\nMemoización. Distancia de edición. Árboles binarios de\r\nbúsqueda óptimos. Algoritmo de Floyd-Warshall para\r\ncaminos mínimos. Problema del viajante de comercio.\r\nProblema de la mochila.\r\n\r\nAlgoritmos probabilistas. Clases de complejidad BPP y\r\nZPP. Análisis probabilístico. Ejemplos: test de primalidad\r\nde Rabin, skip lists, hashing universal.\r\nProgramación Lineal. Flujo en Redes. Juegos de suma\r\ncero. Evaluación de Circuitos. Método del Simplex:\r\nalgoritmo detallado y análisis de eficiencia.\r\nAlgoritmos aproximados y heurísticos. Tipos de\r\naproximación, relativa y absoluta. Cubrimiento de vértices.\r\ncubrimiento de vértices métrico. Cubrimiento de conjuntos.\r\nMochila. Búsquedas Locales, Heurísticas y\r\nMetaheurísticas', 105, NULL, NULL),
(31, 'Tema 1 - Principios Fundamentales del Diseño Software:\r\nModularidad. Principios GRASP. Principios SOLID. Diseño\r\npor Contrato. Programación Orientada a Aspectos.\r\nTema 2 - Patrones de Diseño Software.\r\nConcepto de Patrón, Antipatrón y Refactorización.\r\nPatrones GoF. Otros patrones no GoF. Inyección de\r\nDependencias. Expresiones Lambda\r\nTema 3 - Diseño e Implementación de Arquitecturas\r\nSoftware\r\nRevisión del Concepto de Arquitectura. Vistas\r\nArquitectónicas. Lenguajes de Descripción Arquitectónica.\r\nEvaluación de Arquitecturas Software\r\nTema 4 - Patrones Arquitectónicos Para Arquitecturas\r\nEmpresariales\r\nArquitecturas en Capas. Arquitectura Cliente-Servidor.\r\nDistribución de Capas en Arquitecturas Empresariales.\r\nPatrones para la Capa de Negocio. Patrones para la Capa\r\nde Persistencia. Patrones para la Capa de Servicio.\r\nPatrones para la Capa de Presentación. Arquitecturas\r\nBasadas en Microservicios.\r\nTema 5 - Medición de las Propiedades Fundamentales de\r\nun Diseño Software.\r\nEstabilidad del diseño. Métricas Orientadas a Objetos.\r\nMétricas Orientadas a Asuntos.', 106, NULL, NULL),
(32, 'Tema 1. Introducción a las tecnologías de acceso\r\n- Medios cableados e inalámbricos.\r\n- Topologías de red .\r\n- Redes broadcast y redes punto a punto.\r\n- Servicios: tipos y requisitos.\r\nTema 2. Tecnologías de acceso inalámbricas\r\n- Espectro radioeléctrico ISM.\r\n- La familia IEEE 802.11.\r\n- Estandarización.\r\n- Rendimiento de TCP/IP sobre IEEE 802.11.\r\n- Operaciones de gestión 802.11.\r\n- Mecanismos de seguridad en 802.11.\r\nTema 3. Redes de acceso celular\r\n- Arquitectura del sistema GSM.\r\n- El sistema GPRS.\r\n- Evolución de los sistemas 2G a 3G.\r\n- Estandarización: 3GPP.\r\n- El sistema UMTS.\r\n- Evolución a sistemas 4G: HSDPA y HSUPA.\r\n\r\nTema 4. Redes de paquetes X.25.\r\n- Circuito Virtual: permanente (CVP) y conmutado (CVC).\r\n- Canal lógico.\r\n- Nivel físico X.21.\r\n- Nivel de enlace LAPB\r\n- Nivel de red X.25.\r\n- Parámetros X.3.\r\n- Recomendaciones X.28, X.29 y X.32\r\nTema 5. Evolución de las redes troncales\r\n- Evolución en la capa lógica: Frame Relay, ATM, IP\r\n- Evolución en la capa física: SDH/SONET, MPLS, WDM,\r\nMetroEthernet\r\n\r\nTema 6. Gestión de red en sistemas OSI\r\n- Introducción y conceptos generales\r\n- Submodelos de una arquitectura de gestión de red\r\n- Areas funcionales de la gestión\r\n- Gestión integrada y distribuida\r\nTema 7. Protocolos de gestión: SNMP y RMON\r\n- Arquitectura SNMP\r\n- Sintaxis ASN.1: SMIv1\r\n- Arbol de registro INTERNET\r\n- MIB-II(RFC 1213)\r\n- Formato de los mensajes del protocolo SNMPv1\r\n- Mejoras Protocolo SNMPv2 y v3\r\n- Gestión RMON y MIB RMON', 107, NULL, NULL),
(33, 'Bloque I. Introducción a los Gráficos por Computador.\r\nBibliografía Básica. Aplicaciones y usos de los Gráficos\r\npor Computador. Ejemplos relevantes y ámbito de\r\naplicación. Historia de los Gráficos por Computador.\r\nFuentes de información: revistas, libros, CDs/DVDs, sitios\r\nweb. Hardware y Software para Gráficos por Computador.\r\nSoftware gratuito y comercial. Organización y enfoque del\r\ncurso. Algoritmos básicos para Gráficos por Computador.\r\nPractica I: Algoritmos de línea.\r\n\r\nBloque II. Algoritmos básicos para Gráficos 2D.\r\nTransformaciones 2D. Matrices de transformación.\r\nFractales: concepto, algoritmos de generación de fractales\r\n(recursivos, funciones complejas, atractores de sistemas\r\ndinámicos, sistemas de funciones iteradas, etc). IFS.\r\nConcepto. Algoritmos para IFS (determinista, probabilista,\r\nchaos game, óptimo). Aplicaciones de los IFS. L-sistemas:\r\nconcepto, métodos y aplicaciones. Simulación de\r\nfenómenos naturales. Aplicaciones a casos reales.\r\nPractica II: Transformaciones 2D. Practica III: Fractales.\r\nPractica IV: L-sistemas\r\nBloque III. Transformaciones 3D. Proyecciones y\r\nperspectivas. Algoritmos de líneas y superficies ocultas.\r\nAlgoritmo del pintor, Z-buffer. Diseño gráfico. Sistemas de\r\nrepresentación. Renderizado. Fundamentos del\r\nrenderizado. Modelos de polígonos: alambres, de caras y\r\nvértices, planos, etc.. Modelos básicos de iluminación.\r\nIluminación ambiente, difusa, especular. Efectos de\r\ndistancia. Algoritmos básicos. Ray tracing. Radiosidad.\r\nTexturizado. Practica V: operaciones 3D.\r\n\r\nBloque IV. Realidad virtual y aumentada. Concepto,\r\ntécnicas y dispositivos. Hardware y software para realidad\r\nvirtual. Usos y Aplicaciones. Practica VI: realidad virtual.', 108, NULL, NULL),
(34, 'Tema 1. Gestión de la Configuración.\r\nIntroducción. Terminologías. Procesos de Gestión de la\r\nConfiguración. Integración y Entrega Continua. Gestión\r\nAvanzada de Versiones con Git.\r\n\r\nTema 2. Metodologías Ágiles\r\nMetodologías Rígidas y Ágiles. Manifiesto Ágil. Principios\r\nLean. Técnicas Básicas de las Metodologías Ágiles:\r\nHistorias de Usuario, Desarrollo Dirigido Por Pruebas,\r\nPlanning Poker, Programación por Pares. Scrum. Otras\r\nMetodologías Ágiles: XP, Kanban.\r\nPrincipales Tipos de Metodologías Ágiles. Scrum. Lean.\r\n\r\nTema 3. Modelado de Procesos Software\r\nConcepto de Proceso Sw. Modeladado de Procesos\r\nSoftware: SPEM.\r\n\r\nTema 4. Procesos de Desarrollos Estandarizados.\r\nMétrica v3. Procesos de Mantenimiento en Métrica v3.\r\nTema 5. Metodologías de Desarrollo Innovadoras\r\nDesarrollo Software Dirigido por Modelos. Desarrollo de\r\nSoftware Basado en Componentes. Líneas de Productos\r\nSoftware.', 109, NULL, NULL),
(35, 'Presentación de la asignatura. Noción de modelo de\r\ncálculo. Propósito específico y propósito general. Tutorial\r\nLatex.\r\n\r\nFunciones recursivas.\r\nMáquinas de registros.\r\nMáquinas Turing.\r\nEnumerabilidad recursiva.\r\nDecidibilidad e indecidibilidad.\r\nModelos de recursos acotados.\r\nLa NP-completitud y su relevancia.', 110, NULL, NULL),
(36, 'Introducción. Descripción de aplicaciones con grandes\r\ndemandas de cálculo y almacenamiento. Explotación del\r\nparalelismo en computadores a diferentes niveles.\r\nModelos de programación paralela. Modelos de sistemas\r\nde memoria común y paso de mensajes.\r\nMultirpocesadores de gran escala. Paso de mensajes.\r\nSistemas orientados a HPC. Clusters orientados a\r\nDataCenters y Cloud Computing. Modelos de la\r\narquitectura. Programación con MPI. Casos de estudio.\r\nSubsistema de Interconexión. Redes on-chip, de sistema,\r\nde almacenamiento y LANs de alto rendimiento. Redes\r\ncentralizadas y distribuidas. Topología, encaminamiento,\r\ncontrol de flujo y conmutación. Casos de estudio.\r\nMultiprocesadores de baja y media escala. Paralelismo a\r\nnivel de thread. Coherencia. Multiprocesadores simétricos\r\ny CC-NUMA. Snooping y directorios. Sincronización.\r\nConsistencia.\r\nParalelismo a nivel de dato. Computadores Vectoriales.\r\nExtensiones SIMD en procesadores actuales. GPUs de\r\npropósito general. Modelos de programación.', 111, NULL, NULL),
(37, 'MÉTODOS DE PRUEBA:\r\n- Repaso de Verificación y Validación de Software.\r\n- Pruebas basadas en modelos (Model-based Testing)\r\n- Repaso de Pruebas Unitarias.\r\n- Pruebas de Integración.\r\n- Pruebas de Sistema.\r\n- Pruebas de Aceptación.\r\n- Diseño de planes de prueba\r\nCONSTRUCCION AUTOMATIZADA DE SISTEMAS\r\nSOFTWARE\r\n- Conceptos avanzados y herramientas de construcción\r\nautomatizada de sistemas software\r\n- Integración Continua\r\n\r\nTECNOLOGIA DE COMPONENTES Y CONSTRUCCIÓN\r\nDE APLICACIONES EMPRESARIALES\r\n- Características básicas de las aplicaciones\r\nempresariales.\r\n- Evolución de plataformas middleware para aplicaciones\r\nempresariales: Servidores de aplicación.\r\n- Desarrollo de software basado en componentes\r\n- Concepto de componente y contenedor.\r\nSOPORTE JAVA PARA CONSTRUCCION DE\r\nAPLICACIONES EMPRESARIALES BASADAS EN\r\nCOMPONENTES\r\n- Introducción a la plataforma Java EE\r\n- Capa de negocio en Java EE: Componentes EJB\r\n- Capa de persistencia en Java EE: Java Persistence API\r\n- Capa de presentación en Java EE: Java Server Faces\r\n- Gestión de Seguridad y otros aspectos no funcionales en\r\naplicaciones Java EE', 112, NULL, NULL),
(38, 'Representación del Conocimiento basada en Lógica:\r\n- Repaso de la Lógica de Predicados;\r\n- Inferencia basada en reglas;\r\n- Elicitación y aprendizaje de modelos;\r\n- Limitaciones y posibles extensiones o soluciones;\r\n- Representaciones estructuradas: redes semánticas,\r\nmarcos y ontologías.\r\nRepresentación del Conocimiento basada en Modelos\r\nGráficos Probabilistas:\r\n- Repaso de Probabilidad\r\n- Modelos: Redes bayesianas, modelos de Markov\r\n- Inferencia\r\n- Elicitación y aprendizaje de aprendizaje de modelos\r\n- Ventajas y limitaciones', 113, NULL, NULL),
(39, 'Conceptos Básicos:\r\nArquitectura de sistemas embebidos\r\nDiseño basado en plataforma\r\nDesarrollo de HW embebido:\r\nDiseño con lenguajes de descripción hardware\r\nDescripción estructural, de flujo de datos y de\r\ncomportamiento\r\nModelo, entorno y mecanismo de simulación\r\nSíntesis combinacional y secuencial: Retemporización\r\nParticionado y jerarquía\r\nArquitectura HW\r\nDesarrollo del SW embebido:\r\nCompilación cruzada\r\nIntegración del SW embebido\r\nSistemas operativos embebidos\r\nDrivers y mecanismos de interrupción\r\nDepuración del SW embebido\r\nIntegración HW/SW:\r\nInterfaces HW\r\nPrototipado en FPGA\r\nProyecto Final', 114, NULL, NULL),
(40, 'Tema 1. Introducción. Justificación y objetivos de diseño\r\nen un sistema operativo.\r\n\r\nTema 2.- Virtualización.\r\nParte I Procesos\r\n- La abstracción: los procesos y su API\r\n- Mecanismo: Ejecución directa limitada\r\n- Planificación: Introducción\r\n- Planificación: Colas multinivel con feedback\r\n- Planificación: Share proporcional\r\n- Planificación de sistemas multiprocesador\r\nParte II: Memoria\r\n- La abstracción: el espacio de direcciones y la API de\r\nmemoria\r\n- Traducción de direcciones\r\n- Segmentación\r\n- Gestión del espacio libre en libc.\r\n- TLB\r\n- Paginación: Tablas pequeñas\r\n- Mas allá de la memoria física: Mecanismos\r\n- - Mas allá de la memoria física: Políticas\r\nTema 3.- Concurrencia. Concurrencia y threads, threads\r\nAPI, Locks, variables condicionales, semáforos, bugs de\r\nconcurrencia, concurrencia basadas en eventos\r\nTema 4.- Persistencia\r\n- Dispositivos de I/O\r\n- Discos duros mecánicos y de estado sólido\r\n- Ficheros y directorios\r\n- Sistema de ficheros e implementación\r\n- FFS y consistencia\r\n- Sistemas de ficheros con journaling,\r\n- Sistemas de ficheros basados en Log\r\n- integridad de datos y seguridad\r\n\r\nPrácticas\r\nLab 1 - Introducción al entorno de trabajo\r\n- C, vagrant y git\r\nLab 2 - Introducción a xv6: llamadas al sistema\r\n- Implementación de una llamada al sistema en xv6\r\nLab 3 - Planificación.\r\n- Implementar una política de planificación MLFQ en xv6\r\nLab 4 - Memoria\r\n- Implementar soporte para paginas compartidas en xv6\r\nLab 5 - Concurrencia\r\n- Implementar soporte para threads en xv6\r\nLab 6 - Sistemas de ficheros\r\n- Implementar una herramienta tipo fsck para xv6\r\nEvaluación\r\nParcial 1:\r\n- Teoria: Memoria y procesos\r\n- Práctica: Entorno, llamadas al sistema y planificación\r\nParcial 2:\r\n- Teoria: Concurrencia\r\n- Práctica: Memoria y threads\r\nParcial 3:\r\n- Teoria: Sistemas de ficheros\r\n- Práctica: Sistemas de ficheros', 115, NULL, NULL),
(41, 'Introducción a la Administración de Sistemas Informáticos.\r\nIntegración de servicion globales para entornos de gestión I\r\nIntegración de servicion globales para entornos de gestión II.\r\nHerramientas de monitorización y configuración', 116, NULL, NULL),
(42, 'BLOQUE I: PROGRAMACIÓN PARALELA\r\nTema 1: Introducción a la Programación Paralela\r\nTema 2: Análisis de rendimiento de programas paralelos\r\nTema 3. Programación en Memoria Compartida: OpenMP\r\nTema 4: Optimizar el Rendimiento de Programas OpenMP\r\nPrácticas de OpenMP\r\nBLOQUE II: PROGRAMACIÓN CONCURRENTE Y DE\r\nTIEMPO REAL\r\n1.- Concurrencia\r\n- Introducción a la programación concurrente\r\n- Sincronización\r\n- Concurrencia y sincronización en lenguajes de\r\nprogramación y sistemas operativos\r\n- Patrones y métodos de expresión de la concurrencia\r\nBLOQUE II: PROGRAMACIÓN CONCURRENTE Y DE\r\nTIEMPO REAL\r\n2.- Tiempo real\r\n- Introducción a los sistemas de tiempo real: políticas de\r\nplanificación\r\n- Modelo de sistema de tiempo real: eventos periódicos\r\n- Análisis de planificabilidad\r\n- Protocolos de sincronización', 92, NULL, NULL),
(43, 'Introducción. Modelos\r\npredictivos y descriptivos. Modelos supervisados y no\r\nsupervisados. Tutorial Python\r\nRegresión lineal y polinomial. Algoritmo del gradiente\r\ndescendente y el método analítico. Regularización\r\nClasificación. Regresión logística (algoritmo del gradiente\r\ndescendente) con regularización. SVM.\r\nSegmentación. Métodos jerárquicos vs. particionales,\r\nexcusivos vs. difusos. El algoritmo K-means. El algoritmo EM.\r\nReglas de asociación. Conjuntos frecuentes. Clausuras.\r\nRedundancia en reglas de asociación.\r\nRedes neuronales.\r\nPredicción por vecindario. Metapredictores. Bagging.\r\nBoosting. AdaBoost.\r\nReducción de dimensionalidad.\r\nSelección y evaluación del modelo.\r\nInferencia gramatical\r\nWeka y Knime.', 93, NULL, NULL),
(44, 'Fundamentos del Diseño de Computadores\r\n Qué papel juega la Arquitectura de Computadores en el\r\ndesarrollo de los computadores- Tendencias y\r\ndependencias\r\n Métricas de evaluación: parámetros y fundamentos\r\ntecnológicos\r\n Coste\r\n Rendimiento\r\n Consumo energético o Fiabilidad\r\nEl repertorio de Instrucciones\r\nLa frontera hardware / software\r\nDefinición y virtudes a perseguir por el repertorio de\r\ninstrucciones: perspectiva histórica\r\nInfluencia de los compiladores y la implementación\r\nFilosofía RISC y CISC\r\n\r\nJerarquía de Memoria: Memorias Cache\r\nModelo de las 3C en los fallos de cache.\r\nPrefetch software y prefetch hardware\r\nPolíticas de escritura\r\nEvaluación y métricas de efectividad en las caches\r\nEfecto de la cache en el rendimiento del procesador\r\nILP 1: Segmentación\r\nDependencias de datos\r\nDependencias de control\r\nPredicción dinámica de saltos o Ejecución especulativa\r\nILP2: Ejecución Superescalar\r\nLimites de la segmentación\r\nEjecución superescalar\r\nImplicaciones Multi-Issue\r\nWide-Issue con planificación estática: VLIW\r\nPlanificación Software\r\nILP 3: Planificación Dinámica\r\nAlgoritmos de planificación dinámica:\r\nExcepciones precisas con planificación dinámica y ROB\r\nEjecución especulativa y ROB\r\nDependencias en instrucciones de acceso a memoria\r\nParalelismo a nivel de thread. Introducción a los\r\nproblemas de coherencia y consistencia. Paralelismo a\r\nnivel de datos.\r\n', 94, NULL, NULL);
INSERT INTO `tb_contenido` (`id`, `contenido`, `id_asignaturas`, `creditos`, `id_outcom`) VALUES
(45, 'BLOQUE TEMÁTICO 1: Análisis y diseño de sistemas de información\r\n\r\n Introducción Ciclo de vida de los sistemas de información. Fases del\r\ndiseño de Bases de Datos: diseño conceptual, lógico y físico. Técnicas, modelos de datos y herramientas.\r\nTema 2. Diseño conceptual\r\nAnálisis de requisitos. Modelo Entidad-Relación extendido\r\n(EER). Lenguaje de Modelado Unificado (UML) y\r\ndefinición de restricciones en OCL. Diferencias EER vs UML\r\nTema 3. Diseño lógico\r\nReglas de transformación EER a modelo relacional.\r\nReglas de transformación UML a modelo relacional.\r\n\r\nTema 4. Diseño físico\r\nOrganización de ficheros. Definición de tablas y\r\nrestricciones. Definición de vistas. Definición de índices.\r\nTransacciones y el nivel de concurrencia. Estrategias para\r\nel acceso eficiente a los datos. Refactorizado.\r\nBLOQUE TEMÁTICO 2:\r\nConstrucción de aplicaciones con acceso a BD\r\n\r\nTema 5. Arquitectura de las aplicaciones empresariales\r\nIntroducción. Revisión histórica. Arquitectura N-capas.\r\nCapa de persistencia. Frameworks de persistencia\r\n\r\nTema 6. Seguridad en Sistemas de Información\r\nIntroducción. Amenazas. Elementos a asegurar.\r\nMecanismos que ofrecen los gestores. Seguridad en\r\naplicaciones de acceso a datos\r\nTema 7. Pruebas.\r\nTipos de pruebas: sobre elementos estáticos y dinámicos,\r\npruebas de rendimiento, de recuperación y de seguridad.\r\nDiseño y generación de casos de prueba. Técnicas y herramientas\r\nBLOQUE TEMÁTICO 3:\r\n Análisis y diseño de almacenes de datos\r\nTema 8. Introducción a los Almacenes de Datos\r\nSistemas de Información orientados a la toma de\r\ndecisiones: motivación, definición y características.\r\nDiferencias e interrelación con los sistemas\r\ntransaccionales (OLTP). Arquitectura y herramientas.\r\nTema 9. Diseño multidimensional\r\nCiclo de vida de un sistema BI/DW. Diseño\r\nmultidimensional. Soporte para BD dimensionales en SQL:2016', 95, NULL, NULL),
(46, 'Tema 1. Procesos de Ingeniería de Requisitos.\r\nImportancia de la Ingeniería de Requisitos. Objetivos de la\r\nIngeniería de Requisitos. Terminología Básica. Fases de la\r\nIngeniería de Requisitos. Integración de la Ingeniería de\r\nRequisitos en los Procesos de Desarrollo.\r\nTema 2. Técnicas de Captura de Requisitos.\r\nIntroducción. Objetivos de la captura de requisitos.\r\nTécnicas de Soporte para la Captura de Requisitos:\r\nTormenta de Ideas, Método KJ, Prototipado, Mapas\r\nmentales, Listas de comprobación, 100$ Test. Estructura\r\ndel Contexto de un Sistema Sw. Estrategias para la\r\nCaptura de Requisitos: Entrevistas, Talleres, Grupos de\r\nInterés, Observación, Cuestionarios, Lectura en\r\nPerspectiva. Tipos de stakeholders. Listas dentro/fuera.\r\nIdentificación y Selección de las Fuentes de Requisitos.\r\nDiseño y Ejecución de Planes para la Captura de\r\nRequisitos. Priorización de Fuentes y Requisitos.\r\nTema 3. Modelado y Especificación de Requisitos\r\nFuncionales.\r\nIntroducción. Niveles de Abstracción para Requisitos.\r\nObjetivos. Modelado de Objetivos con GRL/KAOS.\r\nEscenarios. Escenarios positivos, Alternativos y\r\nExcepcionales. Especificación de Escenarios mediante\r\nCasos de Uso. Especificación de Requisitos Funcionales\r\nmediante Historias de Usuario. Modelos Orientados a la Solución.\r\n\r\nTema 4. Modelado y Especificación de Requisitos No\r\nFuncionales.\r\nIntroducción. Sistemas Sociotécnicos. Catálogos de\r\nRequisitos No Funcionales: ISO 25010. Modelado y\r\nEspecificación de Requisitos No Funcionales mediante\r\nDiagramas de Objetivos. Correlaciones. Análisis del Grado\r\nde Satisfacción de los Requisitos No Funcionales.\r\nIngeniería de Requisitos de Seguridad. Casos de Mal Uso.\r\nTema 5. Introducción al Modelado y Especificación de\r\nProcesos de Negocio en Organizaciones\r\nIntroducción. Concepto de Flujo de Trabajo y Proceso de\r\nNegocio. Modelado de Procesos de Negocio Básicos en BPMN 2.0.', 96, NULL, NULL),
(47, 'GESTIÓN DE LA CONFIGURACIÓN DE SISTEMAS\r\nSOFTWARE\r\n- Terminología y conceptos básicos.\r\n- Problemas y áreas de la Gestión de la Configuración.\r\n- Herramientas de control de versiones.\r\n- Herramientas de construcción automatizada de software.\r\nCONSTRUCCIÓN DE SISTEMAS SOFTWARE\r\n- Fase de contrucción dentro del ciclo de vida del software.\r\n- Conceptos y principios básicos de la construcción de\r\nsoftware.\r\n- Generación automática de código.\r\n- Entornos de desarrollo de software.\r\n- Patrones para la implementación de máquinas de estado.\r\n\r\nPRUEBA DE SISTEMAS SOFTWARE\r\n- Verificación y Validación de sistemas software.\r\n- Fase de pruebas dentro del ciclo de vida del software.\r\n- Niveles de prueba: unitarias, integración, sistema.\r\n- Técnicas de diseño de casos de prueba para pruebas\r\nunitarias: caja negra y caja blanca.\r\n- Frameworks para la implementación de pruebas\r\nunitarias.\r\nMANTENIMIENTO DE SISTEMAS SOFTWARE\r\n- Fase de mantenimiento dentro del ciclo de vida del\r\nsoftware.\r\n- Tipos de mantenimiento.\r\n- Gestión del mantenimiento.\r\n- Técnicas de soporte al mantenimiento.\r\n- Herramientas de gestión del cambio.\r\nCALIDAD DE SISTEMAS Y PROCESOS SOFTWARE\r\n- Concepto y factores de calidad del software.\r\n- Calidad de producto y calidad del proceso\r\nGESTIÓN DE PROYECTOS\r\n- Introducción a la gestión de proyectos software.\r\n- Integración y alcance.\r\n- Gestión de costes.\r\n- Gestión de tiempo.\r\n- Gestión de riesgos.', 97, NULL, NULL),
(48, 'BLOQUE TEMÁTICO 1: Conceptos Teoricos\r\nLenguajes Formales, autómatas, sistemas de transición\r\nAutomátas inderterministas y su equivalencia con autómatas deterministas\r\nMinimización de autómatas\r\nEquivalencia entre autómatas finitos y gramáticas regulares\r\n\r\nSistemas lineales de ecuaciones\r\nEquivalencia entre gramáticas regulares y expresiones regulares\r\nTransformación de expresiones regulares a autómatas finitos\r\n\r\nEl lema de bombeo y autómata cociente\r\nGramáticas libres de contexto\r\nEliminación de símbolos inútiles\r\nEl problema de la palabra en lenguajes libres de contexto\r\nLema de bombeo en gramáticas libres de contexto\r\nAutómatas con pila y lenguajes libres de contexto\r\nBLOQUE TEMÁTICO 2: Herramientas\r\nIntroducción a Python', 98, NULL, NULL),
(49, 'BLOQUE I: INTRODUCCIÓN Y FUNDAMENTOS:\r\nLa Interacción Persona-Ordenador.\r\nEl Factor Humano.\r\nDispositivos para la Interacción.\r\nBLOQUE II. LA INTERACCIÓN:\r\nMetáforas.\r\nEstilos de Interacción.\r\nParadigmas de Interacción\r\nBLOQUE III. INGENIERÍA DE LA USABILIDAD:\r\nReglas de Diseño.\r\nPrincipios.\r\nEstándares.\r\nGuías de Estilo.\r\nHerramientas Software de soporte.\r\nBLOQUE IV. ÁREAS DE APLICACIÓN:\r\nAyuda y Documentación.\r\nInternacionalización', 89, NULL, NULL),
(50, 'FUNDAMENTOS DE INGENIERÍA DEL SOFTWARE.\r\nCuerpo de conocimientos SWEBOK. Áreas principales.\r\nModelado en Ingeniería Software. Lenguajes de\r\nmodelado: UML. Métodos de desarrollo. Ciclos de vida del\r\nSoftware. Procesos del ciclo de vida.\r\nREQUISITOS DE SISTEMAS SOFTWARE.\r\nConcepto y características. Etapas del proceso de\r\nespecificación de requisitos software: captura, análisis,\r\nespecificación y validación.\r\nModelado de la fase de requisitos mediante diagramas de\r\ncasos de uso, plantillas y diagramas de clases de dominio.\r\nRequisitos no funcionales\r\nARQUITECTURA DE SISTEMAS SOFTWARE.\r\nArquitectura Software. Concepto de Componente.\r\nArquitecturas en 3 Capas.\r\nModelado de la arquitectura mediante diagramas de\r\ncomponentes y despliegue.\r\nModelado de escenarios arquitectónicos mediante\r\ndiagramas de secuencia\r\nDISEÑO DE SISTEMAS SOFTWARE.\r\nDescripción estructural. Patrones de Diseño. Modelado\r\nmediante diagramas de clases.\r\nComportamiento procedural y modelado mediante\r\ndiagramas de actividad.\r\nComportamiento reactivo y modelado mediante diagramas\r\nde máquinas de estado', 88, NULL, NULL),
(51, 'Tema 1: Introducción\r\n- Introducción a los conceptos de redes de\r\ncomputadores: comunicación, red de computadores,\r\nprotocolo.\r\n- Arquitectura de protocolos de comunicaciones:\r\nmodelos OSI y TCP/IP.\r\nTema 2: Nivel físico\r\n- Conceptos de señal. Caracterización temporal y\r\nfrecuencial.\r\n- Medios de transmisión\r\n- Instalaciones de cableado estructurado\r\n- Características de la propagación de señales y\r\nerrores de transmisión\r\n- codificación y modulación de señales\r\n- Transmisión de datos analógicos\r\n\r\nTema 3: Nivel de enlace y control de acceso al medio\r\n- Transmisión asíncrona y síncrona.\r\n- Control de flujo: Parada y espera, ventana deslizante.\r\n- Detección de errores y control de errores basado en\r\nARQ.\r\n- Multiplexación en frecuencia, tiempo síncrona y\r\ntiempo estadística.\r\n- Ejemplos de aplicación: HDLC, cable-módems y\r\nmódems de ADSL\r\nTema 4: Redes de área local cableadas\r\n- Jerarquía de protocolos IEEE 802\r\n- Subcapas LLC y MAC\r\n- CSMA/CD en Ethernet\r\n- Funcionamiento de hubs y switches\r\n- Evolución de las redes de área local\r\n\r\nTema 5: Redes inalámbricas\r\n- Tipos de redes inalámbricas y protocolos empleados\r\n- 802.11: Modalidades y modos de funcionamiento.\r\n- Seguridad en redes inalámbricas', 90, NULL, NULL),
(52, 'Introducción: Definición de IA, breve historia y\r\naplicaciones; concepto de agente inteligente.\r\nBúsqueda para la resolución de problemas:\r\n- Introducción a los sistemas de búsqueda\r\n- Búsqueda informada\r\n- Búsquedas locales y aproximadas\r\n- Problemas de satisfacción de restricciones\r\n- Búsqueda con adversarios\r\nRepresentación del conocimiento y razonamiento:\r\n- Agentes lógicos\r\n- Inferencia\r\nAplicaciones y extensiones:\r\n- Introducción a la planificación de acciones clásica\r\n- Introducción al aprendizaje', 91, NULL, NULL),
(53, 'Tema 1: Conmutación de circuitos y de paquetes\r\n- Conmutación de circuitos, modo datagrama y modo\r\ncircuito virtual\r\n- Estructura de un encaminador\r\n- Repaso de tecnologías en redes WAN\r\nTema 2: Protocolos de red\r\n- Direccionamiento IP. Redes y subredes, CIDR y\r\nVLSM. Otros aspectos del protocolo.\r\n- Algoritmos de búsqueda de rutas en grafos.\r\n- Protocolos de encaminamiento dinámicos: Tipos e\r\nimplementaciones. Ejemplos de RIP y OSPF.\r\n- Protocolo IP. Formato de trama, mecanismo de\r\nforwarding, fragmentación.\r\n- Otros protocolos asociados: ICMP, ARP, DHCP,\r\nDNS, IGMP.\r\n- Mecanismos de traducción de direcciones.\r\nSobrecarga de puertos.\r\n- IPv6. Direcciones, formatos de trama, diferencias\r\nfundamentales con IPv4.\r\nTema 3: Protocolos de transporte\r\n- Programación con sockets\r\n- TCP. Formatos de segmento. Máquina de estados,\r\nestablecimiento y liberación de la sesión. Control de flujo y\r\nde errores. Control de congestión.\r\n- UDP. Cabeceras y ejemplos de uso\r\nTema 4: Nivel de aplicación: Ejemplo de HTTP.\r\n- Identificación de recursos.\r\n- Formato y tipo de mensajes.\r\n- Autenticación, cookies, seguridad y proxies.\r\n- Aspectos de rendimiento del protocolo.\r\n\r\nTema 5: Sistemas distribuidos\r\n- Introducción a la computación distribuida. Modelos de\r\ndistribución.\r\n- Comunicación, gestión y sincronización de procesos\r\n- Modelo de distribución cliente/servidor: RMI\r\n- Modelos de distribución basado en eventos: DDS', 99, NULL, NULL),
(54, 'Tema 1. Introducción: Sistemas de tiempo real estricto y\r\nlaxo. Políticas de planificación en estáticas y dinámicas.\r\nAnálisis de planificabilidad de sistemas con tareas\r\nperiódicas\r\nTema 2. Extensiones de la teoría básica\r\nTema 3. Recursos compartidos. Protocolos de\r\nsincronización. Implementación de protocolos de\r\nsincronización. Análisis de planificabilidad.\r\nTema 4. Eventos aperiódicos. Programación de tareas\r\naperiódicas. Análisis de planificabilidad de sistemas con tareas periódicas y aperiódicas\r\nTema 5. Soporte en sistemas operativos y en Lenguaje ADA\r\nTema 6. Aspectos avanzados.\r\nTema 7. Planificación EDF\r\nTema 8. Caso de estudio.\r\nBLOQUE 2: PRÁCTICAS DE LABORATORIO\r\nProgramación en Lenguaje ADA\r\nHerramienta de modelado y análisis MAST\r\nPráctica 1: Planificación, monitorización, control y análisis de tareas periódicas.\r\n\r\nPráctica 2: Tareas con recursos compartidos.\r\nPráctica 3: Tareas aperiódicas.\r\nPráctica 4: Planificación de tareas con EDF.', 100, NULL, NULL),
(55, '1. INTRODUCCIÓN / INSTALACIÓN\r\n1.1. Descripción de la figura del Administrador de\r\nsistemas:\r\n - Tareas y responabilidades, código ético.\r\n - Conocimientos necesarios.\r\n - Fuentes de información y documentación.\r\n1.2. El sistema operativo Linux:\r\n - Origen, evolución y uso básico.\r\n - Principales características del sistema.\r\n1.3. Instalación de un sistema Linux:\r\n - Requerimientos Hardware y preparación del sistema.\r\n - Instalación de Linux Debian\r\n - Instalación de software mediante repositorios de\r\npaquetes o código fuente.\r\n1.4. Línea de comandos (shell)\r\n - Comandos Básicos\r\n - Comandos Avanzados\r\n - Introducción a shell scripting\r\n2. ADMINISTRACIÓN BÁSICA\r\n2.1. Arranque y parada del sistema:\r\n - El proceso de arranque y el cargador de sistema.\r\n - Servicios de arranque.\r\n - Apagado y posibles problemas\r\n - Resolución de problemas de Arranque/Parada.\r\n2.2. Gestión de Software:\r\n - Filosofía Linux en gestión de software.\r\n - Instalación por código fuente, paquetes y repositorios\r\nsoftware.\r\n2.3. Gestión de usuarios y grupos:\r\n - Creación y eliminación de usuarios.\r\n - Principios de seguridad (passwords).\r\n - Posibles puntos débiles.\r\n2.4. El sistema de ficheros:\r\n - Conceptos básicos relativos a dispositivos.\r\n - Gestión avanzada de almacenamiento: LVM y RAID.\r\n2.5. Gestión de recursos:\r\n - gestión de CPU, memoria y disco.\r\n2.6. Monitorización de eventos:\r\n - herramienta rsyslog\r\n2.7. Introducción al kernel de Unix\r\n - Sintonización dinámica\r\n - Gestión de Módulos del kernel\r\n - Compilación del kernel\r\n\r\n3. ADMINISTRACIÓN DE RED\r\n3.1. Conceptos básicos:\r\n - El protocolo TCP/IP\r\n - Subneting, routing\r\n - Puertos TCP/UDP\r\n3.2. Configuración del interfaz de red:\r\n - Manejo y configuración de interfaces de red\r\n - Asignación de IP, routing, resolución de nombres', 101, NULL, NULL),
(56, 'FUNDAMENTOS DE GESTIÓN DE PROYECTOS.\r\n- Cuerpo de Conocimientos de la Gestión de Proyectos\r\n(PMBOK).\r\n- Conceptos básicos. Grupos de Procesos. Áreas de\r\nTrabajo. Interacciones entre procesos.\r\n\r\nGESTIÓN DE LA INTEGRACIÓN.\r\n- Inicio del proyecto. Acta de constitución.\r\n- Plan de gestión del proyecto.\r\n- Dirigir y gestionar la ejecución del proyecto.\r\n- Seguimiento y control del trabajo y los cambios.\r\n- Cierre del proyecto\r\nGESTIÓN DEL ALCANCE.\r\n- Gestión del alcance. Requisitos. Definición del alcance.\r\n- Creación de la EDT. Descomposición estructurada de\r\nproyectos software.\r\n- Verificación y control del alcance\r\nGESTIÓN DEL TIEMPO.\r\n- Definición de actividades, secuenciación, estimación de\r\nla duración y recursos.\r\n- Desarrollo del calendario: Métodos PERT y CPMCD.\r\n\r\nGESTIÓN DE COSTES.\r\n- Planificar la gestión de costes, técnicas de estimación y\r\nconfección del presupuesto.\r\n- Seguimiento y control de costes. Técnica de valor ganado (EVM).\r\n\r\nGESTIÓN DE RIESGOS.\r\n- Planificar la gestión de riesgos.\r\n- Identificación, análisis cualitativo y cuantitativo y\r\nplanificación de respuestas.\r\n- Supervisión y control de riesgos', 118, NULL, NULL),
(57, 'Introducción a la informática industrial.\r\nConceptos generales.\r\nEl papel de la informática industrial en los procesos\r\nindustriales.\r\nSistemas de adquisición de datos y control.\r\nFunciones de los sistemas de adquisición de datos y\r\ndistribución de señales.\r\nElementos de un sistema de adquisición de datos.\r\nElementos de un sistema de distribución de señales.\r\nTarjetas de adquisición de datos.\r\nProgramación.\r\nAutómatas programables.\r\nConceptos generales. Arquitectura.\r\nInterfases de entrada y salida.\r\nProgramación de autómatas.\r\nDiseño de sistemas de control con autómatas\r\nprogramables.\r\nComunicaciones\r\nSistemas SCADA.\r\nConceptos generales.\r\nElementos de un sistema SCADA.\r\nInterfases de usuario. Aplicaciones. Estándares.\r\nDiseño de sistemas SCADA.\r\n', 119, NULL, NULL),
(58, 'BLOQUE 1: Conceptos teoricos\r\nIntroducción a la asignatura y repaso de lenguajes formales\r\nAnalizadores Ascendentes\r\nTipos de analizadores ascendentes: LR(0), SLR, LR(1) y LALR\r\n\r\nGramáticas de atributos\r\nChequeo de tipos y generación de código\r\nOptimización de código y registros\r\nBLOQUE 2: Herramientas\r\nPython\r\nGeneradores de analizadores léxicos\r\nGeneradores de analizadores sintáticos\r\nGeneración de código\r\nTraducción a código máquina', 120, NULL, NULL),
(59, 'Introducción al procesamiento de lenguaje natural.\r\nProcesamiento básico de texto\r\nModelos lingüísticos y correctores ortográficos\r\nClasificación de textos y análisis de sentimientos.\r\nRecuperación de la información.\r\nAnálisis léxico.\r\nAnálisis sintáctico\r\nAnálisis semántico', 121, NULL, NULL),
(60, 'TECNOLOGÍAS DE SOPORTE A LOS SERVICIOS WEB\r\n- Repaso de HTTP, URI, XML y JSON.\r\n- Servidores web y servidores de aplicación.\r\nINTRODUCCIÓN A LA ORIENTACIÓN A SERVICIOS\r\n- Origen de la orientación a servicios.\r\n- Terminología y conceptos básicos.\r\n- Paradigma SOC y arquitectura SOA.\r\n- Ingeniería del software basada en servicios\r\nTECNOLOGÍA DE SERVICIOS SOAP (BIG WEB\r\nSERVICES)\r\n- Definición de Servicio Web (SOAP).\r\n- Estándares básicos:\r\n - Estándar para descripción de servicios (WSDL).\r\n - Estándar para comunicación de servicios (SOAP).\r\n - Estándar para descubrimiento y publicación de servicios (UUID)\r\n- Seguridad en Servicios Web SOAP (WS-Security).\r\n- Diseño e implementación de servicios web SOAP.\r\n- Diseño e implementación de clientes de servicios web SOAP.\r\n- Soporte tecnológico para el desarrollo de servicios web\r\nSOAP en Java: Apache Axis2 y JAX-WS.\r\nTECNOLOGÍA DE SERVICIOS REST\r\n- Estilo Arquitectónico REST.\r\n- Arquitecturas orientadas a recursos.\r\n- Seguridad en servicios REST.\r\n- Diseño e implementación de servicios RESTful.\r\n- Diseño e implementación de clientes de servicios RESTful.\r\n- Soporte tecnológico para el desarrollo de servicios REST en Java: JAX-RS\r\n\r\nCOORDINACIÓN Y COMPOSICIÓN DE SERVICIOS\r\n- Procesos de negocio basados en composición de\r\nservicios.\r\n- Composición de servicios: Lenguaje BPEL.\r\n- Coordinación de servicios.', 123, NULL, NULL),
(61, 'ESTRATEGIA DE LOS SISTEMAS DE INFORMACIÓN EN LAS ORGANIZACIONES\r\nGestión de la Información para la toma de decisiones en la organización.\r\n\r\nEtapas de diseño de un Sistema de Información empresarial.\r\nTecnologías aplicables en los Sistemas de Información.\r\nCasos prácticos\r\nSISTEMAS DE GESTION INTEGRADOS\r\nDefinición de Sistemas de Gestión Integrados e integridad de datos y procesos.\r\nHerramientas de Gestión Integral de la información empresarial (ERP): casos prácticos.\r\nHerramientas de Gestión de Relación con Clientes (CRM)\r\nSoftware como servicio y cloud computing en los sistemas de gestión empresarial\r\n\r\nSistemas de gestión de información y Business Intelligence\r\nGENERACIÓN DE MODELOS DE NEGOCIO EN INTERNET\r\n\r\nTipos de modelos de negocio. Empresa y e-Administración\r\nHerramientas para la gestión de negocios en Internet\r\nMetodología de presentación de ideas de negocio.\r\nPRESENCIA WEB CORPORATIVA\r\nImagen corporativa y presencia Web de la empresa\r\nGestores de contenidos y su implantación en la empresa.\r\nEmpresa y Web 2.0/Social Business', 124, NULL, NULL),
(62, 'Bloque 1: Conceptos Generales\r\n1.1 Introducción\r\n1.2 Herramientas criptográficas\r\n1.3 Autenticación\r\n1.4 Internet Authentication Applications\r\n1.5 Control de Acceso\r\nBloque 2: Seguridad en Software\r\n2.1 Código malintencionado\r\n2.2 Denegación de Servicio\r\n2.3 Desbordamiento de Pila\r\n2.4 Programación segura\r\n2.5 Protección de Sistema Operativo\r\n2.6 Estrategias de protección multinivel\r\n2.7 Seguridad en Bases de Datos\r\n\r\nBloque 3: Seguridad en Red\r\n3.1 Protocolos de Seguridad en Internet\r\n3.2 Detección de Intrusión\r\n3.3 Prevención de intrusion y cortafuegos\r\n3.4 Auditoría de Seguridad\r\n3.5 Seguridad en redes inalámbricas', 125, NULL, NULL),
(399, 'Límite y continuidad', 134, NULL, NULL),
(400, 'Derivación', 134, NULL, NULL),
(401, ' Aplicaciones de las derivadas', 134, NULL, NULL),
(402, 'Ecuaciones diferenciales', 134, NULL, NULL),
(403, 'Integral definida', 134, NULL, NULL),
(404, 'Ecuaciones diferenciales2', 134, NULL, NULL),
(405, ' Funciones en varias variables.', 134, NULL, NULL),
(406, 'Polinomios y funciones', 136, NULL, NULL),
(407, 'Matrices', 136, NULL, NULL),
(408, 'Espacios vectoriales y euclídeos', 136, NULL, NULL),
(409, ' Ecuaciones lineales y sistemas de ecuaciones', 136, NULL, NULL),
(410, ' Inecuaciones', 136, NULL, NULL),
(411, 'Diagonalización y\r\nformas canónicas, cónicas y cuadráticas', 136, NULL, NULL),
(412, 'Ecuaciones diferenciales', 136, NULL, NULL),
(413, 'Concepto de conjunto: operaciones y leyes del álgebra de conjuntos', 139, NULL, NULL),
(414, ' Relaciones binarias', 139, NULL, NULL),
(415, ' Inversa de una relación y la composición entre dos relaciones\r\ndadas', 139, NULL, NULL),
(416, 'Principios básicos de la combinatoria y variaciones', 139, NULL, NULL),
(417, 'Conceptos básicos de lógica proposicional, operadores y tablas de verdad', 140, NULL, NULL),
(418, ' Relaciones de equivalencia e implicación lógica, leyes y sus propiedades', 140, NULL, NULL),
(419, 'Circuitos lógicos a partir de sus características fundamentales, diseño, representación y simplificación', 140, NULL, NULL),
(420, 'Conceptos fundamentales de la Estadística', 142, NULL, NULL),
(421, 'Probabilidades', 142, NULL, NULL),
(422, ' Variables aleatorias y distribuciones de probabilidad', 142, NULL, NULL),
(423, ' Distribuciones discretas de probabilidad', 142, NULL, NULL),
(424, ' Distribuciones contínuas de probabilidad', 142, NULL, NULL),
(425, 'Distribuciones muestrales', 142, NULL, NULL),
(426, 'Muestreo estadístico.', 142, NULL, NULL),
(427, 'Análisis numérico', 145, NULL, NULL),
(428, ' Teoría de errores', 145, NULL, NULL),
(429, ' Ecuaciones de Una variable', 145, NULL, NULL),
(430, ' Solución de sistemas de ecuaciones lineales', 145, NULL, NULL),
(431, 'Riesgo en las carteras de renta fij', 145, NULL, NULL),
(432, ' Solución numérica de ecuaciones en derivadas parciales', 145, NULL, NULL),
(433, ' Regresión y aproximación', 145, NULL, NULL),
(434, 'Cinemática y dinámica de la partícula y del sólido rígido.', 135, NULL, NULL),
(435, ' Leyes de conservación.', 135, NULL, NULL),
(436, 'Oscilaciones y ondas. Fluidos.', 135, NULL, NULL),
(437, ' Termodinámica', 135, NULL, NULL),
(438, ' Electrostática.', 135, NULL, NULL),
(439, 'Electricidad y Magnetismo.', 135, NULL, NULL),
(440, 'Inducción electromagnética.', 135, NULL, NULL),
(441, 'Interferencia, difracción y polarización de la luz', 135, NULL, NULL),
(442, 'Radiación Térmica.', 135, NULL, NULL),
(443, ' Efecto Fotoeléctrico', 135, NULL, NULL),
(444, 'Semiconductores.', 135, NULL, NULL),
(445, 'Riesgo en las carteras de renta fija.', 132, NULL, NULL),
(446, 'estructura de un programa y tipos de datos elementales', 132, NULL, NULL),
(447, 'entrada/salida', 132, NULL, NULL),
(448, 'concepto de programación estructurada', 132, NULL, NULL),
(449, 'estructuras de control, funciones y procedimientos', 132, NULL, NULL),
(450, 'recursividad', 132, NULL, NULL),
(451, 'estructuras', 132, NULL, NULL),
(452, 'tipos básicos y estructurado', 132, NULL, NULL),
(453, 'ficheros', 132, NULL, NULL),
(454, 'Introducción a la programación orientada a objetos', 137, NULL, NULL),
(455, 'clases', 137, NULL, NULL),
(456, 'métodos', 137, NULL, NULL),
(457, 'herencia', 137, NULL, NULL),
(458, 'Introducción a la programación dirigida por eventos', 137, NULL, NULL),
(459, 'propagación, manejo y gestión de eventos', 137, NULL, NULL),
(460, 'excepciones', 137, NULL, NULL),
(461, 'Archivos secuenciales', 144, NULL, NULL),
(462, 'Arreglos unidimensionales.', 144, NULL, NULL),
(463, 'Arreglos multidimensionales.', 144, NULL, NULL),
(464, 'Listas enlazadas simples', 144, NULL, NULL),
(465, 'Listas enlazadas particulares', 144, NULL, NULL),
(466, 'Pilas y colas', 144, NULL, NULL),
(467, 'Árboles binarios', 144, NULL, NULL),
(468, 'Árboles Grafos', 144, NULL, NULL),
(469, 'Lenguajes, gramáticas y autómatas', 146, NULL, NULL),
(470, 'Grafos dirigidos', 144, NULL, NULL),
(471, 'Fundamentos del análisis léxico', 146, NULL, NULL),
(472, 'Fundamentos del análisis sintáctico', 146, NULL, NULL),
(473, 'Análisis sintáctico descendente', 146, NULL, NULL),
(474, 'Análisis sintáctico ascendente', 146, NULL, NULL),
(475, 'Análisis semántico', 146, NULL, NULL),
(476, 'Las tablas de símbolos', 146, NULL, NULL),
(477, 'Organización de la memoria en tiempo de ejecución', 146, NULL, NULL),
(478, 'Generación de código', 146, NULL, NULL),
(479, 'Validación, documentación y entorno de desarrollo', 146, NULL, NULL),
(480, 'Intérpretes', 146, NULL, NULL),
(481, 'Diseño de lenguajes de programación', 146, NULL, NULL),
(482, 'Caminos mínimos en grafos ponderados', 149, NULL, NULL),
(483, 'Flujo máximo en redes de transporte', 149, NULL, NULL),
(484, 'Flujos de coste mínimo', 149, NULL, NULL),
(485, 'Emparejamientos en grafos', 149, NULL, NULL),
(486, 'Algoritmos geométricos en el plano', 149, NULL, NULL),
(487, 'Introducción a la intratabilidad computacional', 149, NULL, NULL),
(488, 'Desarrollo de aplicaciones para la Web', 160, NULL, NULL),
(489, 'Técnicas de modelado para la Web', 160, NULL, NULL),
(490, 'Modelado de la interacción y la navegación', 160, NULL, NULL),
(491, 'Arquitecturas para sistemas basados en web', 160, NULL, NULL),
(492, 'Servidores web', 160, NULL, NULL),
(493, 'Sistemas de gestión de contenidos', 160, NULL, NULL),
(494, 'Dominios de aplicación Web', 160, NULL, NULL),
(495, 'Familia de Tecnologías XML', 164, NULL, NULL),
(496, ' XML NameSpace, XSL, DTD, XPath y XQuery', 164, NULL, NULL),
(497, 'AJAX, Frameworks y Toolkits', 164, NULL, NULL),
(498, 'Prototype, Dojo, GWT.', 164, NULL, NULL),
(499, 'J2EE.', 164, NULL, NULL),
(500, 'Servidores de aplicaciones', 164, NULL, NULL),
(501, ' Instalación y administración de un servidor Tomcat y JBoss. Servlets, JSP', 164, NULL, NULL),
(502, 'Enterprise Java Beans', 164, NULL, NULL),
(503, ' Modelo de persistencia JPA', 164, NULL, NULL),
(504, 'Tecnologías de conectividad a Bases de Datos', 164, NULL, NULL),
(505, ' JDBC, ADO.NET', 164, NULL, NULL),
(506, ' Arquitecturas orientadas a servicios', 164, NULL, NULL),
(507, 'SOA', 164, NULL, NULL),
(508, ' Servicios Web', 164, NULL, NULL),
(509, 'Hardware:', 138, NULL, NULL),
(510, 'conceptos, rendimiento del equipo, memoria y almacenamiento', 138, NULL, NULL),
(511, ' dispositivos de entrada y salida', 138, NULL, NULL),
(512, 'Conceptos de Software', 138, NULL, NULL),
(513, 'Redes de información:', 138, NULL, NULL),
(514, 'tipos de redes', 138, NULL, NULL),
(515, 'transferencia de datos', 138, NULL, NULL),
(516, 'Uso de las TIC en la vida cotidiana', 138, NULL, NULL),
(517, 'mundo electrónico', 138, NULL, NULL),
(518, 'comunicación', 138, NULL, NULL),
(519, 'comunidades virtuales', 138, NULL, NULL),
(520, 'salud, medio ambiente', 138, NULL, NULL),
(521, 'Seguridad:', 138, NULL, NULL),
(522, 'identidad/autenticación, seguridad de datos, virus', 138, NULL, NULL),
(523, 'Legislación: derechos de autor, protección de datos', 138, NULL, NULL),
(524, 'Software e Ingeniería', 133, NULL, NULL),
(525, 'Naturaleza del Software', 133, NULL, NULL),
(526, 'Proceso del Software', 133, NULL, NULL),
(527, 'Modelos de Proceso', 133, NULL, NULL),
(528, 'Desarrollo Ágil', 133, NULL, NULL),
(529, 'Conceptos de Calidad', 133, NULL, NULL),
(530, 'Ficheros', 143, NULL, NULL),
(531, 'Conceptos básicos de bases de datos', 143, NULL, NULL),
(532, 'Sistemas de gestión de bases de datos', 143, NULL, NULL),
(533, 'Modelos de datos', 143, NULL, NULL),
(534, 'Modelo relaciona', 143, NULL, NULL),
(535, 'Estándar SQL.', 143, NULL, NULL),
(536, 'Programación y uso de bases de datos', 143, NULL, NULL),
(537, 'Acceso programático a bases de datos', 143, NULL, NULL),
(538, 'Introducción a otros modelos de datos ', 143, NULL, NULL),
(539, 'Requisitos de Datos', 148, NULL, NULL),
(540, 'Diseño conceptual', 148, NULL, NULL),
(541, 'Diseño lógico', 148, NULL, NULL),
(542, 'Diseño Físico', 148, NULL, NULL),
(543, 'Seguridad en BBDD', 148, NULL, NULL),
(544, 'Diseño avanzado de datos', 148, NULL, NULL),
(545, 'Objeto-relacional', 148, NULL, NULL),
(546, 'XML-semiestructurado', 148, NULL, NULL),
(547, 'multidimensional.\r\n', 148, NULL, NULL),
(548, 'Introducción a la ingeniería del software', 151, NULL, NULL),
(549, 'Modelos del ciclo de vida del software', 151, NULL, NULL),
(550, 'Notaciones de modelado de software', 151, NULL, NULL),
(551, ' Equipos de trabajo', 151, NULL, NULL),
(552, 'Análisis de necesidades y estudio de viabilidad', 151, NULL, NULL),
(553, 'Planeación y Estimación', 151, NULL, NULL),
(554, 'Requisitos del software', 155, NULL, NULL),
(555, 'Análisis clásico y orientado a objetos', 155, NULL, NULL),
(556, 'Diseño de software', 155, NULL, NULL),
(557, 'Implementación', 155, NULL, NULL),
(558, 'Mantenimiento', 155, NULL, NULL),
(559, 'Planificación estratégica', 156, NULL, NULL),
(560, 'Planificación de proyectos software', 156, NULL, NULL),
(561, 'Estimación', 156, NULL, NULL),
(562, 'Seguimiento y control de proyectos software', 156, NULL, NULL),
(563, 'Gestión de riesgos', 156, NULL, NULL),
(564, 'Herramientas de gestión de proyectos\r\n', 156, NULL, NULL),
(565, 'Introducción al aprendizaje máquina', 161, NULL, NULL),
(566, 'Introducción a la inteligencia computacional', 161, NULL, NULL),
(567, 'Introducción a la computación evolutiva', 161, NULL, NULL),
(568, 'Inteligencia de enjambre', 161, NULL, NULL),
(569, 'Sistemas inmunes artificiales', 161, NULL, NULL),
(570, 'Sistemas neuro-difusos.', 161, NULL, NULL),
(571, 'El ejercicio de la ingeniería', 162, NULL, NULL),
(572, 'El proceso proyectual', 162, NULL, NULL),
(573, 'Planificación y organización de proyectos', 162, NULL, NULL),
(574, 'Contratación, supervisión y puesta en servicio del proyecto', 162, NULL, NULL),
(575, 'Conceptos básicos y organización funcional del ordenado', 131, NULL, NULL),
(576, 'Representación de la información a nivel de máquina', 131, NULL, NULL),
(577, 'Sistemas digitales combinacionales', 131, NULL, NULL),
(578, 'Sistemas digitales secuenciales', 131, NULL, NULL),
(579, ' Organización y diseño del procesador', 131, NULL, NULL),
(580, 'Descripción de un ordenador en el nivel de lenguaje máquina y ensamblador', 131, NULL, NULL),
(581, 'Entradas y salidas:', 131, NULL, NULL),
(582, 'buses', 131, NULL, NULL),
(583, 'Clasificación de los ordenadores', 131, NULL, NULL),
(584, 'mejora de prestaciones.', 131, NULL, NULL),
(585, 'Características, historia, funciones y estructura de los sistemas operativos', 147, NULL, NULL),
(586, 'procesos', 147, NULL, NULL),
(587, 'planificación', 147, NULL, NULL),
(588, 'concurrencia', 147, NULL, NULL),
(589, 'memoria', 147, NULL, NULL),
(590, 'entrada y salida', 147, NULL, NULL),
(591, 'sistemas de ficheros.', 147, NULL, NULL),
(592, 'Entorno de programación del sistema', 147, NULL, NULL),
(593, 'Seguridad', 147, NULL, NULL),
(594, 'Nociones de administración de sistemas', 147, NULL, NULL),
(595, 'Sistemas operativos móviles y de tiempo real', 147, NULL, NULL),
(596, 'Conceptos básicos de redes de computadores', 141, NULL, NULL),
(597, 'arquitecturas de protocolos', 141, NULL, NULL),
(598, 'Medios de transmisión', 141, NULL, NULL),
(599, 'Comunicación de datos', 141, NULL, NULL),
(600, 'Fundamentos de tecnologías de red', 141, NULL, NULL),
(601, 'Fundamentos de capa de red en TCP/IP', 141, NULL, NULL),
(602, 'direccionamiento y encaminamiento básico', 141, NULL, NULL),
(603, 'Aplicaciones básicas en red', 141, NULL, NULL),
(604, 'Tecnologías de red', 141, NULL, NULL),
(605, 'Interconexión de dispositivos de red', 141, NULL, NULL),
(606, 'Protocolos de encaminamiento en Internet', 141, NULL, NULL),
(607, 'Conceptos básicos de la gestión de redes', 141, NULL, NULL),
(608, 'Conceptos básicos de seguridad en redes.', 141, NULL, NULL),
(609, 'Conceptos fundamentales de sistemas distribuidos.', 152, NULL, NULL),
(610, 'Comunicación de procesos y grupos de procesos distribuidos', 152, NULL, NULL),
(611, 'Objetos distribuidos e invocación remota', 152, NULL, NULL),
(612, 'Sincronización distribuida.', 152, NULL, NULL),
(613, 'Transacciones y control de concurrencia.', 152, NULL, NULL),
(614, 'Programación de aplicaciones distribuidas', 152, NULL, NULL),
(615, 'Fundamentos de la Seguridad Informática', 157, NULL, NULL),
(616, 'Criptosistemas de Clave Secreta', 157, NULL, NULL),
(617, 'Criptosistemas de Cifrado en Flujo', 157, NULL, NULL),
(618, 'Criptosistemas de Clave Pública.', 157, NULL, NULL),
(619, 'Funciones de Autenticación e Integridad', 157, NULL, NULL),
(620, 'Firma Digital y Certificados Digitales', 157, NULL, NULL),
(621, 'Aplicaciones Seguras.', 157, NULL, NULL),
(622, 'Ética profesional.', 153, NULL, NULL),
(623, 'La ética en los sistemas de información.', 153, NULL, NULL),
(624, 'La ética en la administración de los recursos informáticos.', 153, NULL, NULL),
(625, 'Delitos informáticos.', 153, NULL, NULL),
(626, 'El derecho informático.', 153, NULL, NULL),
(627, 'Proceso de creación de empresas.', 165, NULL, NULL),
(628, 'Ventajas e inconvenientes de ser un emprendedor', 165, NULL, NULL),
(629, 'El Plan de Negocio', 165, NULL, NULL),
(630, 'Alternativas', 165, NULL, NULL),
(631, 'Obligaciones legales en la constitución de la empresa.', 165, NULL, NULL),
(632, 'Fundamentos de la Contabilidad.', 169, NULL, NULL),
(633, 'Descripción del proceso contable', 169, NULL, NULL),
(634, 'El resultado del período: componentes', 169, NULL, NULL),
(635, 'Planificación y normalización contables', 169, NULL, NULL),
(636, 'Órganos reguladores.', 169, NULL, NULL),
(637, 'Diferencias con la contabilidad de gestión.', 169, NULL, NULL),
(638, 'Importancia de la contabilidad para la toma de decisiones.', 169, NULL, NULL),
(639, 'Conceptos básicos de la contabilidad de costes.', 173, NULL, NULL),
(640, 'El coste de los recursos.', 173, NULL, NULL),
(641, 'Sistema de contabilidad de costes', 173, NULL, NULL),
(642, 'Sistema de contabilidad de costes por procesos o departamentos', 173, NULL, NULL),
(643, 'Sistema de contabilidad de costes por órdenes de fabricación o pedidos', 173, NULL, NULL),
(644, 'Sistema de contabilidad de costes basado\r\nen las actividades', 173, NULL, NULL),
(645, 'Sistema de contabilidad de costes del producto.', 173, NULL, NULL),
(646, 'Introducción y leyes financieras.', 177, NULL, NULL),
(647, 'Leyes financieras utilizadas en la práctica', 177, NULL, NULL),
(648, 'Valoración de rentas financieras.', 177, NULL, NULL),
(649, 'Lógica de las operaciones financieras', 177, NULL, NULL),
(650, 'operaciones simples a corto, medio y largo plazo', 177, NULL, NULL),
(651, 'Préstamos', 177, NULL, NULL),
(652, 'Introducción al análisis de los estados económico-financieros', 181, NULL, NULL),
(653, 'La reforma contable y el Plan General de Contabilidad.', 181, NULL, NULL),
(654, 'El Balance y la Cuenta de Pérdidas y Ganancias.', 181, NULL, NULL),
(655, 'Análisis de liquidez, rentabilidad y flujos de efectivo.', 181, NULL, NULL),
(656, 'Empresa', 166, NULL, NULL),
(657, 'Organización empresarial- Política, dirección y gestión empresarial', 166, NULL, NULL),
(658, 'Integración empresarial', 166, NULL, NULL),
(659, 'Información, Comunicación y Conocimiento', 166, NULL, NULL),
(660, 'Sociología, Economía y Derecho en el entorno empresarial.', 166, NULL, NULL),
(661, 'Nueva Economía y Gestión Internacional', 166, NULL, NULL),
(662, 'Política económica, industrial y tecnológica', 166, NULL, NULL),
(663, 'Desarrollo, consolidación, crecimiento y emprendimiento de negocios', 166, NULL, NULL),
(664, 'Gestión Estratégica de Recursos Humanos', 170, NULL, NULL),
(665, 'Análisis, Descripción y Valoración de Puestos', 170, NULL, NULL),
(666, 'Reclutamiento, Selección y Promoción', 170, NULL, NULL),
(667, 'Evaluación de Desempeño y Gestión por Competencia.', 170, NULL, NULL),
(668, 'Retribución e Incentivos.', 170, NULL, NULL),
(669, 'Formación y Planes de Carrera.', 170, NULL, NULL),
(670, 'Prevención de Riesgos Laborales:\r\nOHSAS 18001.', 170, NULL, NULL),
(671, 'Auditoría de Recursos Humanos.', 170, NULL, NULL),
(672, 'Ética empresarial', 170, NULL, NULL),
(673, 'Conceptos generales sobre autómatas programables.', 174, NULL, NULL),
(674, 'Aplicaciones.', 174, NULL, NULL),
(675, 'Célula flexible.', 174, NULL, NULL),
(676, 'Sensores y actuadores.', 174, NULL, NULL),
(677, 'Programación de autómatas: el GRAFCET', 174, NULL, NULL),
(678, 'Redes de autómatas', 174, NULL, NULL),
(679, 'Mantenimiento de autómatas', 174, NULL, NULL),
(680, 'Fundamentos de la Dirección de Operaciones.', 178, NULL, NULL),
(681, 'Diseño y desarrollo de servicios', 178, NULL, NULL),
(682, 'Decisiones de localización.', 178, NULL, NULL),
(683, 'Distribución en planta.', 178, NULL, NULL),
(684, 'Gestión de la cadena de suministro', 178, NULL, NULL),
(685, 'Gestión de inventarios, MRP y control de la actividad de producción.', 178, NULL, NULL),
(686, 'Filosofías y metodologías industriales', 178, NULL, NULL),
(687, 'Estudio de las fases, tipos y técnicas de la investigación de mercados.', 167, NULL, NULL),
(688, ' Métodos cualitativos y cuantitativos de investigación, y procesos de análisis e interpretación de resultados.', 167, NULL, NULL),
(689, 'Estudiar los procesos de marketing relacional y sus técnicas específicas: ', 171, NULL, NULL),
(690, ' posicionamiento, segmentación, procedimientos de análisis y medición de la eficacia entre otras.', 171, NULL, NULL),
(691, 'Producto y ciclo de vida del producto.', 171, NULL, NULL),
(692, 'Importancia de la marca y comercialización.', 171, NULL, NULL),
(693, 'Precio del producto y estrategias de fijación de precios.', 171, NULL, NULL),
(694, 'Sistemas de distribución y comercialización de productos.', 171, NULL, NULL),
(695, 'Sistemas de información y comunicación en la empresa.', 171, NULL, NULL),
(696, 'Marketing y competitividad empresarial.', 171, NULL, NULL),
(697, 'Características del Marketing online.', 175, NULL, NULL),
(698, 'Publicidad digital y plan de medios.', 175, NULL, NULL),
(699, 'Gestión de marca en internet.', 175, NULL, NULL),
(700, 'Plan de marketing digital.', 175, NULL, NULL),
(701, 'Comunicación y empresa.', 179, NULL, NULL),
(702, 'Necesidades y estrategias de comunicación entre los diferentes actores relacionados (clientes, consumidores, socios, proveedores, financiadores, etc.)', 179, NULL, NULL),
(703, 'Las comunicaciones administrativas y comerciales. ', 179, NULL, NULL),
(704, 'Flujos de comunicación interna.', 179, NULL, NULL),
(705, 'Concepto y elementos de la imagen corporativa', 179, NULL, NULL),
(706, 'Responsabilidad Social Corporativa y el rol de las RRPP.', 179, NULL, NULL),
(707, 'Gestión de conflictos empresariales.', 179, NULL, NULL),
(708, 'Plan integral de relaciones públicas.', 148, NULL, NULL),
(709, 'Gestión de crisis.', 179, NULL, NULL),
(710, 'Lobbying.', 179, NULL, NULL),
(711, 'Principios teóricos sobre la construcción de las imágenes para interpretar y analizar las representaciones visuales en diferentes medios (cine, televisión, fotografía, y pintura).', 168, NULL, NULL),
(712, 'Estudio de los principales conceptos, autores y corrientes sobre la imagen y su interpretación (haciendo especial énfasis en los aspectos semióticos).', 168, NULL, NULL),
(713, 'Estudio de la estructura', 172, NULL, NULL),
(714, 'los conceptos', 172, NULL, NULL),
(715, 'los autores', 172, NULL, NULL),
(716, 'los enfoques de la denominada Sociedad de la Información y del Conocimiento', 172, NULL, NULL),
(717, 'Fundamentos y Técnicas de animación digital y 3D.', 176, NULL, NULL),
(718, 'Animación en Internet (flash, animación u diseño)', 176, NULL, NULL),
(719, 'Animación de 3D para Televisión.', 176, NULL, NULL),
(720, 'Contenidos multimedia informativos.', 180, NULL, NULL),
(721, 'Web y Comunicación 2.0', 180, NULL, NULL),
(722, ' Contenidos informativos online.', 180, NULL, NULL),
(723, 'Weblogs y Comunicación.', 180, NULL, NULL),
(724, 'Plataformas y herramientas 2.0 para comunicadores', 180, NULL, NULL),
(725, 'wikis, mapas, presentaciones, RSS, redes sociales y otros recursos.', 180, NULL, NULL),
(726, 'Se desarrollan actividades relativas al área de ingeniería informática en un contexto laboral auténtico.', 159, NULL, NULL),
(727, 'Los contenidos y las características de las tareas que realizan los estudiantes durante el período de prácticas están determinados per la empresa / institución.', 159, NULL, NULL),
(728, 'Al finalizar este período el alumno deberá elaborar una memoria descriptiva sobre la experiencia laboral vivida.', 159, NULL, NULL),
(729, 'Las horas efectivas de prácticas son 120 horas. El resto (30 horas) deben destinarse a la elaboración de la memoria y a las tutorías.', 159, NULL, NULL),
(730, 'El alumno deberá elaborar un trabajo de integración de los conocimientos y habilidades adquiridos a lo largo de los estudios', 163, NULL, NULL),
(731, 'Para ello, podrá elaborar un trabajo investigativo de diferentes modalidades (teórico, diseño de un proyecto, aplicación práctica, evaluación de programas de intervención, etc.)', 163, NULL, NULL),
(732, 'Además en las sesiones de tutorías se abordarán los siguientes contenidos: Contenido y características formales de un trabajo académico; tratamiento\r\ny comunicación de la información;', 163, NULL, NULL),
(733, ' comparación y evaluación de la información (índices de calidad); normativa y herramientas para la elaboración de la bibliografía del TFG; la defensa oral: contenido y características formales.', 163, NULL, NULL),
(734, 'Riesgo en las carteras de renta fija.', 177, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_outcom`
--

CREATE TABLE `tb_outcom` (
  `id` int(11) NOT NULL,
  `descripcion` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_outcom`
--

INSERT INTO `tb_outcom` (`id`, `descripcion`) VALUES
(1, 'Capacidad para resolver los problemas matematicos que puedan plantearse en la ingenieria. Aptitud para aplicar los\r\nconocimientos sobre: algebra lineal; calculo diferencial e integral; metodos numericos; algoritmica numerica; estadistica y\r\noptimizacion.\r\nCapacidad de aplicar los conceptos basicos de matematica discreta, logica, algoritmica y complejidad computacional, y su\r\naplicacion para la resolucion de problemas propios de la ingenieria.\r\n'),
(2, 'Capacidad para resolver los problemas matemáticos que puedan plantearse en la ingenieria. Aptitud para aplicar los\r\nconocimientos sobre: algebra lineal; cálculo diferencial e integral; métodos numericos; algoritmica numérica; estadoistica y\r\noptimizacion.\r\nCapacidad de explicar y aplicar los conceptos básicos de campos y ondas y electromagnetismo, teoría de circuitos\r\neléctricos, circuitos electrónicos, principio físico de los semiconductores y familias lógicas, dispositivos electrónicos y fotonicos, y\r\nsu aplicación para la resolucion de problemas propios de la ingenieria.\r\n'),
(3, 'Poseer y aplicar conocimientos básicos sobre el uso y programación de los ordenadores, sistemas operativos, bases de datos\r\ny programas informáticos con aplicación en ingeniería.\r\nConocer y aplicar la estructura, organización, funcionamiento e interconexión de los sistemas informáticos, los fundamentos\r\nde su programación, y saber aplicarlos en la resolución de problemas propios de la ingeniería.\r\nCapacidad para diseñar, desarrollar, seleccionar y evaluar aplicaciones y sistemas informáticos, asegurando su fiabilidad,\r\nseguridad y calidad, conforme a principios éticos y a la legislación y normativa vigente.\r\nCapacidad de explicar y aplicar los procedimientos algorítmicos básicos de las tecnologías informáticas para diseñar\r\nsoluciones a problemas, analizando la idoneidad y complejidad de los algoritmos propuestos.\r\nCapacidad de entender y utilizar de forma eficiente los tipos y estructuras de datos más adecuados a la resolución de un\r\nproblema.\r\nCapacidad para analizar, diseñar, construir y mantener aplicaciones de forma robusta, segura y eficiente, eligiendo el\r\nparadigma y los lenguajes de programación más adecuados.\r\nCapacidad de conocer y aplicar las herramientas necesarias para el almacenamiento, procesamiento y acceso a los Sistemas\r\nde información, incluidos los basados en web.\r\nCapacidad para diseñar y evaluar interfaces persona computador que garanticen la accesibilidad y usabilidad a los sistemas,\r\nservicios y aplicaciones informáticas.'),
(4, 'Capacidad para diseñar, desarrollar, seleccionar y evaluar aplicaciones y sistemas informáticos, asegurando su fiabilidad,\r\nseguridad y calidad, conforme a principios éticos y a la legislación y normativa vigente.\r\nCapacidad para planificar, concebir, desplegar y dirigir proyectos, servicios y sistemas informáticos en todos los ámbitos,\r\nliderando su puesta en marcha y su mejora continua y valorando su impacto económico y social.\r\nCapacidad de comprender y valorar la importancia de la negociación, los hábitos de trabajo efectivos, el liderazgo y las\r\nhabilidades de comunicación en todos los entornos de desarrollo de software.\r\n Capacidad para elaborar el pliego de condiciones técnicas de una instalación informática que cumpla los estándares y\r\nnormativas vigentes.\r\n Capacidad para aplicar los conceptos de administración y mantenimiento sistemas, servicios y aplicaciones informáticas.\r\nCapacidad para analizar, diseñar, construir y mantener aplicaciones de forma robusta, segura y eficiente, eligiendo el\r\nparadigma y los lenguajes de programación más adecuados.\r\nCapacidad de conocer y aplicar las características, funcionalidades y estructura de las bases de datos, que permitan su\r\nadecuado uso, y el diseño y el análisis e implementacion de aplicaciones basadas en ellos.\r\nCapacidad de conocer y aplicar las herramientas necesarias para el almacenamiento, procesamiento y acceso a los Sistemas\r\nde información, incluidos los basados en web.\r\n Capacidad de conocer y aplicar los principios fundamentales y técnicas básicas de los sistemas inteligentes y su aplicación\r\npráctica.\r\nCapacidad de conocer y aplicar los principios, metodologías y ciclos de vida de la ingeniería de software.\r\nCapacidad para desarrollar, mantener y evaluar servicios y sistemas software que satisfagan todos los requisitos del usuario\r\ny se comporten de forma fiable y eficiente, sean asequibles de desarrollar y mantener y cumplan normas de calidad, aplicando las\r\nteorías, principios, métodos y prácticas de la Ingeniería del Software.\r\nCapacidad para valorar las necesidades del cliente y especificar los requisitos software para satisfacer estas necesidades,\r\nreconciliando objetivos en conflicto mediante la búsqueda de compromisos aceptables dentro de las limitaciones derivadas del\r\ncoste, del tiempo, de la existencia de sistemas ya desarrollados y de las propias organizaciones.\r\n Capacidad de dar solución a problemas de integración en función de las estrategias, estándares y tecnologías disponibles.\r\nCapacidad de identificar y analizar problemas y diseñar, desarrollar, implementar, verificar y documentar soluciones\r\nsoftware sobre la base de un conocimiento adecuado de las teorías, modelos y técnicas actuales.\r\nCapacidad de identificar, evaluar y gestionar los riesgos potenciales asociados que pudieran presentarse.\r\nCapacidad para diseñar soluciones apropiadas en uno o más dominios de aplicación utilizando métodos de la ingeniería del\r\nsoftware que integren aspectos éticos, sociales, legales y económicos.'),
(5, 'Conocer y aplicar la estructura, organización, funcionamiento e interconexión de los sistemas informáticos, los fundamentos\r\nde su programación, y saber aplicarlos en la resolución de problemas propios de la ingeniería.\r\nCapacidad de conocer, comprender y evaluar la estructura y arquitectura de los computadores, así como los componentes\r\nbásicos que los conforman.\r\n'),
(6, 'Capacidad para elaborar el pliego de condiciones técnicas de una instalación informática que cumpla los estándares y\r\nnormativas vigentes.\r\nCapacidad para aplicar los conceptos de administración y mantenimiento sistemas, servicios y aplicaciones informáticas.\r\nCapcidad de conocer y aplicar las características, funcionalidades y estructura de los Sistemas Operativos así como diseñar\r\ne implementar aplicaciones basadas en sus servicios.\r\nCapacidad de conocer y aplicar las características, funcionalidades y estructura de los Sistemas Distribuidos, las Redes de\r\nComputadores e Internet y diseñar e implementar aplicaciones basadas en ellas.\r\nCapacidad de conocer y aplicar los principios fundamentales y técnicas básicas de la programación paralela, concurrente,\r\ndistribuida y de tiempo real.\r\nConocer y saber aplicar la normativa y la regulación de la informática en los ámbitos nacional, europeo e internacional.'),
(7, 'Capacidad de comunicarse en inglés a un nivel acorde al C1 del MCERL de forma oral y por escrito en una amplia variedad\r\nde situaciones, de diferente grado de complejidad y pertenecientes al ámbito personal, social, profesional y académico.\r\n Capacidad de desenvolverse con éxito desde el punto de vista sociocultural en entornos diversos de las comunidades de\r\nhabla inglesa, especialmente del ámbito profesional y académico a un nivel acorde al C1 del MCERL.\r\nCapacidad de aplicar estrategias de aprendizaje relacionadas con el aprendizaje de lenguas.'),
(8, 'Conocer y aplicar los conceptos de empresa, marco institucional y jurídico de la empresa, así como de la organización y\r\ngestión de empresas.\r\nCapacidad para diseñar, desarrollar, seleccionar y evaluar aplicaciones y sistemas informáticos, asegurando su fiabilidad,\r\nseguridad y calidad, conforme a principios éticos y a la legislación y normativa vigente.\r\nCapacidad para elaborar el pliego de condiciones técnicas de una instalación informática que cumpla los estándares y\r\nnormativas vigentes.\r\nConocer y saber aplicar la normativa y la regulación de la informática en los ámbitos nacional, europeo e internacional.\r\n Capacidad para diseñar soluciones apropiadas en uno o más dominios de aplicación utilizando métodos de la ingeniería del\r\nsoftware que integren aspectos éticos, sociales, legales y económicos.'),
(9, 'Conocer y aplicar los conceptos de empresa, marco institucional y jurídico de la empresa, así como de la organización y\r\ngestión de empresas.\r\nCapacidad para planificar, concebir, desplegar y dirigir proyectos, servicios y sistemas informáticos en todos los ámbitos,\r\nliderando su puesta en marcha y su mejora continua y valorando su impacto económico y social.\r\nCapacidad de comprender y valorar la importancia de la negociación, los hábitos de trabajo efectivos, el liderazgo y las\r\nhabilidades de comunicación en todos los entornos de desarrollo de software.\r\n Capacidad para valorar las necesidades del cliente y especificar los requisitos software para satisfacer estas necesidades,\r\nreconciliando objetivos en conflicto mediante la búsqueda de compromisos aceptables dentro de las limitaciones derivadas del\r\ncoste, del tiempo, de la existencia de sistemas ya desarrollados y de las propias organizaciones.\r\nCapacidad para diseñar soluciones apropiadas en uno o más dominios de aplicación utilizando métodos de la ingeniería del\r\nsoftware que integren aspectos éticos, sociales, legales y económicos.'),
(10, 'No existen datos'),
(11, 'No existen datos'),
(12, 'No existen datos'),
(13, 'No existen datos'),
(14, 'Capacidad para resolver los problemas matemáticos que puedan plantearse en la ingeniería. Aptitud para aplicar los\r\nconocimientos sobre: álgebra lineal; cálculo diferencial e integral; métodos numéricos; algorítmica numérica; estadística y\r\noptimización.\r\n Capacidad de explicar y aplicar los conceptos básicos de campos y ondas y electromagnetismo, teoría de circuitos\r\neléctricos, circuitos electrónicos, principio físico de los semiconductores y familias lógicas, dispositivos electrónicos y fotónicos, y\r\nsu aplicación para la resolución de problemas propios de la ingeniería.\r\nCapacidad de aplicar los conceptos básicos de matemática discreta, lógica, algorítmica y complejidad computacional, y su\r\naplicación para la resolución de problemas propios de la ingeniería.\r\nPoseer y aplicar conocimientos básicos sobre el uso y programación de los ordenadores, sistemas operativos, bases de datos\r\ny programas informáticos con aplicación en ingeniería.'),
(15, 'Ejercicio original a realizar individualmente y presentar y defender ante un tribunal universitario, consistente en un proyecto\r\nen el ámbito de las tecnologías específicas de la Ingeniería en Informática de naturaleza profesional en el que se sinteticen e\r\nintegren las competencias adquiridas en las enseñanzas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_universidades`
--

CREATE TABLE `tb_universidades` (
  `id` int(11) NOT NULL,
  `nombre_universidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_universidades`
--

INSERT INTO `tb_universidades` (`id`, `nombre_universidad`) VALUES
(1, 'Escuela politecnica de ingenieria de Gijon Universidad de Oviedo'),
(2, 'Universidad politecnica de valencia'),
(3, 'Universidad de Cantabria'),
(4, 'Universidad Europea del Atlantico');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_asignaturas`
--
ALTER TABLE `tb_asignaturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_universidad` (`id_Grado`),
  ADD KEY `id_outcom` (`id_outcom`),
  ADD KEY `id` (`id`),
  ADD KEY `id_asignatura` (`id_asignatura`);

--
-- Indices de la tabla `tb_carreras`
--
ALTER TABLE `tb_carreras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUniversidad` (`id_Universidad`);

--
-- Indices de la tabla `tb_contenido`
--
ALTER TABLE `tb_contenido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_asignaturas` (`id_asignaturas`);

--
-- Indices de la tabla `tb_outcom`
--
ALTER TABLE `tb_outcom`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_universidades`
--
ALTER TABLE `tb_universidades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_asignaturas`
--
ALTER TABLE `tb_asignaturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT de la tabla `tb_carreras`
--
ALTER TABLE `tb_carreras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_contenido`
--
ALTER TABLE `tb_contenido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=735;

--
-- AUTO_INCREMENT de la tabla `tb_outcom`
--
ALTER TABLE `tb_outcom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tb_universidades`
--
ALTER TABLE `tb_universidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_asignaturas`
--
ALTER TABLE `tb_asignaturas`
  ADD CONSTRAINT `tb_asignaturas_ibfk_2` FOREIGN KEY (`id_outcom`) REFERENCES `tb_outcom` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_asignaturas_ibfk_4` FOREIGN KEY (`id_Grado`) REFERENCES `tb_carreras` (`id`),
  ADD CONSTRAINT `tb_asignaturas_ibfk_5` FOREIGN KEY (`id_asignatura`) REFERENCES `tb_asignaturas` (`id`);

--
-- Filtros para la tabla `tb_carreras`
--
ALTER TABLE `tb_carreras`
  ADD CONSTRAINT `tb_carreras_ibfk_1` FOREIGN KEY (`id_Universidad`) REFERENCES `tb_universidades` (`id`);

--
-- Filtros para la tabla `tb_contenido`
--
ALTER TABLE `tb_contenido`
  ADD CONSTRAINT `tb_contenido_ibfk_1` FOREIGN KEY (`id_asignaturas`) REFERENCES `tb_asignaturas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
