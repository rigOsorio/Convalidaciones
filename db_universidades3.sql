-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2018 a las 18:08:41
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

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
  `id_universidad` int(11) NOT NULL,
  `creditos` float NOT NULL,
  `por_creditos` tinyint(1) NOT NULL,
  `por_outcom` tinyint(1) NOT NULL,
  `por_contenido` tinyint(1) NOT NULL,
  `id_outcom` int(11) DEFAULT NULL,
  `id_asignatura` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_asignaturas`
--

INSERT INTO `tb_asignaturas` (`id`, `nombre_asignatura`, `id_universidad`, `creditos`, `por_creditos`, `por_outcom`, `por_contenido`, `id_outcom`, `id_asignatura`) VALUES
(1, 'Algebra', 2, 6, 0, 0, 0, 1, NULL),
(2, 'Análisis matemático', 2, 6, 0, 0, 0, 1, NULL),
(3, 'Estadística', 2, 6, 0, 0, 0, 1, NULL),
(4, 'Fundamentos de computadores', 2, 6, 0, 0, 0, 1, NULL),
(5, 'Fundamentos de organización de empresas', 2, 6, 0, 0, 0, 1, NULL),
(6, 'Fundamentos Físicos de la Informática', 2, 6, 0, 0, 0, 1, NULL),
(7, 'Introducción a la informática y a la programación', 2, 6, 0, 0, 0, 1, NULL),
(8, 'Matemática discreta', 2, 6, 0, 0, 0, 1, NULL),
(9, 'Programación', 2, 6, 0, 0, 0, 1, NULL),
(10, 'Tecnología de computadores', 2, 6, 0, 0, 0, 1, NULL),
(11, 'Concurrencia y sistemas distribuidos', 2, 6, 0, 0, 0, 1, NULL),
(12, 'Deontología y profesionalismo', 2, 4.5, 0, 0, 0, 1, NULL),
(13, 'Estructura de computadores', 2, 9, 0, 0, 0, 1, NULL),
(14, 'Estructuras de datos y algoritmos', 2, 6, 0, 0, 0, 1, NULL),
(15, 'Fundamentos de sistemas operativos', 2, 6, 0, 0, 0, 1, NULL),
(16, 'Interfaces persona computador', 2, 4.5, 0, 0, 0, 1, NULL),
(17, 'Lenguajes, tecnologías y paradigmas de la programación', 2, 6, 0, 0, 0, 1, NULL),
(18, 'Redes de computadores', 2, 9, 0, 0, 0, 1, NULL),
(19, 'Teoría de autómatas y lenguajes formales', 2, 4.5, 0, 0, 0, 1, NULL),
(20, 'Arquitectura e ingeniería de computadores', 2, 6, 0, 0, 0, 1, NULL),
(21, 'Bases de datos y sistemas de información', 2, 6, 0, 0, 0, 1, NULL),
(22, 'Computación paralela', 2, 4.5, 0, 0, 0, 1, NULL),
(23, 'Gestión de proyectos', 2, 4.5, 0, 0, 0, 1, NULL),
(24, 'Ingeniería del software', 2, 6, 0, 0, 0, 1, NULL),
(25, 'Sistemas inteligentes', 2, 4.5, 0, 0, 0, 1, NULL),
(26, 'Tecnología de sistemas de información en la red', 2, 6, 0, 0, 0, 1, NULL),
(27, 'Trabajo de fin de Grado', 2, 12, 0, 0, 0, 1, NULL),
(28, 'Álgebra Lineal', 1, 6, 0, 0, 0, 1, NULL),
(29, 'Cálculo', 1, 6, 0, 0, 0, 1, NULL),
(30, 'Empresa', 1, 6, 0, 0, 0, 1, NULL),
(31, 'Fundamentos de Informática', 1, 6, 0, 0, 0, 1, NULL),
(32, 'Introducción a la Programación', 1, 6, 0, 0, 0, 1, NULL),
(33, 'Estadística', 1, 6, 0, 0, 0, 1, NULL),
(34, 'Ondas y Electromagnetismo', 1, 6, 0, 0, 0, 1, NULL),
(35, 'Fundamentos de Computadores y Redes', 1, 6, 0, 0, 0, 1, NULL),
(36, 'Autómatas y Matemáticas Discretas', 1, 6, 0, 0, 0, 1, NULL),
(37, 'Metodología de la Programación', 1, 6, 0, 0, 0, 1, NULL),
(38, 'Algoritmia', 1, 6, 0, 0, 0, 1, NULL),
(39, 'Arquitectura de Computadores', 1, 6, 0, 0, 0, 1, NULL),
(40, 'Bases de Datos', 1, 6, 0, 0, 0, 1, NULL),
(41, 'Computabilidad', 1, 6, 0, 0, 0, 1, NULL),
(42, 'Computación Numérica', 1, 6, 0, 0, 0, 1, NULL),
(43, 'Comunicación Persona Máquina', 1, 6, 0, 0, 0, 1, NULL),
(44, 'Estructuras de Datos', 1, 6, 0, 0, 0, 1, NULL),
(45, 'Sistemas Operativos', 1, 6, 0, 0, 0, 1, NULL),
(46, 'Tecnología Electrónica de Computadores', 1, 6, 0, 0, 0, 1, NULL),
(47, 'Tecnologías y Paradigmas de la Programación', 1, 6, 0, 0, 0, 1, NULL),
(48, 'Administración de Sistemas', 1, 6, 0, 0, 0, 1, NULL),
(49, 'Configuración y Evaluación de Sistemas', 1, 6, 0, 0, 0, 1, NULL),
(50, 'Infraestructura Informática', 1, 6, 0, 0, 0, 1, NULL),
(51, 'Ingeniería de Redes', 1, 6, 0, 0, 0, 1, NULL),
(52, 'Ingeniería del Software', 1, 6, 0, 0, 0, 1, NULL),
(53, 'Programación Concurrente y Paralela', 1, 6, 0, 0, 0, 1, NULL),
(54, 'Redes de Computadores', 1, 6, 0, 0, 0, 1, NULL),
(55, 'Sistemas Distribuidos', 1, 6, 0, 0, 0, 1, NULL),
(56, 'Sistemas Inteligentes', 1, 6, 0, 0, 0, 1, NULL),
(57, 'Sistemas de Información', 1, 6, 0, 0, 0, 1, NULL),
(58, 'Gestión de Tecnologías de la Información', 1, 6, 0, 0, 0, 1, NULL),
(59, 'Informática Móvil', 1, 6, 0, 0, 0, 1, NULL),
(60, 'Ingeniería de Servicios', 1, 6, 0, 0, 0, 1, NULL),
(61, 'Inteligencia de Negocio', 1, 6, 0, 0, 0, 1, NULL),
(62, 'Proyectos', 1, 6, 0, 0, 0, 1, NULL),
(63, 'Pruebas y Despliegue de Software', 1, 6, 0, 0, 0, 1, NULL),
(64, 'Prácticas en empresa', 1, 6, 0, 0, 0, 1, NULL),
(65, 'Seguridad', 1, 6, 0, 0, 0, 1, NULL),
(66, 'Tecnologías Web', 1, 6, 0, 0, 0, 1, NULL),
(67, 'Trabajo de Fin de Grado', 1, 12, 0, 0, 0, 1, NULL),
(68, 'Álgebra Lineal y Discreta', 3, 6, 0, 0, 0, 16, NULL),
(69, 'Fundamentos Físicos de la Informática', 3, 6, 0, 0, 0, 34, NULL),
(70, 'Inglés', 3, 6, 0, 0, 0, 41, NULL),
(71, 'Introducción al Software', 3, 6, 1, 1, 0, 46, 2),
(72, 'Sistemas Digitales', 3, 6, 1, 1, 0, 66, 1),
(73, 'Análisis Matemático y Métodos Numéricos', 3, 6, 0, 0, 0, 18, NULL),
(74, 'Economía y Administración de Empresas', 3, 6, 1, 1, 0, 30, 35),
(75, 'Estadística y Optimización', 3, 6, 1, 1, 0, 31, 12),
(76, 'Introducción a los Computadores', 3, 6, 1, 1, 0, 44, 1),
(77, 'Métodos de Programación', 3, 6, 1, 1, 1, 52, 7),
(78, 'Estructura de Computadores', 3, 6, 0, 0, 0, 32, 1),
(79, 'Estructuras de Datos', 3, 6, 1, 1, 0, 33, 14),
(80, 'Matemática Discreta', 3, 6, 1, 1, 1, 50, 9),
(81, 'Sistemas de Información', 3, 6, 0, 0, 0, 64, NULL),
(82, 'Valores, Ética y Profesión Informática', 3, 6, 1, 1, 0, 72, 23),
(83, 'Algorítmica y Complejidad', 3, 6, 0, 0, 0, 17, NULL),
(84, 'Bases de Datos', 3, 6, 1, 1, 1, 22, 13),
(85, 'Lógica', 3, 6, 1, 1, 1, 49, 10),
(86, 'Organización de Computadores', 3, 6, 0, 0, 0, 56, NULL),
(87, 'Sistemas Operativos', 3, 6, 1, 1, 0, 70, 17),
(88, 'Ingeniería del Software I', 3, 6, 1, 1, 0, 39, 21),
(89, 'Interacción Persona−Computador', 3, 6, 0, 0, 0, 42, NULL),
(90, 'Introducción a las Redes de Computadores', 3, 6, 1, 1, 0, 43, 11),
(91, 'Introducción a los Sistemas Inteligentes', 3, 6, 0, 0, 0, 45, NULL),
(92, 'Programación Paralela, Concurrente y de Tiempo Real', 3, 6, 1, 1, 0, 59, 22),
(93, 'Aprendizaje Automático y Minería de Datos', 3, 6, 0, 0, 0, 19, NULL),
(94, 'Arquitectura e Ingeniería de Computadores', 3, 6, 0, 0, 0, 20, NULL),
(95, 'Desarrollo de Sistemas de Información', 3, 6, 1, 1, 1, 25, 18),
(96, 'Ingeniería de Requisitos', 3, 6, 0, 0, 0, 38, NULL),
(97, 'Ingeniería del Software II', 3, 6, 1, 1, 0, 40, 25),
(98, 'Lenguajes Formales', 3, 6, 0, 0, 0, 48, NULL),
(99, 'Redes de Computadores y Sistemas Distribuidos', 3, 6, 1, 1, 0, 60, 22),
(100, 'Sistemas de Tiempo Real', 3, 6, 0, 0, 0, 65, NULL),
(101, 'Sistemas Informáticos', 3, 6, 1, 1, 0, 68, 11),
(102, 'Bases de Datos Avanzadas', 3, 6, 0, 0, 0, 21, NULL),
(103, 'Calidad y Auditoría', 3, 6, 0, 0, 0, 23, NULL),
(104, 'Computer Animation and Video Games', 3, 6, 0, 0, 0, 24, NULL),
(105, 'Diseño de Algoritmos', 3, 6, 0, 0, 0, 26, NULL),
(106, 'Diseño de Software', 3, 6, 0, 0, 0, 27, NULL),
(107, 'Diseño y Administración de Redes', 3, 6, 1, 1, 0, 28, 11),
(108, 'Gráficos por Computador y Realidad Virtual', 3, 6, 0, 0, 0, 36, NULL),
(109, 'Métodos de Desarrollo', 3, 6, 0, 0, 0, 51, NULL),
(110, 'Modelos de Cálculo', 3, 6, 0, 0, 0, 53, NULL),
(111, 'Multiprocesadores', 3, 6, 0, 0, 0, 54, NULL),
(112, 'Procesos de Ingeniería del Software', 3, 6, 0, 0, 0, 58, NULL),
(113, 'Representación del Conocimiento', 3, 6, 0, 0, 0, 61, NULL),
(114, 'Sistemas Embebidos', 3, 6, 0, 0, 0, 67, NULL),
(115, 'Sistemas Operativos Avanzados', 3, 6, 0, 0, 0, 69, NULL),
(116, 'Diseño y Gestión de Sistemas Informáticos', 3, 6, 0, 0, 0, 29, NULL),
(117, 'Garantía y Seguridad en Sistemas y Redes', 3, 6, 0, 0, 0, 1, NULL),
(118, 'Gestión de Proyectos Software', 3, 6, 0, 0, 0, 35, NULL),
(119, 'Informática Industrial', 3, 6, 0, 0, 0, 37, NULL),
(120, 'Lenguajes de Programación', 3, 6, 0, 0, 0, 47, NULL),
(121, 'Natural Language Processing', 3, 6, 0, 0, 0, 55, NULL),
(122, 'Proceso del Lenguaje Humano', 3, 6, 0, 0, 0, 1, NULL),
(123, 'Servicios Software', 3, 6, 0, 0, 0, 62, NULL),
(124, 'Sistemas de Información de la Empresa', 3, 6, 0, 0, 0, 63, NULL),
(125, 'System and Network Security and Assurance', 3, 6, 0, 0, 0, 71, NULL),
(126, 'Advanced Operating Systems', 3, 6, 0, 0, 0, 1, NULL),
(127, 'Animación por Computador y Videojuegos', 3, 6, 0, 0, 0, 1, NULL),
(128, 'Prácticas Académicas Externas I', 3, 6, 0, 0, 0, 1, NULL),
(129, 'Prácticas Académicas Externas II', 3, 6, 0, 0, 0, 1, NULL),
(130, 'Trabajo de Fin de Grado', 3, 12, 1, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_contenido`
--

CREATE TABLE `tb_contenido` (
  `id` int(11) NOT NULL,
  `nombre_contenido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_asignatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_contenido`
--

INSERT INTO `tb_contenido` (`id`, `nombre_contenido`, `id_asignatura`) VALUES
(2, 'Derivación', 4),
(3, ' Aplicaciones de las derivadas', 4),
(4, 'Ecuaciones diferenciales', 4),
(5, 'Integral definida', 4),
(6, 'Ecuaciones diferenciales2', 4),
(7, ' Funciones en varias variables.', 4),
(8, 'Polinomios y funciones', 6),
(9, 'Matrices', 6),
(10, 'Espacios vectoriales y euclídeos', 6),
(11, ' Ecuaciones lineales y sistemas de ecuaciones', 6),
(12, ' Inecuaciones', 6),
(13, 'Diagonalización y\r\nformas canónicas, cónicas y cuadráticas', 6),
(14, 'Ecuaciones diferenciales', 6),
(15, 'Concepto de conjunto: operaciones y leyes del álgebra de conjuntos', 9),
(16, ' Relaciones binarias', 9),
(17, ' Inversa de una relación y la composición entre dos relaciones\r\ndadas', 9),
(18, 'Principios básicos de la combinatoria y variaciones', 9),
(19, 'Conceptos básicos de lógica proposicional, operadores y tablas de verdad', 10),
(20, ' Relaciones de equivalencia e implicación lógica, leyes y sus propiedades', 10),
(21, 'Circuitos lógicos a partir de sus características fundamentales, diseño, representación y simplificación', 10),
(22, 'Conceptos fundamentales de la Estadística', 12),
(23, 'Probabilidades', 12),
(24, ' Variables aleatorias y distribuciones de probabilidad', 12),
(25, ' Distribuciones discretas de probabilidad', 12),
(26, ' Distribuciones contínuas de probabilidad', 12),
(27, 'Distribuciones muestrales', 12),
(28, 'Muestreo estadístico.', 12),
(29, 'Análisis numérico', 15),
(30, ' Teoría de errores', 15),
(31, ' Ecuaciones de Una variable', 15),
(32, ' Solución de sistemas de ecuaciones lineales', 15),
(33, 'Riesgo en las carteras de renta fij', 15),
(34, ' Solución numérica de ecuaciones en derivadas parciales', 15),
(35, ' Regresión y aproximación', 15),
(36, 'Cinemática y dinámica de la partícula y del sólido rígido.', 5),
(37, ' Leyes de conservación.', 5),
(38, 'Oscilaciones y ondas. Fluidos.', 5),
(39, ' Termodinámica', 5),
(40, ' Electrostática.', 5),
(41, 'Electricidad y Magnetismo.', 5),
(42, 'Inducción electromagnética.', 5),
(43, 'Interferencia, difracción y polarización de la luz', 5),
(44, 'Radiación Térmica.', 5),
(45, ' Efecto Fotoeléctrico', 5),
(46, 'Semiconductores.', 5),
(47, 'Riesgo en las carteras de renta fija.', 2),
(48, 'estructura de un programa y tipos de datos elementales', 2),
(49, 'entrada/salida', 2),
(50, 'concepto de programación estructurada', 2),
(51, 'estructuras de control, funciones y procedimientos', 2),
(52, 'recursividad', 2),
(53, 'estructuras', 2),
(54, 'tipos básicos y estructurado', 2),
(55, 'ficheros', 2),
(56, 'Introducción a la programación orientada a objetos', 7),
(57, 'clases', 7),
(58, 'métodos', 7),
(59, 'herencia', 7),
(60, 'Introducción a la programación dirigida por eventos', 7),
(61, 'propagación, manejo y gestión de eventos', 7),
(62, 'excepciones', 7),
(63, 'Archivos secuenciales', 14),
(64, 'Arreglos unidimensionales.', 14),
(65, 'Arreglos multidimensionales.', 14),
(66, 'Listas enlazadas simples', 14),
(67, 'Listas enlazadas particulares', 14),
(68, 'Pilas y colas', 14),
(69, 'Árboles binarios', 14),
(70, 'Árboles Grafos', 14),
(71, 'Lenguajes, gramáticas y autómatas', 16),
(72, 'Grafos dirigidos', 14),
(73, 'Fundamentos del análisis léxico', 16),
(74, 'Fundamentos del análisis sintáctico', 16),
(75, 'Análisis sintáctico descendente', 16),
(76, 'Análisis sintáctico ascendente', 16),
(77, 'Análisis semántico', 16),
(78, 'Las tablas de símbolos', 16),
(79, 'Organización de la memoria en tiempo de ejecución', 16),
(80, 'Generación de código', 16),
(81, 'Validación, documentación y entorno de desarrollo', 16),
(82, 'Intérpretes', 16),
(83, 'Diseño de lenguajes de programación', 16),
(84, 'Caminos mínimos en grafos ponderados', 19),
(85, 'Flujo máximo en redes de transporte', 19),
(86, 'Flujos de coste mínimo', 19),
(87, 'Emparejamientos en grafos', 19),
(88, 'Algoritmos geométricos en el plano', 19),
(89, 'Introducción a la intratabilidad computacional', 19),
(90, 'Desarrollo de aplicaciones para la Web', 30),
(91, 'Técnicas de modelado para la Web', 30),
(92, 'Modelado de la interacción y la navegación', 30),
(93, 'Arquitecturas para sistemas basados en web', 30),
(94, 'Servidores web', 30),
(95, 'Sistemas de gestión de contenidos', 30),
(96, 'Dominios de aplicación Web', 30),
(97, 'Familia de Tecnologías XML', 34),
(98, ' XML NameSpace, XSL, DTD, XPath y XQuery', 34),
(99, 'AJAX, Frameworks y Toolkits', 34),
(100, 'Prototype, Dojo, GWT.', 34),
(101, 'J2EE.', 34),
(102, 'Servidores de aplicaciones', 34),
(103, ' Instalación y administración de un servidor Tomcat y JBoss. Servlets, JSP', 34),
(104, 'Enterprise Java Beans', 34),
(105, ' Modelo de persistencia JPA', 34),
(106, 'Tecnologías de conectividad a Bases de Datos', 34),
(107, ' JDBC, ADO.NET', 34),
(108, ' Arquitecturas orientadas a servicios', 34),
(109, 'SOA', 34),
(110, ' Servicios Web', 34),
(111, 'Hardware:', 8),
(112, 'conceptos, rendimiento del equipo, memoria y almacenamiento', 8),
(113, ' dispositivos de entrada y salida', 8),
(114, 'Conceptos de Software', 8),
(115, 'Redes de información:', 8),
(116, 'tipos de redes', 8),
(117, 'transferencia de datos', 8),
(118, 'Uso de las TIC en la vida cotidiana', 8),
(119, 'mundo electrónico', 8),
(120, 'comunicación', 8),
(121, 'comunidades virtuales', 8),
(122, 'salud, medio ambiente', 8),
(123, 'Seguridad:', 8),
(124, 'identidad/autenticación, seguridad de datos, virus', 8),
(125, 'Legislación: derechos de autor, protección de datos', 8),
(126, 'Software e Ingeniería', 3),
(127, 'Naturaleza del Software', 3),
(128, 'Proceso del Software', 3),
(129, 'Modelos de Proceso', 3),
(130, 'Desarrollo Ágil', 3),
(131, 'Conceptos de Calidad', 3),
(132, 'Ficheros', 13),
(133, 'Conceptos básicos de bases de datos', 13),
(134, 'Sistemas de gestión de bases de datos', 13),
(135, 'Modelos de datos', 13),
(136, 'Modelo relaciona', 13),
(137, 'Estándar SQL.', 13),
(138, 'Programación y uso de bases de datos', 13),
(139, 'Acceso programático a bases de datos', 13),
(140, 'Introducción a otros modelos de datos ', 13),
(141, 'Requisitos de Datos', 18),
(142, 'Diseño conceptual', 18),
(143, 'Diseño lógico', 18),
(144, 'Diseño Físico', 18),
(145, 'Seguridad en BBDD', 18),
(146, 'Diseño avanzado de datos', 18),
(147, 'Objeto-relacional', 18),
(148, 'XML-semiestructurado', 18),
(149, 'multidimensional.\r\n', 18),
(150, 'Introducción a la ingeniería del software', 21),
(151, 'Modelos del ciclo de vida del software', 21),
(152, 'Notaciones de modelado de software', 21),
(153, ' Equipos de trabajo', 21),
(154, 'Análisis de necesidades y estudio de viabilidad', 21),
(155, 'Planeación y Estimación', 21),
(156, 'Requisitos del software', 25),
(157, 'Análisis clásico y orientado a objetos', 25),
(158, 'Diseño de software', 25),
(159, 'Implementación', 25),
(160, 'Mantenimiento', 25),
(161, 'Planificación estratégica', 26),
(162, 'Planificación de proyectos software', 26),
(163, 'Estimación', 26),
(164, 'Seguimiento y control de proyectos software', 26),
(165, 'Gestión de riesgos', 26),
(166, 'Herramientas de gestión de proyectos\r\n', 26),
(167, 'Introducción al aprendizaje máquina', 31),
(168, 'Introducción a la inteligencia computacional', 31),
(169, 'Introducción a la computación evolutiva', 31),
(170, 'Inteligencia de enjambre', 31),
(171, 'Sistemas inmunes artificiales', 31),
(172, 'Sistemas neuro-difusos.', 31),
(173, 'El ejercicio de la ingeniería', 32),
(174, 'El proceso proyectual', 32),
(175, 'Planificación y organización de proyectos', 32),
(176, 'Contratación, supervisión y puesta en servicio del proyecto', 32),
(177, 'Conceptos básicos y organización funcional del ordenado', 1),
(178, 'Representación de la información a nivel de máquina', 1),
(179, 'Sistemas digitales combinacionales', 1),
(180, 'Sistemas digitales secuenciales', 1),
(181, ' Organización y diseño del procesador', 1),
(182, 'Descripción de un ordenador en el nivel de lenguaje máquina y ensamblador', 1),
(183, 'Entradas y salidas:', 1),
(184, 'buses', 1),
(185, 'Clasificación de los ordenadores', 1),
(186, 'mejora de prestaciones.', 1),
(187, 'Características, historia, funciones y estructura de los sistemas operativos', 17),
(188, 'procesos', 17),
(189, 'planificación', 17),
(190, 'concurrencia', 17),
(191, 'memoria', 17),
(192, 'entrada y salida', 17),
(193, 'sistemas de ficheros.', 17),
(194, 'Entorno de programación del sistema', 17),
(195, 'Seguridad', 17),
(196, 'Nociones de administración de sistemas', 17),
(197, 'Sistemas operativos móviles y de tiempo real', 17),
(198, 'Conceptos básicos de redes de computadores', 11),
(199, 'arquitecturas de protocolos', 11),
(200, 'Medios de transmisión', 11),
(201, 'Comunicación de datos', 11),
(202, 'Fundamentos de tecnologías de red', 11),
(203, 'Fundamentos de capa de red en TCP/IP', 11),
(204, 'direccionamiento y encaminamiento básico', 11),
(205, 'Aplicaciones básicas en red', 11),
(206, 'Tecnologías de red', 11),
(207, 'Interconexión de dispositivos de red', 11),
(208, 'Protocolos de encaminamiento en Internet', 11),
(209, 'Conceptos básicos de la gestión de redes', 11),
(210, 'Conceptos básicos de seguridad en redes.', 11),
(211, 'Conceptos fundamentales de sistemas distribuidos.', 22),
(212, 'Comunicación de procesos y grupos de procesos distribuidos', 22),
(213, 'Objetos distribuidos e invocación remota', 22),
(214, 'Sincronización distribuida.', 22),
(215, 'Transacciones y control de concurrencia.', 22),
(216, 'Programación de aplicaciones distribuidas', 22),
(217, 'Fundamentos de la Seguridad Informática', 27),
(218, 'Criptosistemas de Clave Secreta', 27),
(219, 'Criptosistemas de Cifrado en Flujo', 27),
(220, 'Criptosistemas de Clave Pública.', 27),
(221, 'Funciones de Autenticación e Integridad', 27),
(222, 'Firma Digital y Certificados Digitales', 27),
(223, 'Aplicaciones Seguras.', 27),
(224, 'Ética profesional.', 23),
(225, 'La ética en los sistemas de información.', 23),
(226, 'La ética en la administración de los recursos informáticos.', 23),
(227, 'Delitos informáticos.', 23),
(228, 'El derecho informático.', 23),
(229, 'Proceso de creación de empresas.', 35),
(230, 'Ventajas e inconvenientes de ser un emprendedor', 35),
(231, 'El Plan de Negocio', 35),
(232, 'Alternativas', 35),
(233, 'Obligaciones legales en la constitución de la empresa.', 35),
(234, 'Fundamentos de la Contabilidad.', 39),
(235, 'Descripción del proceso contable', 39),
(236, 'El resultado del período: componentes', 39),
(237, 'Planificación y normalización contables', 39),
(238, 'Órganos reguladores.', 39),
(239, 'Diferencias con la contabilidad de gestión.', 39),
(240, 'Importancia de la contabilidad para la toma de decisiones.', 39),
(241, 'Conceptos básicos de la contabilidad de costes.', 43),
(242, 'El coste de los recursos.', 43),
(243, 'Sistema de contabilidad de costes', 43),
(244, 'Sistema de contabilidad de costes por procesos o departamentos', 43),
(245, 'Sistema de contabilidad de costes por órdenes de fabricación o pedidos', 43),
(246, 'Sistema de contabilidad de costes basado\r\nen las actividades', 43),
(247, 'Sistema de contabilidad de costes del producto.', 43),
(248, 'Introducción y leyes financieras.', 47),
(249, 'Leyes financieras utilizadas en la práctica', 47),
(250, 'Valoración de rentas financieras.', 47),
(251, 'Lógica de las operaciones financieras', 47),
(252, 'operaciones simples a corto, medio y largo plazo', 47),
(253, 'Préstamos', 47),
(255, 'Introducción al análisis de los estados económico-financieros', 51),
(256, 'La reforma contable y el Plan General de Contabilidad.', 51),
(257, 'El Balance y la Cuenta de Pérdidas y Ganancias.', 51),
(258, 'Análisis de liquidez, rentabilidad y flujos de efectivo.', 51),
(259, 'Empresa', 36),
(260, 'Organización empresarial- Política, dirección y gestión empresarial', 36),
(261, 'Integración empresarial', 36),
(262, 'Información, Comunicación y Conocimiento', 36),
(263, 'Sociología, Economía y Derecho en el entorno empresarial.', 36),
(264, 'Nueva Economía y Gestión Internacional', 36),
(265, 'Política económica, industrial y tecnológica', 36),
(266, 'Desarrollo, consolidación, crecimiento y emprendimiento de negocios', 36),
(267, 'Gestión Estratégica de Recursos Humanos', 40),
(268, 'Análisis, Descripción y Valoración de Puestos', 40),
(269, 'Reclutamiento, Selección y Promoción', 40),
(270, 'Evaluación de Desempeño y Gestión por Competencia.', 40),
(271, 'Retribución e Incentivos.', 40),
(272, 'Formación y Planes de Carrera.', 40),
(273, 'Prevención de Riesgos Laborales:\r\nOHSAS 18001.', 40),
(274, 'Auditoría de Recursos Humanos.', 40),
(275, 'Ética empresarial', 40),
(276, 'Conceptos generales sobre autómatas programables.', 44),
(277, 'Aplicaciones.', 44),
(278, 'Célula flexible.', 44),
(279, 'Sensores y actuadores.', 44),
(280, 'Programación de autómatas: el GRAFCET', 44),
(281, 'Redes de autómatas', 44),
(282, 'Mantenimiento de autómatas', 44),
(283, 'Fundamentos de la Dirección de Operaciones.', 48),
(284, 'Diseño y desarrollo de servicios', 48),
(285, 'Decisiones de localización.', 48),
(286, 'Distribución en planta.', 48),
(287, 'Gestión de la cadena de suministro', 48),
(288, 'Gestión de inventarios, MRP y control de la actividad de producción.', 48),
(289, 'Filosofías y metodologías industriales', 48),
(290, 'Estudio de las fases, tipos y técnicas de la investigación de mercados.', 37),
(291, ' Métodos cualitativos y cuantitativos de investigación, y procesos de análisis e interpretación de resultados.', 37),
(292, 'Estudiar los procesos de marketing relacional y sus técnicas específicas: ', 41),
(293, ' posicionamiento, segmentación, procedimientos de análisis y medición de la eficacia entre otras.', 41),
(294, 'Producto y ciclo de vida del producto.', 41),
(295, 'Importancia de la marca y comercialización.', 41),
(296, 'Precio del producto y estrategias de fijación de precios.', 41),
(297, 'Sistemas de distribución y comercialización de productos.', 41),
(298, 'Sistemas de información y comunicación en la empresa.', 41),
(299, 'Marketing y competitividad empresarial.', 41),
(300, 'Características del Marketing online.', 45),
(301, 'Publicidad digital y plan de medios.', 45),
(302, 'Gestión de marca en internet.', 45),
(303, 'Plan de marketing digital.', 45),
(304, 'Comunicación y empresa.', 49),
(305, 'Necesidades y estrategias de comunicación entre los diferentes actores relacionados (clientes, consumidores, socios, proveedores, financiadores, etc.)', 49),
(306, 'Las comunicaciones administrativas y comerciales. ', 49),
(307, 'Flujos de comunicación interna.', 49),
(308, 'Concepto y elementos de la imagen corporativa', 49),
(309, 'Responsabilidad Social Corporativa y el rol de las RRPP.', 49),
(310, 'Gestión de conflictos empresariales.', 49),
(311, 'Plan integral de relaciones públicas.', 18),
(312, 'Gestión de crisis.', 49),
(313, 'Lobbying.', 49),
(314, 'Principios teóricos sobre la construcción de las imágenes para interpretar y analizar las representaciones visuales en diferentes medios (cine, televisión, fotografía, y pintura).', 38),
(315, 'Estudio de los principales conceptos, autores y corrientes sobre la imagen y su interpretación (haciendo especial énfasis en los aspectos semióticos).', 38),
(316, 'Estudio de la estructura', 42),
(317, 'los conceptos', 42),
(318, 'los autores', 42),
(319, 'los enfoques de la denominada Sociedad de la Información y del Conocimiento', 42),
(320, 'Fundamentos y Técnicas de animación digital y 3D.', 46),
(321, 'Animación en Internet (flash, animación u diseño)', 46),
(322, 'Animación de 3D para Televisión.', 46),
(323, 'Contenidos multimedia informativos.', 50),
(324, 'Web y Comunicación 2.0', 50),
(325, ' Contenidos informativos online.', 50),
(326, 'Weblogs y Comunicación.', 50),
(327, 'Plataformas y herramientas 2.0 para comunicadores', 50),
(328, 'wikis, mapas, presentaciones, RSS, redes sociales y otros recursos.', 50),
(329, 'Se desarrollan actividades relativas al área de ingeniería informática en un contexto laboral auténtico.', 29),
(330, 'Los contenidos y las características de las tareas que realizan los estudiantes durante el período de prácticas están determinados per la empresa / institución.', 29),
(331, 'Al finalizar este período el alumno deberá elaborar una memoria descriptiva sobre la experiencia laboral vivida.', 29),
(332, 'Las horas efectivas de prácticas son 120 horas. El resto (30 horas) deben destinarse a la elaboración de la memoria y a las tutorías.', 29),
(333, 'El alumno deberá elaborar un trabajo de integración de los conocimientos y habilidades adquiridos a lo largo de los estudios', 33),
(334, 'Para ello, podrá elaborar un trabajo investigativo de diferentes modalidades (teórico, diseño de un proyecto, aplicación práctica, evaluación de programas de intervención, etc.)', 33),
(335, 'Además en las sesiones de tutorías se abordarán los siguientes contenidos: Contenido y características formales de un trabajo académico; tratamiento\r\ny comunicación de la información;', 33),
(336, ' comparación y evaluación de la información (índices de calidad); normativa y herramientas para la elaboración de la bibliografía del TFG; la defensa oral: contenido y características formales.', 33),
(337, 'Riesgo en las carteras de renta fija.', 47);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_contenido_otros`
--

CREATE TABLE `tb_contenido_otros` (
  `id` int(11) NOT NULL,
  `contenido` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_asignaturas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_contenido_otros`
--

INSERT INTO `tb_contenido_otros` (`id`, `contenido`, `id_asignaturas`) VALUES
(1, 'Teoría de conjuntos elemental: unión, intersección,\r\ncomplementario, leyes de Morgan;\r\nfunciones;\r\nrelaciones de orden y equivalencia; inducción.\r\nÁlgebra Lineal:\r\nEspacios vectoriales, bases;\r\nAplicaciones lineales, matrices;\r\nresolución de ecuaciones lineales;\r\nteoría del endomorfismo;\r\ngeometría euclídea\r\nAnillos, cuerpos, grupos;\r\npolinomios univariados;\r\ndivisibilidad: algoritmo de euclides;\r\necuación diofántica lineal y Teorema chino de los restos\r\nGrupos finitos', 68),
(2, 'Bloque: I Análisis de eficiencia de algoritmos.\r\nOrdenes de magnitud.\r\nResolución de recurrencias.\r\nBloque II:\r\nGrafos y su implementación.\r\nÁrboles y grafos acíclicos.\r\nAlgoritmo de Kruskal y Prim.\r\nRecorrido sobre grafos.\r\nCaminos mínimos.\r\nBloque III:\r\nBacktracking y ramificación y poda.\r\nAlgoritmos voraces y heurísticas voraces.\r\nEl algoritmo de Kruskal como algoritmo voraz.\r\nBloque IV:\r\nEsquema divide-y-venceras\r\nProgramación dinámica\r\nDiferencias entre Programación dinámica,\r\ndivide-y-venceras y algoritmos voraces.\r\nBloque V:\r\nClases de complejidad, problemas de decisión y\r\noptimización.\r\nLa clase de problemas P, NP y NP-Completos.\r\nProblemas NP-Completos sobre grafos.', 83),
(3, 'Estudio de la simulación exacta y aproximada de la\r\ndinámica simple en un ordenador: trayectorias de objetos\r\nbajo fuerzas gravitatorias y de rozamiento.\r\nComo herramientas técnicas para este propósito: cálculo\r\nde derivadas (en una y varias variables) y de primitivas;\r\nmétodos básicos de resolución de ecuaciones\r\ndiferenciales ordinarias (separación de variables\r\necuaciones lineales de primer orden, ecuaciones lineales\r\nhomogéneas de segundo orden con coeficientes\r\nconstantes, incluyendo un breve repaso de la aritmética\r\ncompleja); existencia, unicidad y resolución numérica de\r\nproblemas de valores iniciales.\r\nEstudio de los elementos básicos de las gráficas en una\r\nsimulación informática: dibujo de curvas, recorrido de las\r\nmismas a la velocidad deseada.\r\nComo herramientas para la consecución de estos\r\nobjetivos: interpolación polinomial; cálculo de trazadores\r\ncúbicos; integral definida y Teorema Fundamental del\r\nCálculo; curvas parametrizadas, longitud y\r\nparametrización por longitud de arco; cálculo aproximado\r\nde integrales mediante la regla del punto medio\r\ncompuesta.\r\nEstudio de algunos métodos matemáticos básicos para la\r\ntoma de decisiones por una inteligencia artificial en un\r\nvideojuego: previsión de la localización de un jugador,\r\nselección de la mejor estrategia.\r\nComo herramientas matemáticas para estos objetivos:\r\ncálculo aproximado de derivadas de primer y segundo\r\norden; Teorema de Taylor; resolución de ecuaciones y\r\nsistemas de ecuaciones mediante el método de bisección,\r\nsecante, Newton y Newton modificado; optimización de\r\nfunciones de varias variables reales; método del gradiente.', 73),
(4, '1. INTRODUCCIÓN A LAS BASES DE DATOS\r\nConcepto de Base de Datos y SGBD. De los sistemas de\r\nficheros a la BD relacional. Niveles de abstracción.\r\nRazones que justifican el uso de BD. Cuándo no usar una\r\nBD. Introducción a las bases de datos relacionales y al\r\nlenguaje estándar SQL. Concepto de transacción.\r\nArquitectura del SGBD. Roles de usuarios.\r\n2. MODELO DE DATOS RELACIONAL\r\nIntroducción. El modelo relacional: elementos básicos,\r\nclases de relaciones, restricciones, valores nulos.\r\nEsquemas relacionales. El modelo relacional y la\r\narquitectura ANSI-SPARC. Fases del diseño e\r\nimplementación de BD: Modelos conceptuales, lógicos y\r\nfísicos. Herramientas CASE\r\n\r\n3. LENGUAJE SQL\r\nIntroducción al lenguaje SQL. Estándares. Tipos de datos.\r\nSentencias para la creación, alteración y manipulación de\r\nbases de datos. Índices. Vistas. Gestión de transacciones.\r\nGestión de errores. Procedimientos, funciones y\r\ndisparadores.\r\n4. ADMINISTRACIÓN DE BASES DE DATOS\r\nArquitectura del Servicio de Informática de una\r\nOrganización. Funciones del administrador de BD y del\r\nadministrador de datos.\r\nHerramientas de administración de BD. Aspectos\r\nrelacionados con la seguridad y encriptación de datos, la\r\ndisponibilidad e integridad de la información.\r\n5. DISEÑO Y DESARROLLO DE APLICACIONES DE\r\nBASE DE DATOS\r\nConcepto de aplicación. Elementos de las aplicaciones.\r\nArquitecturas de las aplicaciones de usuario. Lenguajes y\r\nherramientas. Tecnologías.\r\n6. OTROS MODELOS DE DATOS\r\nIntroducción a otros modelos de datos: objeto-relacional,\r\norientado a objeto, multidimensional, semiestructurado,\r\netc', 84),
(5, 'LA EMPRESA Y SU ENTORNO Tema 1. La empresa\r\nTema 2. El entorno de la empresa Tema 3. El entorno\r\nmacroeconómico Tema 4. El entorno sectorial y\r\nmicroeconómico\r\n\r\nDIRECCIÓN Y GESTIÓN DE LA EMPRESA Tema 5.\r\nDirección, planificación y control Tema 6. Organización y\r\ncomportamiento organizativo Tema 7. La dirección de\r\nrecursos humanos Tema 8. Inversión y financiación\r\nempresarial Tema 9. Contabilidad.\r\nGESTIÓN DE LA PRODUCCIÓN EN LA EMPRESA Tema\r\n10. Producción y productividad Tema 11. Gestión\r\neconómica de stocks Tema 12. Planificación de la\r\nproducción Tema 13. Proceso de planificación maestra\r\nTema 14. Control de proyectos', 74),
(6, 'Estadística Descriptiva\r\nProbabilidad\r\nDistribuciones de Probabilidad\r\nIntervalos de Confianza y Contrastes de Hipótesis\r\nRegresión y Correlación\r\nIntroducción a la Optimización\r\nMétodos y Aplicaciones\r\nAlgoritmos de Optimización', 75),
(7, 'Sistemas de Entrada/Salida.\r\nDefinición de E/S; Dispositivos y Controladores de E/S;\r\nEjemplo de dispositivos: Dispositivos de almacenamiento\r\nmasivo: discos SSD; Fases de gestión de la E/S; Software\r\nde gestión: Driver; Rendimiento de la E/S.\r\nGestión de la Entrada/Salida.\r\nDescripción del sistema de E/S de la Raspberry-Pi; El\r\ndispositivo más sencillo: GPI; Ejemplo de programación\r\npara el manejo de LEDs y pulsadores; Modelo gestión de\r\nE/S por encuesta; El timer: descripción y utilidad; Las\r\nexcepciones en ARM; Gestión de E/S por excepciones:\r\nfases de la gestión de las interrupciones; Programación\r\ndel timer; Transferencia de datos por DMA\r\nOtros dispositivos de E/S en la Raspberry-Pi.\r\nLa comunicación serie: Interfaz SPI y control de una\r\npantalla; E/S analógica: Dispositivos de audio (PWM).\r\nElementos de interconexión: buses.\r\nNecesidades de interconexión de los componentes del\r\ncomputador; Estructura de un bus: modo de operación,\r\nprincipales elementos de diseño; Estudio del rendimiento\r\ndel bus; Principales elementos del diseño de un bus;\r\nEjemplo de bus: El bus PCI.\r\nUnidad de Memoria.\r\nConceptos básicos: tipos de memoria, mapa de memoria\r\ny medidas del rendimiento; Jerarquía de memoria;\r\nIntroducción a la Memoria cache; La memoria principal:\r\norganización y conexión.', 78),
(14, '1. Introducción.\r\nEstructura de Datos.\r\nTipo de Datos Abstracto.\r\nInterfaces en POO.\r\nInterfaces genéricas\r\nColecciones Java.\r\nRelación con asignaturas anteriores.\r\n\r\n2. Análisis de algoritmos.\r\nConcepto de algoritmo.\r\nEficiencia de los algoritmos.\r\nNotación asintótica.\r\nCálculo de tiempos de ejecución.\r\nCálculo de tiempos de ejecución de algoritmos recursivos\r\nsencillos.\r\n\r\n3. Listas\r\nTDA Lista.\r\nIteradores.\r\nImplementación de listas con arrays.\r\nPunteros.\r\nImplementación de listas mediante celdas simplemente\r\nenlazadas.\r\nIterador en listas simplemente enlazadas.\r\nImplementación de listas mediante celdas doblemente\r\nenlazadas.\r\nIterador en listas doblemente enlazadas.\r\nImplementación de listas basada en cursores.\r\nComparación de las implementaciones.\r\nListas en “Java Collections Framework”\r\n\r\n4. PilasPilas y Colas.\r\nTDA Pila.\r\nImplementación de Pilas basada en array.\r\nImplementación de Pilas basada en celdas enlazadas.\r\nTDA Cola.\r\nImplementación de Colas basada en array circular.\r\nImplementación de Colas basada en celdas enlazadas.\r\nComparación de las implementaciones.\r\nPilas y Colas en “Java Collections Framework”\r\n5. Árboles.\r\nDefiniciones.\r\nRecorrido de árboles ordenados.\r\nEjemplos de aplicaciones de árboles.\r\nTDA árbol general.\r\nImplementación de árboles.\r\nÁrboles en “Java Collections Framework”.\r\n6. Mapas.\r\nTDA mapa.\r\nTablas de Dispersión y funciones de dispersión.\r\nImplementación de mapas basada en tablas de dispersión\r\nabierta.\r\nImplementación de mapas basada en tablas de dispersión\r\ncerrada.\r\nEficiencia de mapas basados en tablas de dispersión\r\nÁrboles binarios de búsqueda.\r\nImplementación de mapas basada en ABB.\r\nÁrboles AVL (Adelson-Velskii y Landis).\r\nÁrboles Rojinegros.\r\nImplementaciones de mapas: comparación.\r\nMapas en JCF.\r\n7. TDAs ordenados.\r\nLlaves y relaciones de orden total.\r\nRelaciones de orden en Java.\r\nOrdenación de secuencias.\r\nTDA Secuencia Ordenada.\r\nImplementación de secuencias ordenadas basada en\r\nlistas.\r\nTDA Cola de Prioridad.\r\nImplementación de Colas de Prioridad basada en celdas\r\nenlazadas.\r\nImplementación de Colas de Prioridad basada en\r\nMontículo binario.\r\nColas de Prioridad: comparación de las implementaciones.\r\nSecuencias ordenadas y Colas de prioridad en JCF.\r\n7. Conjuntos\r\nTDA Conjunto.\r\nImplementación de Conjuntos basada en tablas de\r\ndispersión.\r\nTDA Conjunto Ordenado.\r\nImplementación de Conjuntos Ordenados basados en\r\nárbol binario de búsqueda (ABB).\r\nTDA Bolsa.\r\nTDA Secuencia sin repetición.\r\nResumen de conjuntos y listas.\r\nConjuntos, Bolsas y Secuencias en JFC', 79),
(15, 'Bloque Temático 1: Campo eléctrico y propiedades eléctricas de la materia\r\n1.1 Carga, Aislantes y Conductores. Ley de Coulomb. Campo Eléctrico. Campo Eléctrico de una Distribución de Carga.\r\nLíneas de Campo Eléctrico. Flujo Eléctrico. Ley de Gauss. Aplicaciones de la Ley de Gauss. Conductores en\r\nequilibrio electrostático.\r\nPotencial Eléctrico. Obtención del Campo a partir del Potencial. Potencial Eléctrico debido a distribuciones\r\ncontínuas de carga. Potencial Eléctrico debido a un conductor cargado. APLICACIONES de la Electrostática.\r\nCapacidad y Dieléctricos. Cálculo de la capacidad. Combinación de Condensadores. Energía almacenada en un\r\nCondensador cargado. Condensadores con Dieléctricos. Tipos de Condensadores.\r\n1.2 Resolución de problemas y cuestiones propuestos por el profesor al comenzar el desarrollo del bloque temático.\r\n1.3 PRÁCTICA 1. Instrumentación básica en un Laboratorio de Circuitos. Manejo de Multímetros y Fuentes de\r\nAlimentación.\r\nPRÁCTICA 2. Estudio de Elementos Resistivos.\r\n1.4 (2-4 alumnos según disponibilidad) Planteamiento de problemas de diseño, a resolver por grupos, para practicar\r\ncon el material presentado en el Bloque Temático.\r\n\r\n2 Bloque Temático 2: Electrocinética\r\n2.1 Corriente Eléctrica y Densidad de corriente. Velocidad de arrastre. Resistencia. Resistencia y Temperatura. Energía\r\nEléctrica y Potencia. Potencia en un calefactor eléctrico.\r\nCircuitos de Corriente Contínua. Equivalentes Thevenin y Norton. Transferencia de Potencia. Técnicas de Nudos y\r\nMallas.\r\n2.2 Resolución de problemas y cuestiones propuestos por el profesor al comenzar el desarrollo del bloque temático.\r\n2.3 PRÁCTICAS en LSC ( 3 Sesiones + 1 Sesión de Evaluación). Introducción a los Simuladores Circuitales (EWB).\r\nPRÁCTICA 3. Equivalentes Thevenin y Norton en el Laboratorio.\r\n2.4 (2-4 alumnos según disponibilidad) Planteamiento de problemas de diseño, a resolver por grupos, para practicar\r\ncon el material presentado en el Bloque Temático.\r\n\r\n3 Bloque Temático 3: Campo magnético e Inducción electromagnética. Ecuaciones de Maxwell\r\n3.1 Fuerza ejercida por un campo magnético. Fuerza sobre conductor de corriente. Movimiento de una partícula\r\ncargada. Fuerza de Lorentz. (APLICACIONES).\r\nFuentes Campo Magnético. Fuerza magnética entre dos conductores paralelos. Ley de Ampère. Campo magnético\r\nde un solenoide. Flujo magnético. Magnetismo de la Materia.\r\nInducción electromagnética y autoinducción. Corriente de inducción. Leyes de Faraday y de Lenz. Autoinducción e\r\ninductancia. Energía de un campo magnético asociado a un inductor.\r\nEcuaciones de Maxwell. Propagación de ondas electromagnéticas.\r\n3.2 Resolución de problemas y cuestiones propuestos por el profesor al comenzar el desarrollo del bloque temático.\r\n3.3 (2-4 alumnos según disponibilidad) Planteamiento de problemas de diseño, a resolver por grupos, para practicar\r\ncon el material presentado en el Bloque Temático.\r\n\r\nBloque Temático 4: Circuitos eléctricos en regimen transitorio\r\n4.1 Evolución temporal del estado de un circuito. Circuitos de primer y segundo orden. Ecuaciones de los elementos\r\nalmacenadores de energía. Análisis de circuitos de primer orden en regimen transitorio. Circuitos sin fuentes de\r\nexcitación y condiciones iniciales no nulas. Circuitos con fuentes de excitación y condiciones iniciales nulas.\r\nCircuitos con fuentes de excitación y condiciones iniciales no nulas.\r\n4.2 Resolución de problemas y cuestiones propuestos por el profesor al comenzar el desarrollo del bloque temático.\r\n4.3 \r\nPRÁCTICA 4. Manejo de Osciloscopios y Generadores de Funciones.\r\nPRÁCTICA 5. Estudio de Circuitos RC.\r\n4.4 (2-4 alumnos según disponibilidad) Planteamiento de problemas de diseño, a resolver por grupos, para practicar\r\ncon el material presentado en el Bloque Temático.\r\n\r\n5 Bloque Temático 5: Introducción a la electrónica\r\n5.1 Física Cuántica. Efecto Fotoeléctrico. Modelo cuántico de Bohr del átomo. Fotones y Ondas Electromagnéticas.\r\nFísica Atómica. Estructura del átomo. Transiciones atómicas.\r\nFísica de estado Sólido. Enlaces entre átomos y moléculas. Teoría de bandas en sólidos. Metales,\r\nSemiconductores y Aislantes. Clasificación de los Semiconductores. Concentración de portadores de carga.\r\nCorrientes en Semiconductores. Fabricación de Dispositivos.\r\nDispositivos Semiconductores I – Diodos. Diodo semiconductor - Unión pn. Diodo Rectificador. (APLICACIONES).\r\nDispositivos Semiconductores II – Transistores. Transistor bipolar BJT. Transistores de efecto campo FET. El\r\ntransistor JFET. El transistor MOSFET. Tecnologías bipolar y CMOS. Circuitos Lógicos. (APLICACIONES).\r\n5.2 Resolución de problemas y cuestiones propuestos por el profesor al comenzar el desarrollo del bloque temático.\r\n5.3 PRÁCTICA 6. Estudio de Diodos.\r\nPRÁCTICA 7. Estudio de Transistores.\r\n5.4 (2-4 alumnos según disponibilidad) Planteamiento de problemas de diseño, a resolver por grupos, para practicar\r\ncon el material presentado en el Bloque Temático.', 69),
(16, 'Presentación de la asignatura y familiarización con los\r\nrecursos bibliográficos.\r\nObjetivos de aprendizaje-enseñanza (B1/B2) y prueba de\r\ndiagnóstico.\r\nRepaso general de conceptos funcionales, léxicos,\r\ngramaticales, morfosintácticos y fonéticos.\r\nParts of a computer.\r\nFunctions of a PC.\r\nTypes of computer systems.\r\nGrammar: Passive Voice and Modal Verbs.\r\n\r\nProcessing.\r\nInput and output devices.\r\nGrammar: Relative Clauses and\r\nComparatives/Superlatives.\r\nOperating systems, user interfaces and computer\r\nsoftware.\r\nFormal and informal letters.\r\nGrammar: Infinitives vs Gerunds, countable and\r\nuncountable nouns.\r\nComputer networks.\r\nThe Internet.\r\nGrammar: Collocations and Conditionals.\r\nProgramming.\r\nGrammar: Reported Speech.', 70),
(17, 'Introducción a la Ingeniería de Computadores.\r\nRepresentación de la información en el computador.\r\n- Números naturales, enteros, reales\r\n- Caracteres\r\n- Desbordamiento\r\n\r\nArquitectura del procesador ARM.\r\n- Lenguaje ensamblador\r\n- Lenguaje máquina\r\n- Compilar, ensamblar, enlazar, ejecutar programas\r\nMicroarquitectura del procesador ARM.\r\n- Análisis de rendimiento\r\n- Procesador monociclo', 76),
(18, 'BLOQUE TEMÁTICO 1: Programación en un lenguaje\r\nimperativo estructurado de alto nivel\r\n\r\nPresentación de la asignatura\r\nIntroducción a los lenguajes de programación.\r\nLenguajes de alto nivel. El proceso de compilación. El\r\nciclo de vida del software. Concepto de algoritmo.\r\nEstructura general de un programa.\r\nFundamentos de programación en C.\r\nEstructura de un programa C. Entrada/salida de texto y de\r\ncaracteres. Entrada/salida de números. Funciones\r\nDatos y expresiones.\r\nTipos primitivos. Variables y constantes. Operadores y\r\nexpresiones. Conversión de tipos. Paso de parámetros.\r\nUso de funciones matemáticas.\r\nEstructuras algorítmicas.\r\nInstrucción condicional. Instrucción condicional múltiple.\r\nInstrucciones de bucle. Recursividad. Descripción de\r\nalgoritmos mediante pseudocódigo.\r\nDatos compuestos.\r\nArrays y tablas unidimensionales. Algoritmos de recorrido\r\ny búsqueda. Arrays multidimensionales. Tipos\r\nenumerados. Estructuras\r\n\r\nProgramación modular\r\nDiseño modular. Ámbito de las variables. Bibliotecas\r\n\r\nEstructuras de datos dinámicas\r\nDefinición. Declaración de punteros y asignación de\r\nmemoria. Reserva dinámica de memoria. Punteros y\r\nfunciones. Punteros y estructuras\r\nBLOQUE TEMÁTICO 2: Herramientas\r\nUso de sistemas operativos.\r\nSistemas operativos comunes. El sistema de ficheros. El\r\nintérprete de órdenes. Ejecución de programas. El gestor\r\ngráfico de ficheros. Uso de la memoria USB. Guiones\r\n(scripts).\r\nUso de un entorno integrado de desarrollo de programas.\r\nProceso de desarrollo de programas. El compilador y la\r\nejecución. Entorno integrado de desarrollo. La depuración.\r\nGeneración de documentos.\r\nUso de una hoja de cálculo.\r\nIntroducción. Creación de una hoja de cálculo. Fórmulas.\r\nFormatear las celdas. Gráficos. Hojas múltiples. Ordenar\r\ndatos. Configuración regional\r\nUso de una base de datos.\r\nIntroducción. Creación de una base de datos. Tablas de\r\ndatos. Relaciones entre datos. Consultas. Formularios.\r\nInformes', 71),
(19, 'INTRODUCCIÓN\r\nLógica en la informática, historia.\r\nConceptos fundamentales.\r\nLÓGICA PROPOSICIONAL\r\n1. Sintaxis y Semántica\r\n - Introducción: proposiciones y conectivas\r\n - Sintaxis: alfabeto y gramática\r\n - Semántica: Interpretación y evaluación, satisfabilidad,\r\nconsecuencia lógica, equivalencia\r\n2. Formas Normales\r\n - Formas normales conjuntiva y disyuntiva\r\n - Forma clausal, equisatisfabilidad, cláusulas de Horn,\r\nestrategias de borrado.\r\n3. Métodosde prueba:\r\n - Prueba por refutación\r\n - Tablas de verdad\r\n - Arboles semánticos\r\n - Resolución: regla de resolución (consistencia), prueba\r\npor resolución (consistencia, completud), algoritmo de\r\nresolución.\r\n - Deducción natural (*)\r\nLÓGICA DE PREDICADOS\r\n1. Sintaxis y Semántica:\r\n - Introducción: motivación, extensión de L0\r\n - Sintaxis: alfabeto, fórmulas, cuantificadores\r\n - Semántica: interpretación y evaluación, satisfabilidad,\r\nconsecuencia lógica, equivalencia.\r\n2. Formas Normales\r\n - Forma normal prenex: renombrado, definición y\r\nexistencia, transformación\r\n - Forma normal de Skolem: definición, algoritmo de\r\nSkolemización, equisatisfabilidad\r\n - Forma clausal: definición, transformación\r\n3. Teorema de Herbrand (*)\r\n - Semidecibilidad, universo de Herbrand\r\n - Base e interpretación de Herbrand, Teorema de\r\nHerbrand\r\n - El método de Gilmore y el método de Davis y Putnam\r\n4. Resolución\r\n - Sustituciones\r\n - Unificación, unificador más general\r\n - Resolución: regla de resolución, prueba por resolución\r\n - Estrategias y refinamientos de resolución (*)\r\nPROGRAMACIÓN LÓGICA\r\n - Introducción, resolución SLD\r\n - Sintaxis básica de Prolog, proceso de resolución\r\n - Aritmética, recursividad, recursividad de cola\r\n - Estructuras estáticas y dinámicas\r\n - Estructuras de control: el corte (*)', 85),
(20, 'COMBINATORIA\r\nAplicaciones y enumeración.\r\nPrincipios enumerativos.\r\nDistribuciones. Subconjuntos y particiones. Relaciones de\r\nequivalencia.\r\nSeries de potencias formales. Funciones generatrices:\r\nRecurrencias lineales.\r\n\r\nCUERPOS FINITOS Y CÓDIGOS CORRECTORES\r\nCuerpos finitos: existencia y construcción.\r\nCódigos lineales: construcción y corrección de errores.\r\nTEORÍA DE GRAFOS\r\nDefinición, representación e isomorfismos.\r\nCaminos y ciclos; grafos eulerianos y hamiltoniano.\r\nDistancias y caminos mínimos, conexión y conectividad.\r\nÁrboles generadores, algoritmos de ordenación.\r\nBúsqueda en anchura y profundidad.\r\nGrafos bipartitos y problemas de emparejamiento.\r\nColoraciones en grafos.', 80),
(21, '1. Introducción al lenguaje Java.\r\nCaracterísticas principales. Compilación para máquina\r\nvirtual. Estructura de un programa. Datos y expresiones.\r\nEstructuras algorítmicas. Datos compuestos.\r\nEntrada/salida básica. Concepto de clase y objeto.\r\nIntroducción a las clases y objetos en Java.\r\n\r\n2. Proceso de desarrollo de software.\r\nIngeniería del software. Procesos de desarrollo de\r\nsoftware. Modelado del software: UML. Introducción al\r\nanálisis de requisitos. Diseño orientado a objetos.\r\nProgramación orientada a objetos. Proceso de desarrollo\r\nusado en la asignatura\r\n3. Clases, referencias y objetos en Java.\r\nCreación e inicialización de objetos. Tipos primitivos,\r\nreferencias y objetos. Comparación de objetos. Recolector\r\nde basura. Métodos y campos de clase (o estáticos).\r\nAnidamiento de clases.\r\n4. Diseño Modular.\r\nConceptos de modularidad y abstracción. Modificadores\r\nde acceso básicos. Paquetes. Módulos genéricos.\r\nProgramación con módulos predefinidos. Documentación\r\ndel código fuente. Patrón Modelo-Vista-Controlador\r\n5.Herencia y Polimorfismo.\r\nHerencia. Clases abstractas. Polimorfismo. La clase\r\nObject\r\n6. Tratamiento de errores.\r\nTratamiento de errores por paso de parámetros.\r\nExcepciones Java: generación y propagación automática.\r\nBloques de tratamiento excepciones. La cláusula finally.\r\nPatrones de tratamiento de excepciones. Lanzar\r\nexcepciones. Creación de excepciones propias.\r\nExcepciones “comprobadas” y cláusula throws.\r\nNotificación de errores mediante excepciones. Usos\r\nincorrectos de las excepciones\r\n7. Entrada/salida con ficheros.\r\nConceptos básicos. Flujos de datos (streams). E/S de\r\ntexto. E/S de texto con formato. E/S binaria.\r\n8. Prueba de programas.\r\nVerificación y validación. Pruebas del software. Caja\r\nnegra. Herramienta JUnit.', 77),
(22, 'Tema 1: Rendimiento y consumo energético de\r\nComputadores.\r\n1.1 Definición de rendimiento de computadores.\r\n1.2 Métricas de rendimiento.\r\n1.3 Ecuación de prestaciones de CPU\r\n1.4 Programas de prueba o benchmarking.\r\n1.6 Consumo de potencia y Energía\r\n1.7 Conclusiones y resumen del tema.\r\n1.8 Ejercicios.\r\n\r\nTema 2: Jerarquía de memoria\r\n2.1. Concepto de Jerarquía de Memoria\r\n2.2 Conceptos Básicos.\r\n2.3. Memoria Cache.\r\n2.4 Rendimiento de la Memoria Cache\r\n2.5 Memoria Virtual.\r\n2.6 Conclusión y resumen del tema.\r\n2.7. Ejercicios.\r\n\r\nTema 3: El procesador: Camino de Datos y de Control.\r\n3.1 Definición de Conceptos Básicos.\r\n3.2 Formato del Repertorio de Instrucciones.\r\n3.3 Diseño del camino de datos.\r\n3.4 Unidad de Control del Procesador\r\n3.5 Funcionamiento del Procesador.\r\n3.6 Problemas de la implementación monociclo.\r\n3.7 Conclusiones y resumen del tema.\r\n3.8 Ejercicios\r\nTema 4: Procesadores Segmentados.\r\n4.1 Concepto de segmentación\r\n4.2 Procesamiento segmentado de instrucciones\r\n4.3 Segmentación del camino de datos en el procesador\r\nMIPS\r\n4.4 Control del procesador segmentado.\r\n4.5 Problemas de la segmentación.\r\n4.6 Riesgos de datos y anticipación.\r\n4.7 Riesgos de datos y bloqueos.\r\n4.8 Riesgos de control: saltos\r\n4.9 Paralelismo a nivel de instrucción.\r\n4.10 Conclusiones y resumen del tema.\r\n4.11 Ejercicios.\r\nTema 5. Arquitecturas Paralelas\r\n5.1 Introducción\r\n5.2 SIMD y Procesamiento Vectorial\r\n5.3 Ejecución Multihilo en Hardware\r\n5.4 Multiprocesadores de Memoria Compartida\r\n5.5 Multiprocesadores de Memoria Distribuida o Clusters\r\n5.6 Introduccion a las Unidades de Procesamiento Grático', 86),
(23, 'INTRODUCCIÓN A LOS SISTEMAS DE INFORMACIÓN:\r\n1. Conceptos de Sistema, Información y Sistema de\r\nInformación\r\n2. Los sistemas y su entorno\r\n3. Aplicación de las Tecnologías de Información a los\r\nSistemas de Información\r\n4. Concepto de Ingeniería del Software\r\nLOS SISTEMAS DE INFORMACIÓN EN LAS\r\nORGANIZACIONES:\r\n1.¿Qué es una organización ?\r\n2.Niveles de trabajo y planificación: Estrategia, Táctica,\r\nOperativa\r\n3.Tecnologías de la Información y Organizaciones\r\n4.Estructura de los Sistemas de Información en las\r\norganizaciones\r\n5.Automatización de los Sistemas de Información\r\nSISTEMAS DE INFORMACIÓN Y NECESIDADES DE\r\nNEGOCIO:\r\n1.Introducción a la Ingeniería de Requisitos\r\n2.Clasificación de requisitos\r\n3.Técnicas de recogida de información\r\n4.Técnicas de especificación de requisitos\r\nSEGURIDAD DE LOS SISTEMAS DE INFORMACIÓN:\r\n1.¿Qué es la protección y seguridad de la Información?\r\n2.Conceptos Fundamentales: Confidencialidad, Integridad,\r\nDisponibilidad\r\n3.Políticas de Seguridad\r\n4.Principios Fundamentales de la Seguridad Informática\r\nGESTIÓN DE RIESGOS ASOCIADOS A UN SISTEMA DE\r\nINFORMACIÓN:\r\n1. Valor de un Sistema de Información\r\n2. Vulnerabilidad, Amenazas y Contramedidas\r\n3. Planes de Contingencia\r\n4. Metodología MAGERIT\r\n5. ISO/IEC 27005:2011\r\n\r\nGESTIÓN DE LA INFORMACIÓN:\r\n1.Estructuración y conceptualización de la Información\r\n2.Tecnologías XML para gestionar información\r\n3.Sistemas de recuperación de la información\r\nSISTEMAS DE INFORMACIÓN WEB:\r\n1.Origen de Internet\r\n2.Principales servicios de Internet\r\n3.Creación de sistemas de información web', 81),
(24, 'Introducción:\r\n- Computador.\r\n- Circuitos Lógicos.\r\n- Información.\r\n- Codificación.\r\n- Señales Analógicas y Digitales.\r\n- Lenguajes.\r\n- Programas.\r\nNúmeros naturales:\r\n- Sistema de numeración y operaciones básicas.\r\n- Números enteros\r\nCircuitos lógicos combinacionales:\r\n- Introducción, definición.\r\n- Modelo matemático.\r\n- Puertas lógicas.\r\n- CLC grandes interconectando pequeños.\r\n- Análisis de CLC.\r\n- Álgebra de conmutación.\r\n- Análisis y síntesis usando el álgebra de conmutación.\r\n- Suma de minterms.\r\n- Decodificador.\r\n- ROM.\r\nCircuitos lógicos secuenciales:\r\n- Introducción, definiciones básicas.\r\n- Necesidades de memoria, biestable D\r\n- Necesidades de sincronización, reloj.\r\n- Modelo de Mealy, especificación.\r\n- Modelo de Moore, especificación.\r\n- Síntesis de circuitos secuenciales.\r\n- Análisis de circuitos secuenciales\r\nElementos básicos de un procesador de propósito\r\ngeneral:\r\n- Unidad de proceso general.\r\n- Añadiendo memoria de datos.\r\n- Del secuenciamiento explícito al implícito.\r\n- Codificación de las señales de control.\r\n- Formato de instrucciones.\r\n- Unidad de control general.', 72),
(25, 'Introducción al sistema Operativo: Concepto de Sistema\r\nOperativo. Hardware y su Tratamiento. Visión funcional del\r\nsistema operativo. Evolución y componentes.\r\nUso de intérprete de comandos y el sistema de desarrollo.\r\nUso del sistema de desarrollo del Lenguaje C\r\nGestión de Procesos\r\nCreación de procesos POSIX.\r\nPlanificación de procesos.\r\nSincronización y Comunicación de procesos\r\nSincronización POSIX: Señales.\r\nComunicación POSIX: Pipes y Fifos.\r\nProcesos ligeros (threads)\r\nCreación de procesos ligeros POSIX (pthreads)\r\nSincronización de procesos ligeros POSIX: Mutex y\r\nvariables de condición.\r\n\r\nGestión de la memoria: Paginación y Segmentación.\r\nGestión de la memoria Virtual.\r\nGestión de disco: Sistemas de ficheros y directorios.', 87),
(26, 'VALORES Y DERECHOS\r\nIgualdad entre hombres y mujeres. Interculturalidad.\r\nAccesibilidad universal para las personas con\r\ndiscapacidad. Voluntariado. Cooperación para desarrollo.\r\nDerechos humanos. Ciudadanía europea. Protección de\r\ndatos. Mediación y Gestión de Conflictos. Propiedad\r\nintelectual y plagio. Normativa y patentes.Consumo\r\nresponsable.\r\nPROFESIÓN INFORMÁTICA:\r\nPapel del Ingeniero Informatico en la Sociedad del futuro.\r\nConcepto de Profesión. Características de la actividad\r\nprofesional en informática. Roles sociales de los\r\ninformáticos. Relaciones con usuarios y clientes: gestión\r\nde expectativas. Modelos de negocio en Informática.\r\nColegios y asociaciones profesionales. Códigos éticos en\r\nInformática. Normativa y regulación de la informática en\r\nlos ámbitos nacional, europeo e internacional. Aspectos a\r\ndebate sobre temas de interés informático\r\nGESTIÓN DE PROYECTOS:\r\nConcepto de Proyecto. Ciclo de Vida de un Proyecto.\r\nIntroducción a los procesos de Gestión de Proyectos.\r\nGestión de la integración y el alcance. Gestión del tiempo.\r\nGestión de riesgos. Gestión de costes.\r\nCOMPETENCIAS Y HABILIDADES:\r\nBúsqueda y uso legítimo de la información. Introducción a\r\nla programación en ANSI C. Presentaciones eficaces.\r\nSoftware LIbre.', 82),
(27, 'Tema 1. Tendencias actuales y futuro de la tecnología de\r\nbases de datos:\r\nEvolución de las tecnologías de gestión de datos.\r\nRespuesta tecnológica para afrontar nuevos retos.\r\nHitos en la evolución de la gestión de datos. Tipologías de\r\nBases de datos. Temas de interés y organizaciones\r\nrelevantes en BD\r\nTema 2. Bases de datos activas\r\nRepaso del modelo relacional. Modelar el comportamiento\r\nactivo en Bases de Datos. SQL Programático.\r\nOtros aspectos de SQL Avanzado.\r\n\r\nTema 3. Base de datos Objeto-Relacionales\r\nDebilidades de los SGBD Relacionales. Tipos de SGBD\r\ncon Objetos. Aspectos objetuales en el estándar\r\nSQL:2003. Modelo ODMG. Diseño de BD objetuales con\r\nUML. Transformación a diseños físicos en tecnología\r\nobjeto-relacional. Comparación de los gestores orientados\r\na objetos y objeto-relacionales.\r\nTema 4. Gestión de datos semiestructurados\r\nModelado de datos semi-estructurados. XML y Schemas\r\nXML. Lenguajes: XQuery y XPath. XML, JSON y Bases de\r\nDatos, estándares SQL/XML y SQL/JSON.\r\nTema 5. BD distribuidas\r\nBDD: conceptos, ventajas y riesgos de su uso.\r\nClasificación. Consideraciones de diseño: fragmentación y\r\nreplicación. Componentes relevantes de un gestor\r\ndistribuido.Servidores replicados. BD móviles.\r\nComparativa de las diferentes estrategias de distribución.\r\n\r\nTema 6. BD NoSQL\r\nIntroducción a las BD NoSQL: Propiedades, Tipos,\r\nVentajas e Inconvenientes. Taxonomía de soluciones.\r\nEjemplo de modelos e implementaciones NoSQL\r\nTema 7. Otras tipos de Bases de Datos.\r\nBD espaciales, geográficas, temporales, multimedia, etc', 102),
(28, 'CALIDAD DE LOS SISTEMAS DE INFORMACIÓN.\r\nDefiniciones de calidad y concepto de calidad en uso.\r\nIntroducción a los modelos y normas de calidad más\r\nrelevantes (ISO 9001, ISO 25000, CMMI). Seguridad de la\r\nTI en la organización y tecnología. Marco normativo y\r\nlegislativo (LOPD, ENS).\r\n\r\nCALIDAD DE PRODUCTO. Calidad de producto interna y\r\nexterna. Modelos, evaluación y medición (ISO 25000).\r\nHerramientas de análisis de la calidad de producto.\r\n\r\nCALIDAD DE PROCESO. Evaluación y mejora de\r\nprocesos (CMMI). Auditoría.', 103),
(29, 'BLOQUE I: INTRODUCCION A LA ASIGNATURA Y\r\nMODELADO DE FORMAS. Organizacion de la asignatura.\r\nBibliografia básica. Otras fuentes de informacion (revistas,\r\nlibros, CDs, sitios web). Software y hardware para\r\nanimación por computador y creación de videojuegos.\r\nEjemplos relevantes y ámbito de aplicación. Graficos por\r\nComputador Avanzados. Modelado de formas por\r\ncomputador (curvas, superficies, modelos poligonales,\r\nCSG). Práctica I: Algoritmos básicos de modelado gráfico.\r\nPráctica II: modelado de formas.\r\nBLOQUE II: ANIMACION POR COMPUTADOR.\r\nAnimación y efectos especiales en el cine. Fundamentos\r\nde la animación. Estudio de casos. Fundamentos de la\r\nanimación por computador. Estudio de casos. Humanos\r\nvirtuales. Modelado y animación del movimiento de\r\nactores sintéticos. Animación del comportamiento.\r\nInteligencia artificial. Modelos cognitivos. Práctica III:\r\nModelado de actores sintéticos. Práctica IV: Animación del\r\nmovimiento de actores sintéticos.\r\nBLOQUE III: DISEÑO Y CREACION DE VIDEOJUEGOS.\r\nHistoria de los videojuegos. Tipos de videojuegos. Etapas\r\nen el diseño, creacion e implementación de un videojuego.\r\nDesarrollo de un proyecto. Pipeline gráfico de un\r\nvideojuego. Producción digital. Práctica V: Creación de un\r\nentorno virtual 3D. Práctica VI: Diseño de un videojuego.', 104),
(30, 'Conceptos Algorítmicos Fundamentales. Análisis de\r\neficiencia. Caso peor y caso medio. Notación de Landau.\r\nDivide y vencerás. Análisis de algoritmos recursivos:\r\nBinary Search. Quicksort, MergeSort, QuickSetect.\r\nAnálisis de Estructuras de Datos: Árboles Binarios de\r\nBúsqueda. Árboles Balanceados. Heaps. Tries. Análisis\r\nde algoritmos voraces y estructuras asociadas: Dijkstra,\r\nPrim, Kruskal. Particiones. Hashing. Montículos de\r\nFibonacci.\r\nProgramación Dinámica. Principio de optimalidad.\r\nMemoización. Distancia de edición. Árboles binarios de\r\nbúsqueda óptimos. Algoritmo de Floyd-Warshall para\r\ncaminos mínimos. Problema del viajante de comercio.\r\nProblema de la mochila.\r\n\r\nAlgoritmos probabilistas. Clases de complejidad BPP y\r\nZPP. Análisis probabilístico. Ejemplos: test de primalidad\r\nde Rabin, skip lists, hashing universal.\r\nProgramación Lineal. Flujo en Redes. Juegos de suma\r\ncero. Evaluación de Circuitos. Método del Simplex:\r\nalgoritmo detallado y análisis de eficiencia.\r\nAlgoritmos aproximados y heurísticos. Tipos de\r\naproximación, relativa y absoluta. Cubrimiento de vértices.\r\ncubrimiento de vértices métrico. Cubrimiento de conjuntos.\r\nMochila. Búsquedas Locales, Heurísticas y\r\nMetaheurísticas', 105),
(31, 'Tema 1 - Principios Fundamentales del Diseño Software:\r\nModularidad. Principios GRASP. Principios SOLID. Diseño\r\npor Contrato. Programación Orientada a Aspectos.\r\nTema 2 - Patrones de Diseño Software.\r\nConcepto de Patrón, Antipatrón y Refactorización.\r\nPatrones GoF. Otros patrones no GoF. Inyección de\r\nDependencias. Expresiones Lambda\r\nTema 3 - Diseño e Implementación de Arquitecturas\r\nSoftware\r\nRevisión del Concepto de Arquitectura. Vistas\r\nArquitectónicas. Lenguajes de Descripción Arquitectónica.\r\nEvaluación de Arquitecturas Software\r\nTema 4 - Patrones Arquitectónicos Para Arquitecturas\r\nEmpresariales\r\nArquitecturas en Capas. Arquitectura Cliente-Servidor.\r\nDistribución de Capas en Arquitecturas Empresariales.\r\nPatrones para la Capa de Negocio. Patrones para la Capa\r\nde Persistencia. Patrones para la Capa de Servicio.\r\nPatrones para la Capa de Presentación. Arquitecturas\r\nBasadas en Microservicios.\r\nTema 5 - Medición de las Propiedades Fundamentales de\r\nun Diseño Software.\r\nEstabilidad del diseño. Métricas Orientadas a Objetos.\r\nMétricas Orientadas a Asuntos.', 106),
(32, 'Tema 1. Introducción a las tecnologías de acceso\r\n- Medios cableados e inalámbricos.\r\n- Topologías de red .\r\n- Redes broadcast y redes punto a punto.\r\n- Servicios: tipos y requisitos.\r\nTema 2. Tecnologías de acceso inalámbricas\r\n- Espectro radioeléctrico ISM.\r\n- La familia IEEE 802.11.\r\n- Estandarización.\r\n- Rendimiento de TCP/IP sobre IEEE 802.11.\r\n- Operaciones de gestión 802.11.\r\n- Mecanismos de seguridad en 802.11.\r\nTema 3. Redes de acceso celular\r\n- Arquitectura del sistema GSM.\r\n- El sistema GPRS.\r\n- Evolución de los sistemas 2G a 3G.\r\n- Estandarización: 3GPP.\r\n- El sistema UMTS.\r\n- Evolución a sistemas 4G: HSDPA y HSUPA.\r\n\r\nTema 4. Redes de paquetes X.25.\r\n- Circuito Virtual: permanente (CVP) y conmutado (CVC).\r\n- Canal lógico.\r\n- Nivel físico X.21.\r\n- Nivel de enlace LAPB\r\n- Nivel de red X.25.\r\n- Parámetros X.3.\r\n- Recomendaciones X.28, X.29 y X.32\r\nTema 5. Evolución de las redes troncales\r\n- Evolución en la capa lógica: Frame Relay, ATM, IP\r\n- Evolución en la capa física: SDH/SONET, MPLS, WDM,\r\nMetroEthernet\r\n\r\nTema 6. Gestión de red en sistemas OSI\r\n- Introducción y conceptos generales\r\n- Submodelos de una arquitectura de gestión de red\r\n- Areas funcionales de la gestión\r\n- Gestión integrada y distribuida\r\nTema 7. Protocolos de gestión: SNMP y RMON\r\n- Arquitectura SNMP\r\n- Sintaxis ASN.1: SMIv1\r\n- Arbol de registro INTERNET\r\n- MIB-II(RFC 1213)\r\n- Formato de los mensajes del protocolo SNMPv1\r\n- Mejoras Protocolo SNMPv2 y v3\r\n- Gestión RMON y MIB RMON', 107),
(33, 'Bloque I. Introducción a los Gráficos por Computador.\r\nBibliografía Básica. Aplicaciones y usos de los Gráficos\r\npor Computador. Ejemplos relevantes y ámbito de\r\naplicación. Historia de los Gráficos por Computador.\r\nFuentes de información: revistas, libros, CDs/DVDs, sitios\r\nweb. Hardware y Software para Gráficos por Computador.\r\nSoftware gratuito y comercial. Organización y enfoque del\r\ncurso. Algoritmos básicos para Gráficos por Computador.\r\nPractica I: Algoritmos de línea.\r\n\r\nBloque II. Algoritmos básicos para Gráficos 2D.\r\nTransformaciones 2D. Matrices de transformación.\r\nFractales: concepto, algoritmos de generación de fractales\r\n(recursivos, funciones complejas, atractores de sistemas\r\ndinámicos, sistemas de funciones iteradas, etc). IFS.\r\nConcepto. Algoritmos para IFS (determinista, probabilista,\r\nchaos game, óptimo). Aplicaciones de los IFS. L-sistemas:\r\nconcepto, métodos y aplicaciones. Simulación de\r\nfenómenos naturales. Aplicaciones a casos reales.\r\nPractica II: Transformaciones 2D. Practica III: Fractales.\r\nPractica IV: L-sistemas\r\nBloque III. Transformaciones 3D. Proyecciones y\r\nperspectivas. Algoritmos de líneas y superficies ocultas.\r\nAlgoritmo del pintor, Z-buffer. Diseño gráfico. Sistemas de\r\nrepresentación. Renderizado. Fundamentos del\r\nrenderizado. Modelos de polígonos: alambres, de caras y\r\nvértices, planos, etc.. Modelos básicos de iluminación.\r\nIluminación ambiente, difusa, especular. Efectos de\r\ndistancia. Algoritmos básicos. Ray tracing. Radiosidad.\r\nTexturizado. Practica V: operaciones 3D.\r\n\r\nBloque IV. Realidad virtual y aumentada. Concepto,\r\ntécnicas y dispositivos. Hardware y software para realidad\r\nvirtual. Usos y Aplicaciones. Practica VI: realidad virtual.', 108),
(34, 'Tema 1. Gestión de la Configuración.\r\nIntroducción. Terminologías. Procesos de Gestión de la\r\nConfiguración. Integración y Entrega Continua. Gestión\r\nAvanzada de Versiones con Git.\r\n\r\nTema 2. Metodologías Ágiles\r\nMetodologías Rígidas y Ágiles. Manifiesto Ágil. Principios\r\nLean. Técnicas Básicas de las Metodologías Ágiles:\r\nHistorias de Usuario, Desarrollo Dirigido Por Pruebas,\r\nPlanning Poker, Programación por Pares. Scrum. Otras\r\nMetodologías Ágiles: XP, Kanban.\r\nPrincipales Tipos de Metodologías Ágiles. Scrum. Lean.\r\n\r\nTema 3. Modelado de Procesos Software\r\nConcepto de Proceso Sw. Modeladado de Procesos\r\nSoftware: SPEM.\r\n\r\nTema 4. Procesos de Desarrollos Estandarizados.\r\nMétrica v3. Procesos de Mantenimiento en Métrica v3.\r\nTema 5. Metodologías de Desarrollo Innovadoras\r\nDesarrollo Software Dirigido por Modelos. Desarrollo de\r\nSoftware Basado en Componentes. Líneas de Productos\r\nSoftware.', 109),
(35, 'Presentación de la asignatura. Noción de modelo de\r\ncálculo. Propósito específico y propósito general. Tutorial\r\nLatex.\r\n\r\nFunciones recursivas.\r\nMáquinas de registros.\r\nMáquinas Turing.\r\nEnumerabilidad recursiva.\r\nDecidibilidad e indecidibilidad.\r\nModelos de recursos acotados.\r\nLa NP-completitud y su relevancia.', 110),
(36, 'Introducción. Descripción de aplicaciones con grandes\r\ndemandas de cálculo y almacenamiento. Explotación del\r\nparalelismo en computadores a diferentes niveles.\r\nModelos de programación paralela. Modelos de sistemas\r\nde memoria común y paso de mensajes.\r\nMultirpocesadores de gran escala. Paso de mensajes.\r\nSistemas orientados a HPC. Clusters orientados a\r\nDataCenters y Cloud Computing. Modelos de la\r\narquitectura. Programación con MPI. Casos de estudio.\r\nSubsistema de Interconexión. Redes on-chip, de sistema,\r\nde almacenamiento y LANs de alto rendimiento. Redes\r\ncentralizadas y distribuidas. Topología, encaminamiento,\r\ncontrol de flujo y conmutación. Casos de estudio.\r\nMultiprocesadores de baja y media escala. Paralelismo a\r\nnivel de thread. Coherencia. Multiprocesadores simétricos\r\ny CC-NUMA. Snooping y directorios. Sincronización.\r\nConsistencia.\r\nParalelismo a nivel de dato. Computadores Vectoriales.\r\nExtensiones SIMD en procesadores actuales. GPUs de\r\npropósito general. Modelos de programación.', 111),
(37, 'MÉTODOS DE PRUEBA:\r\n- Repaso de Verificación y Validación de Software.\r\n- Pruebas basadas en modelos (Model-based Testing)\r\n- Repaso de Pruebas Unitarias.\r\n- Pruebas de Integración.\r\n- Pruebas de Sistema.\r\n- Pruebas de Aceptación.\r\n- Diseño de planes de prueba\r\nCONSTRUCCION AUTOMATIZADA DE SISTEMAS\r\nSOFTWARE\r\n- Conceptos avanzados y herramientas de construcción\r\nautomatizada de sistemas software\r\n- Integración Continua\r\n\r\nTECNOLOGIA DE COMPONENTES Y CONSTRUCCIÓN\r\nDE APLICACIONES EMPRESARIALES\r\n- Características básicas de las aplicaciones\r\nempresariales.\r\n- Evolución de plataformas middleware para aplicaciones\r\nempresariales: Servidores de aplicación.\r\n- Desarrollo de software basado en componentes\r\n- Concepto de componente y contenedor.\r\nSOPORTE JAVA PARA CONSTRUCCION DE\r\nAPLICACIONES EMPRESARIALES BASADAS EN\r\nCOMPONENTES\r\n- Introducción a la plataforma Java EE\r\n- Capa de negocio en Java EE: Componentes EJB\r\n- Capa de persistencia en Java EE: Java Persistence API\r\n- Capa de presentación en Java EE: Java Server Faces\r\n- Gestión de Seguridad y otros aspectos no funcionales en\r\naplicaciones Java EE', 112),
(38, 'Representación del Conocimiento basada en Lógica:\r\n- Repaso de la Lógica de Predicados;\r\n- Inferencia basada en reglas;\r\n- Elicitación y aprendizaje de modelos;\r\n- Limitaciones y posibles extensiones o soluciones;\r\n- Representaciones estructuradas: redes semánticas,\r\nmarcos y ontologías.\r\nRepresentación del Conocimiento basada en Modelos\r\nGráficos Probabilistas:\r\n- Repaso de Probabilidad\r\n- Modelos: Redes bayesianas, modelos de Markov\r\n- Inferencia\r\n- Elicitación y aprendizaje de aprendizaje de modelos\r\n- Ventajas y limitaciones', 113),
(39, 'Conceptos Básicos:\r\nArquitectura de sistemas embebidos\r\nDiseño basado en plataforma\r\nDesarrollo de HW embebido:\r\nDiseño con lenguajes de descripción hardware\r\nDescripción estructural, de flujo de datos y de\r\ncomportamiento\r\nModelo, entorno y mecanismo de simulación\r\nSíntesis combinacional y secuencial: Retemporización\r\nParticionado y jerarquía\r\nArquitectura HW\r\nDesarrollo del SW embebido:\r\nCompilación cruzada\r\nIntegración del SW embebido\r\nSistemas operativos embebidos\r\nDrivers y mecanismos de interrupción\r\nDepuración del SW embebido\r\nIntegración HW/SW:\r\nInterfaces HW\r\nPrototipado en FPGA\r\nProyecto Final', 114),
(40, 'Tema 1. Introducción. Justificación y objetivos de diseño\r\nen un sistema operativo.\r\n\r\nTema 2.- Virtualización.\r\nParte I Procesos\r\n- La abstracción: los procesos y su API\r\n- Mecanismo: Ejecución directa limitada\r\n- Planificación: Introducción\r\n- Planificación: Colas multinivel con feedback\r\n- Planificación: Share proporcional\r\n- Planificación de sistemas multiprocesador\r\nParte II: Memoria\r\n- La abstracción: el espacio de direcciones y la API de\r\nmemoria\r\n- Traducción de direcciones\r\n- Segmentación\r\n- Gestión del espacio libre en libc.\r\n- TLB\r\n- Paginación: Tablas pequeñas\r\n- Mas allá de la memoria física: Mecanismos\r\n- - Mas allá de la memoria física: Políticas\r\nTema 3.- Concurrencia. Concurrencia y threads, threads\r\nAPI, Locks, variables condicionales, semáforos, bugs de\r\nconcurrencia, concurrencia basadas en eventos\r\nTema 4.- Persistencia\r\n- Dispositivos de I/O\r\n- Discos duros mecánicos y de estado sólido\r\n- Ficheros y directorios\r\n- Sistema de ficheros e implementación\r\n- FFS y consistencia\r\n- Sistemas de ficheros con journaling,\r\n- Sistemas de ficheros basados en Log\r\n- integridad de datos y seguridad\r\n\r\nPrácticas\r\nLab 1 - Introducción al entorno de trabajo\r\n- C, vagrant y git\r\nLab 2 - Introducción a xv6: llamadas al sistema\r\n- Implementación de una llamada al sistema en xv6\r\nLab 3 - Planificación.\r\n- Implementar una política de planificación MLFQ en xv6\r\nLab 4 - Memoria\r\n- Implementar soporte para paginas compartidas en xv6\r\nLab 5 - Concurrencia\r\n- Implementar soporte para threads en xv6\r\nLab 6 - Sistemas de ficheros\r\n- Implementar una herramienta tipo fsck para xv6\r\nEvaluación\r\nParcial 1:\r\n- Teoria: Memoria y procesos\r\n- Práctica: Entorno, llamadas al sistema y planificación\r\nParcial 2:\r\n- Teoria: Concurrencia\r\n- Práctica: Memoria y threads\r\nParcial 3:\r\n- Teoria: Sistemas de ficheros\r\n- Práctica: Sistemas de ficheros', 115),
(41, 'Introducción a la Administración de Sistemas Informáticos.\r\nIntegración de servicion globales para entornos de gestión I\r\nIntegración de servicion globales para entornos de gestión II.\r\nHerramientas de monitorización y configuración', 116),
(42, 'BLOQUE I: PROGRAMACIÓN PARALELA\r\nTema 1: Introducción a la Programación Paralela\r\nTema 2: Análisis de rendimiento de programas paralelos\r\nTema 3. Programación en Memoria Compartida: OpenMP\r\nTema 4: Optimizar el Rendimiento de Programas OpenMP\r\nPrácticas de OpenMP\r\nBLOQUE II: PROGRAMACIÓN CONCURRENTE Y DE\r\nTIEMPO REAL\r\n1.- Concurrencia\r\n- Introducción a la programación concurrente\r\n- Sincronización\r\n- Concurrencia y sincronización en lenguajes de\r\nprogramación y sistemas operativos\r\n- Patrones y métodos de expresión de la concurrencia\r\nBLOQUE II: PROGRAMACIÓN CONCURRENTE Y DE\r\nTIEMPO REAL\r\n2.- Tiempo real\r\n- Introducción a los sistemas de tiempo real: políticas de\r\nplanificación\r\n- Modelo de sistema de tiempo real: eventos periódicos\r\n- Análisis de planificabilidad\r\n- Protocolos de sincronización', 92),
(43, 'Introducción. Modelos\r\npredictivos y descriptivos. Modelos supervisados y no\r\nsupervisados. Tutorial Python\r\nRegresión lineal y polinomial. Algoritmo del gradiente\r\ndescendente y el método analítico. Regularización\r\nClasificación. Regresión logística (algoritmo del gradiente\r\ndescendente) con regularización. SVM.\r\nSegmentación. Métodos jerárquicos vs. particionales,\r\nexcusivos vs. difusos. El algoritmo K-means. El algoritmo EM.\r\nReglas de asociación. Conjuntos frecuentes. Clausuras.\r\nRedundancia en reglas de asociación.\r\nRedes neuronales.\r\nPredicción por vecindario. Metapredictores. Bagging.\r\nBoosting. AdaBoost.\r\nReducción de dimensionalidad.\r\nSelección y evaluación del modelo.\r\nInferencia gramatical\r\nWeka y Knime.', 93),
(44, 'Fundamentos del Diseño de Computadores\r\n Qué papel juega la Arquitectura de Computadores en el\r\ndesarrollo de los computadores- Tendencias y\r\ndependencias\r\n Métricas de evaluación: parámetros y fundamentos\r\ntecnológicos\r\n Coste\r\n Rendimiento\r\n Consumo energético o Fiabilidad\r\nEl repertorio de Instrucciones\r\nLa frontera hardware / software\r\nDefinición y virtudes a perseguir por el repertorio de\r\ninstrucciones: perspectiva histórica\r\nInfluencia de los compiladores y la implementación\r\nFilosofía RISC y CISC\r\n\r\nJerarquía de Memoria: Memorias Cache\r\nModelo de las 3C en los fallos de cache.\r\nPrefetch software y prefetch hardware\r\nPolíticas de escritura\r\nEvaluación y métricas de efectividad en las caches\r\nEfecto de la cache en el rendimiento del procesador\r\nILP 1: Segmentación\r\nDependencias de datos\r\nDependencias de control\r\nPredicción dinámica de saltos o Ejecución especulativa\r\nILP2: Ejecución Superescalar\r\nLimites de la segmentación\r\nEjecución superescalar\r\nImplicaciones Multi-Issue\r\nWide-Issue con planificación estática: VLIW\r\nPlanificación Software\r\nILP 3: Planificación Dinámica\r\nAlgoritmos de planificación dinámica:\r\nExcepciones precisas con planificación dinámica y ROB\r\nEjecución especulativa y ROB\r\nDependencias en instrucciones de acceso a memoria\r\nParalelismo a nivel de thread. Introducción a los\r\nproblemas de coherencia y consistencia. Paralelismo a\r\nnivel de datos.\r\n', 94);
INSERT INTO `tb_contenido_otros` (`id`, `contenido`, `id_asignaturas`) VALUES
(45, 'BLOQUE TEMÁTICO 1: Análisis y diseño de sistemas de información\r\n\r\n Introducción Ciclo de vida de los sistemas de información. Fases del\r\ndiseño de Bases de Datos: diseño conceptual, lógico y físico. Técnicas, modelos de datos y herramientas.\r\nTema 2. Diseño conceptual\r\nAnálisis de requisitos. Modelo Entidad-Relación extendido\r\n(EER). Lenguaje de Modelado Unificado (UML) y\r\ndefinición de restricciones en OCL. Diferencias EER vs UML\r\nTema 3. Diseño lógico\r\nReglas de transformación EER a modelo relacional.\r\nReglas de transformación UML a modelo relacional.\r\n\r\nTema 4. Diseño físico\r\nOrganización de ficheros. Definición de tablas y\r\nrestricciones. Definición de vistas. Definición de índices.\r\nTransacciones y el nivel de concurrencia. Estrategias para\r\nel acceso eficiente a los datos. Refactorizado.\r\nBLOQUE TEMÁTICO 2:\r\nConstrucción de aplicaciones con acceso a BD\r\n\r\nTema 5. Arquitectura de las aplicaciones empresariales\r\nIntroducción. Revisión histórica. Arquitectura N-capas.\r\nCapa de persistencia. Frameworks de persistencia\r\n\r\nTema 6. Seguridad en Sistemas de Información\r\nIntroducción. Amenazas. Elementos a asegurar.\r\nMecanismos que ofrecen los gestores. Seguridad en\r\naplicaciones de acceso a datos\r\nTema 7. Pruebas.\r\nTipos de pruebas: sobre elementos estáticos y dinámicos,\r\npruebas de rendimiento, de recuperación y de seguridad.\r\nDiseño y generación de casos de prueba. Técnicas y herramientas\r\nBLOQUE TEMÁTICO 3:\r\n Análisis y diseño de almacenes de datos\r\nTema 8. Introducción a los Almacenes de Datos\r\nSistemas de Información orientados a la toma de\r\ndecisiones: motivación, definición y características.\r\nDiferencias e interrelación con los sistemas\r\ntransaccionales (OLTP). Arquitectura y herramientas.\r\nTema 9. Diseño multidimensional\r\nCiclo de vida de un sistema BI/DW. Diseño\r\nmultidimensional. Soporte para BD dimensionales en SQL:2016', 95),
(46, 'Tema 1. Procesos de Ingeniería de Requisitos.\r\nImportancia de la Ingeniería de Requisitos. Objetivos de la\r\nIngeniería de Requisitos. Terminología Básica. Fases de la\r\nIngeniería de Requisitos. Integración de la Ingeniería de\r\nRequisitos en los Procesos de Desarrollo.\r\nTema 2. Técnicas de Captura de Requisitos.\r\nIntroducción. Objetivos de la captura de requisitos.\r\nTécnicas de Soporte para la Captura de Requisitos:\r\nTormenta de Ideas, Método KJ, Prototipado, Mapas\r\nmentales, Listas de comprobación, 100$ Test. Estructura\r\ndel Contexto de un Sistema Sw. Estrategias para la\r\nCaptura de Requisitos: Entrevistas, Talleres, Grupos de\r\nInterés, Observación, Cuestionarios, Lectura en\r\nPerspectiva. Tipos de stakeholders. Listas dentro/fuera.\r\nIdentificación y Selección de las Fuentes de Requisitos.\r\nDiseño y Ejecución de Planes para la Captura de\r\nRequisitos. Priorización de Fuentes y Requisitos.\r\nTema 3. Modelado y Especificación de Requisitos\r\nFuncionales.\r\nIntroducción. Niveles de Abstracción para Requisitos.\r\nObjetivos. Modelado de Objetivos con GRL/KAOS.\r\nEscenarios. Escenarios positivos, Alternativos y\r\nExcepcionales. Especificación de Escenarios mediante\r\nCasos de Uso. Especificación de Requisitos Funcionales\r\nmediante Historias de Usuario. Modelos Orientados a la Solución.\r\n\r\nTema 4. Modelado y Especificación de Requisitos No\r\nFuncionales.\r\nIntroducción. Sistemas Sociotécnicos. Catálogos de\r\nRequisitos No Funcionales: ISO 25010. Modelado y\r\nEspecificación de Requisitos No Funcionales mediante\r\nDiagramas de Objetivos. Correlaciones. Análisis del Grado\r\nde Satisfacción de los Requisitos No Funcionales.\r\nIngeniería de Requisitos de Seguridad. Casos de Mal Uso.\r\nTema 5. Introducción al Modelado y Especificación de\r\nProcesos de Negocio en Organizaciones\r\nIntroducción. Concepto de Flujo de Trabajo y Proceso de\r\nNegocio. Modelado de Procesos de Negocio Básicos en BPMN 2.0.', 96),
(47, 'GESTIÓN DE LA CONFIGURACIÓN DE SISTEMAS\r\nSOFTWARE\r\n- Terminología y conceptos básicos.\r\n- Problemas y áreas de la Gestión de la Configuración.\r\n- Herramientas de control de versiones.\r\n- Herramientas de construcción automatizada de software.\r\nCONSTRUCCIÓN DE SISTEMAS SOFTWARE\r\n- Fase de contrucción dentro del ciclo de vida del software.\r\n- Conceptos y principios básicos de la construcción de\r\nsoftware.\r\n- Generación automática de código.\r\n- Entornos de desarrollo de software.\r\n- Patrones para la implementación de máquinas de estado.\r\n\r\nPRUEBA DE SISTEMAS SOFTWARE\r\n- Verificación y Validación de sistemas software.\r\n- Fase de pruebas dentro del ciclo de vida del software.\r\n- Niveles de prueba: unitarias, integración, sistema.\r\n- Técnicas de diseño de casos de prueba para pruebas\r\nunitarias: caja negra y caja blanca.\r\n- Frameworks para la implementación de pruebas\r\nunitarias.\r\nMANTENIMIENTO DE SISTEMAS SOFTWARE\r\n- Fase de mantenimiento dentro del ciclo de vida del\r\nsoftware.\r\n- Tipos de mantenimiento.\r\n- Gestión del mantenimiento.\r\n- Técnicas de soporte al mantenimiento.\r\n- Herramientas de gestión del cambio.\r\nCALIDAD DE SISTEMAS Y PROCESOS SOFTWARE\r\n- Concepto y factores de calidad del software.\r\n- Calidad de producto y calidad del proceso\r\nGESTIÓN DE PROYECTOS\r\n- Introducción a la gestión de proyectos software.\r\n- Integración y alcance.\r\n- Gestión de costes.\r\n- Gestión de tiempo.\r\n- Gestión de riesgos.', 97),
(48, 'BLOQUE TEMÁTICO 1: Conceptos Teoricos\r\nLenguajes Formales, autómatas, sistemas de transición\r\nAutomátas inderterministas y su equivalencia con autómatas deterministas\r\nMinimización de autómatas\r\nEquivalencia entre autómatas finitos y gramáticas regulares\r\n\r\nSistemas lineales de ecuaciones\r\nEquivalencia entre gramáticas regulares y expresiones regulares\r\nTransformación de expresiones regulares a autómatas finitos\r\n\r\nEl lema de bombeo y autómata cociente\r\nGramáticas libres de contexto\r\nEliminación de símbolos inútiles\r\nEl problema de la palabra en lenguajes libres de contexto\r\nLema de bombeo en gramáticas libres de contexto\r\nAutómatas con pila y lenguajes libres de contexto\r\nBLOQUE TEMÁTICO 2: Herramientas\r\nIntroducción a Python', 98),
(49, 'BLOQUE I: INTRODUCCIÓN Y FUNDAMENTOS:\r\nLa Interacción Persona-Ordenador.\r\nEl Factor Humano.\r\nDispositivos para la Interacción.\r\nBLOQUE II. LA INTERACCIÓN:\r\nMetáforas.\r\nEstilos de Interacción.\r\nParadigmas de Interacción\r\nBLOQUE III. INGENIERÍA DE LA USABILIDAD:\r\nReglas de Diseño.\r\nPrincipios.\r\nEstándares.\r\nGuías de Estilo.\r\nHerramientas Software de soporte.\r\nBLOQUE IV. ÁREAS DE APLICACIÓN:\r\nAyuda y Documentación.\r\nInternacionalización', 89),
(50, 'FUNDAMENTOS DE INGENIERÍA DEL SOFTWARE.\r\nCuerpo de conocimientos SWEBOK. Áreas principales.\r\nModelado en Ingeniería Software. Lenguajes de\r\nmodelado: UML. Métodos de desarrollo. Ciclos de vida del\r\nSoftware. Procesos del ciclo de vida.\r\nREQUISITOS DE SISTEMAS SOFTWARE.\r\nConcepto y características. Etapas del proceso de\r\nespecificación de requisitos software: captura, análisis,\r\nespecificación y validación.\r\nModelado de la fase de requisitos mediante diagramas de\r\ncasos de uso, plantillas y diagramas de clases de dominio.\r\nRequisitos no funcionales\r\nARQUITECTURA DE SISTEMAS SOFTWARE.\r\nArquitectura Software. Concepto de Componente.\r\nArquitecturas en 3 Capas.\r\nModelado de la arquitectura mediante diagramas de\r\ncomponentes y despliegue.\r\nModelado de escenarios arquitectónicos mediante\r\ndiagramas de secuencia\r\nDISEÑO DE SISTEMAS SOFTWARE.\r\nDescripción estructural. Patrones de Diseño. Modelado\r\nmediante diagramas de clases.\r\nComportamiento procedural y modelado mediante\r\ndiagramas de actividad.\r\nComportamiento reactivo y modelado mediante diagramas\r\nde máquinas de estado', 88),
(51, 'Tema 1: Introducción\r\n- Introducción a los conceptos de redes de\r\ncomputadores: comunicación, red de computadores,\r\nprotocolo.\r\n- Arquitectura de protocolos de comunicaciones:\r\nmodelos OSI y TCP/IP.\r\nTema 2: Nivel físico\r\n- Conceptos de señal. Caracterización temporal y\r\nfrecuencial.\r\n- Medios de transmisión\r\n- Instalaciones de cableado estructurado\r\n- Características de la propagación de señales y\r\nerrores de transmisión\r\n- codificación y modulación de señales\r\n- Transmisión de datos analógicos\r\n\r\nTema 3: Nivel de enlace y control de acceso al medio\r\n- Transmisión asíncrona y síncrona.\r\n- Control de flujo: Parada y espera, ventana deslizante.\r\n- Detección de errores y control de errores basado en\r\nARQ.\r\n- Multiplexación en frecuencia, tiempo síncrona y\r\ntiempo estadística.\r\n- Ejemplos de aplicación: HDLC, cable-módems y\r\nmódems de ADSL\r\nTema 4: Redes de área local cableadas\r\n- Jerarquía de protocolos IEEE 802\r\n- Subcapas LLC y MAC\r\n- CSMA/CD en Ethernet\r\n- Funcionamiento de hubs y switches\r\n- Evolución de las redes de área local\r\n\r\nTema 5: Redes inalámbricas\r\n- Tipos de redes inalámbricas y protocolos empleados\r\n- 802.11: Modalidades y modos de funcionamiento.\r\n- Seguridad en redes inalámbricas', 90),
(52, 'Introducción: Definición de IA, breve historia y\r\naplicaciones; concepto de agente inteligente.\r\nBúsqueda para la resolución de problemas:\r\n- Introducción a los sistemas de búsqueda\r\n- Búsqueda informada\r\n- Búsquedas locales y aproximadas\r\n- Problemas de satisfacción de restricciones\r\n- Búsqueda con adversarios\r\nRepresentación del conocimiento y razonamiento:\r\n- Agentes lógicos\r\n- Inferencia\r\nAplicaciones y extensiones:\r\n- Introducción a la planificación de acciones clásica\r\n- Introducción al aprendizaje', 91),
(53, 'Tema 1: Conmutación de circuitos y de paquetes\r\n- Conmutación de circuitos, modo datagrama y modo\r\ncircuito virtual\r\n- Estructura de un encaminador\r\n- Repaso de tecnologías en redes WAN\r\nTema 2: Protocolos de red\r\n- Direccionamiento IP. Redes y subredes, CIDR y\r\nVLSM. Otros aspectos del protocolo.\r\n- Algoritmos de búsqueda de rutas en grafos.\r\n- Protocolos de encaminamiento dinámicos: Tipos e\r\nimplementaciones. Ejemplos de RIP y OSPF.\r\n- Protocolo IP. Formato de trama, mecanismo de\r\nforwarding, fragmentación.\r\n- Otros protocolos asociados: ICMP, ARP, DHCP,\r\nDNS, IGMP.\r\n- Mecanismos de traducción de direcciones.\r\nSobrecarga de puertos.\r\n- IPv6. Direcciones, formatos de trama, diferencias\r\nfundamentales con IPv4.\r\nTema 3: Protocolos de transporte\r\n- Programación con sockets\r\n- TCP. Formatos de segmento. Máquina de estados,\r\nestablecimiento y liberación de la sesión. Control de flujo y\r\nde errores. Control de congestión.\r\n- UDP. Cabeceras y ejemplos de uso\r\nTema 4: Nivel de aplicación: Ejemplo de HTTP.\r\n- Identificación de recursos.\r\n- Formato y tipo de mensajes.\r\n- Autenticación, cookies, seguridad y proxies.\r\n- Aspectos de rendimiento del protocolo.\r\n\r\nTema 5: Sistemas distribuidos\r\n- Introducción a la computación distribuida. Modelos de\r\ndistribución.\r\n- Comunicación, gestión y sincronización de procesos\r\n- Modelo de distribución cliente/servidor: RMI\r\n- Modelos de distribución basado en eventos: DDS', 99),
(54, 'Tema 1. Introducción: Sistemas de tiempo real estricto y\r\nlaxo. Políticas de planificación en estáticas y dinámicas.\r\nAnálisis de planificabilidad de sistemas con tareas\r\nperiódicas\r\nTema 2. Extensiones de la teoría básica\r\nTema 3. Recursos compartidos. Protocolos de\r\nsincronización. Implementación de protocolos de\r\nsincronización. Análisis de planificabilidad.\r\nTema 4. Eventos aperiódicos. Programación de tareas\r\naperiódicas. Análisis de planificabilidad de sistemas con tareas periódicas y aperiódicas\r\nTema 5. Soporte en sistemas operativos y en Lenguaje ADA\r\nTema 6. Aspectos avanzados.\r\nTema 7. Planificación EDF\r\nTema 8. Caso de estudio.\r\nBLOQUE 2: PRÁCTICAS DE LABORATORIO\r\nProgramación en Lenguaje ADA\r\nHerramienta de modelado y análisis MAST\r\nPráctica 1: Planificación, monitorización, control y análisis de tareas periódicas.\r\n\r\nPráctica 2: Tareas con recursos compartidos.\r\nPráctica 3: Tareas aperiódicas.\r\nPráctica 4: Planificación de tareas con EDF.', 100),
(55, '1. INTRODUCCIÓN / INSTALACIÓN\r\n1.1. Descripción de la figura del Administrador de\r\nsistemas:\r\n - Tareas y responabilidades, código ético.\r\n - Conocimientos necesarios.\r\n - Fuentes de información y documentación.\r\n1.2. El sistema operativo Linux:\r\n - Origen, evolución y uso básico.\r\n - Principales características del sistema.\r\n1.3. Instalación de un sistema Linux:\r\n - Requerimientos Hardware y preparación del sistema.\r\n - Instalación de Linux Debian\r\n - Instalación de software mediante repositorios de\r\npaquetes o código fuente.\r\n1.4. Línea de comandos (shell)\r\n - Comandos Básicos\r\n - Comandos Avanzados\r\n - Introducción a shell scripting\r\n2. ADMINISTRACIÓN BÁSICA\r\n2.1. Arranque y parada del sistema:\r\n - El proceso de arranque y el cargador de sistema.\r\n - Servicios de arranque.\r\n - Apagado y posibles problemas\r\n - Resolución de problemas de Arranque/Parada.\r\n2.2. Gestión de Software:\r\n - Filosofía Linux en gestión de software.\r\n - Instalación por código fuente, paquetes y repositorios\r\nsoftware.\r\n2.3. Gestión de usuarios y grupos:\r\n - Creación y eliminación de usuarios.\r\n - Principios de seguridad (passwords).\r\n - Posibles puntos débiles.\r\n2.4. El sistema de ficheros:\r\n - Conceptos básicos relativos a dispositivos.\r\n - Gestión avanzada de almacenamiento: LVM y RAID.\r\n2.5. Gestión de recursos:\r\n - gestión de CPU, memoria y disco.\r\n2.6. Monitorización de eventos:\r\n - herramienta rsyslog\r\n2.7. Introducción al kernel de Unix\r\n - Sintonización dinámica\r\n - Gestión de Módulos del kernel\r\n - Compilación del kernel\r\n\r\n3. ADMINISTRACIÓN DE RED\r\n3.1. Conceptos básicos:\r\n - El protocolo TCP/IP\r\n - Subneting, routing\r\n - Puertos TCP/UDP\r\n3.2. Configuración del interfaz de red:\r\n - Manejo y configuración de interfaces de red\r\n - Asignación de IP, routing, resolución de nombres', 101),
(56, 'FUNDAMENTOS DE GESTIÓN DE PROYECTOS.\r\n- Cuerpo de Conocimientos de la Gestión de Proyectos\r\n(PMBOK).\r\n- Conceptos básicos. Grupos de Procesos. Áreas de\r\nTrabajo. Interacciones entre procesos.\r\n\r\nGESTIÓN DE LA INTEGRACIÓN.\r\n- Inicio del proyecto. Acta de constitución.\r\n- Plan de gestión del proyecto.\r\n- Dirigir y gestionar la ejecución del proyecto.\r\n- Seguimiento y control del trabajo y los cambios.\r\n- Cierre del proyecto\r\nGESTIÓN DEL ALCANCE.\r\n- Gestión del alcance. Requisitos. Definición del alcance.\r\n- Creación de la EDT. Descomposición estructurada de\r\nproyectos software.\r\n- Verificación y control del alcance\r\nGESTIÓN DEL TIEMPO.\r\n- Definición de actividades, secuenciación, estimación de\r\nla duración y recursos.\r\n- Desarrollo del calendario: Métodos PERT y CPMCD.\r\n\r\nGESTIÓN DE COSTES.\r\n- Planificar la gestión de costes, técnicas de estimación y\r\nconfección del presupuesto.\r\n- Seguimiento y control de costes. Técnica de valor ganado (EVM).\r\n\r\nGESTIÓN DE RIESGOS.\r\n- Planificar la gestión de riesgos.\r\n- Identificación, análisis cualitativo y cuantitativo y\r\nplanificación de respuestas.\r\n- Supervisión y control de riesgos', 118),
(57, 'Introducción a la informática industrial.\r\nConceptos generales.\r\nEl papel de la informática industrial en los procesos\r\nindustriales.\r\nSistemas de adquisición de datos y control.\r\nFunciones de los sistemas de adquisición de datos y\r\ndistribución de señales.\r\nElementos de un sistema de adquisición de datos.\r\nElementos de un sistema de distribución de señales.\r\nTarjetas de adquisición de datos.\r\nProgramación.\r\nAutómatas programables.\r\nConceptos generales. Arquitectura.\r\nInterfases de entrada y salida.\r\nProgramación de autómatas.\r\nDiseño de sistemas de control con autómatas\r\nprogramables.\r\nComunicaciones\r\nSistemas SCADA.\r\nConceptos generales.\r\nElementos de un sistema SCADA.\r\nInterfases de usuario. Aplicaciones. Estándares.\r\nDiseño de sistemas SCADA.\r\n', 119),
(58, 'BLOQUE 1: Conceptos teoricos\r\nIntroducción a la asignatura y repaso de lenguajes formales\r\nAnalizadores Ascendentes\r\nTipos de analizadores ascendentes: LR(0), SLR, LR(1) y LALR\r\n\r\nGramáticas de atributos\r\nChequeo de tipos y generación de código\r\nOptimización de código y registros\r\nBLOQUE 2: Herramientas\r\nPython\r\nGeneradores de analizadores léxicos\r\nGeneradores de analizadores sintáticos\r\nGeneración de código\r\nTraducción a código máquina', 120),
(59, 'Introducción al procesamiento de lenguaje natural.\r\nProcesamiento básico de texto\r\nModelos lingüísticos y correctores ortográficos\r\nClasificación de textos y análisis de sentimientos.\r\nRecuperación de la información.\r\nAnálisis léxico.\r\nAnálisis sintáctico\r\nAnálisis semántico', 121),
(60, 'TECNOLOGÍAS DE SOPORTE A LOS SERVICIOS WEB\r\n- Repaso de HTTP, URI, XML y JSON.\r\n- Servidores web y servidores de aplicación.\r\nINTRODUCCIÓN A LA ORIENTACIÓN A SERVICIOS\r\n- Origen de la orientación a servicios.\r\n- Terminología y conceptos básicos.\r\n- Paradigma SOC y arquitectura SOA.\r\n- Ingeniería del software basada en servicios\r\nTECNOLOGÍA DE SERVICIOS SOAP (BIG WEB\r\nSERVICES)\r\n- Definición de Servicio Web (SOAP).\r\n- Estándares básicos:\r\n - Estándar para descripción de servicios (WSDL).\r\n - Estándar para comunicación de servicios (SOAP).\r\n - Estándar para descubrimiento y publicación de servicios (UUID)\r\n- Seguridad en Servicios Web SOAP (WS-Security).\r\n- Diseño e implementación de servicios web SOAP.\r\n- Diseño e implementación de clientes de servicios web SOAP.\r\n- Soporte tecnológico para el desarrollo de servicios web\r\nSOAP en Java: Apache Axis2 y JAX-WS.\r\nTECNOLOGÍA DE SERVICIOS REST\r\n- Estilo Arquitectónico REST.\r\n- Arquitecturas orientadas a recursos.\r\n- Seguridad en servicios REST.\r\n- Diseño e implementación de servicios RESTful.\r\n- Diseño e implementación de clientes de servicios RESTful.\r\n- Soporte tecnológico para el desarrollo de servicios REST en Java: JAX-RS\r\n\r\nCOORDINACIÓN Y COMPOSICIÓN DE SERVICIOS\r\n- Procesos de negocio basados en composición de\r\nservicios.\r\n- Composición de servicios: Lenguaje BPEL.\r\n- Coordinación de servicios.', 123),
(61, 'ESTRATEGIA DE LOS SISTEMAS DE INFORMACIÓN EN LAS ORGANIZACIONES\r\nGestión de la Información para la toma de decisiones en la organización.\r\n\r\nEtapas de diseño de un Sistema de Información empresarial.\r\nTecnologías aplicables en los Sistemas de Información.\r\nCasos prácticos\r\nSISTEMAS DE GESTION INTEGRADOS\r\nDefinición de Sistemas de Gestión Integrados e integridad de datos y procesos.\r\nHerramientas de Gestión Integral de la información empresarial (ERP): casos prácticos.\r\nHerramientas de Gestión de Relación con Clientes (CRM)\r\nSoftware como servicio y cloud computing en los sistemas de gestión empresarial\r\n\r\nSistemas de gestión de información y Business Intelligence\r\nGENERACIÓN DE MODELOS DE NEGOCIO EN INTERNET\r\n\r\nTipos de modelos de negocio. Empresa y e-Administración\r\nHerramientas para la gestión de negocios en Internet\r\nMetodología de presentación de ideas de negocio.\r\nPRESENCIA WEB CORPORATIVA\r\nImagen corporativa y presencia Web de la empresa\r\nGestores de contenidos y su implantación en la empresa.\r\nEmpresa y Web 2.0/Social Business', 124),
(62, 'Bloque 1: Conceptos Generales\r\n1.1 Introducción\r\n1.2 Herramientas criptográficas\r\n1.3 Autenticación\r\n1.4 Internet Authentication Applications\r\n1.5 Control de Acceso\r\nBloque 2: Seguridad en Software\r\n2.1 Código malintencionado\r\n2.2 Denegación de Servicio\r\n2.3 Desbordamiento de Pila\r\n2.4 Programación segura\r\n2.5 Protección de Sistema Operativo\r\n2.6 Estrategias de protección multinivel\r\n2.7 Seguridad en Bases de Datos\r\n\r\nBloque 3: Seguridad en Red\r\n3.1 Protocolos de Seguridad en Internet\r\n3.2 Detección de Intrusión\r\n3.3 Prevención de intrusion y cortafuegos\r\n3.4 Auditoría de Seguridad\r\n3.5 Seguridad en redes inalámbricas', 125);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_outcom`
--

CREATE TABLE `tb_outcom` (
  `id` int(11) NOT NULL,
  `nombre_outcom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_outcom`
--

INSERT INTO `tb_outcom` (`id`, `nombre_outcom`, `descripcion`) VALUES
(1, 'matematicas general', 'Capacidad para resolver los problemas matematicos que puedan plantearse en la ingenieria. Aptitud para aplicar los\r\nconocimientos sobre: algebra lineal; calculo diferencial e integral; metodos numericos; algoritmica numerica; estadistica y\r\noptimizacion.\r\nCapacidad de aplicar los conceptos basicos de matematica discreta, logica, algoritmica y complejidad computacional, y su\r\naplicacion para la resolucion de problemas propios de la ingenieria.\r\n'),
(2, 'fisica', 'Capacidad para resolver los problemas matemáticos que puedan plantearse en la ingenieria. Aptitud para aplicar los\r\nconocimientos sobre: algebra lineal; cálculo diferencial e integral; métodos numericos; algoritmica numérica; estadoistica y\r\noptimizacion.\r\nCapacidad de explicar y aplicar los conceptos básicos de campos y ondas y electromagnetismo, teoría de circuitos\r\neléctricos, circuitos electrónicos, principio físico de los semiconductores y familias lógicas, dispositivos electrónicos y fotonicos, y\r\nsu aplicación para la resolucion de problemas propios de la ingenieria.\r\n'),
(3, 'programacion general', 'Poseer y aplicar conocimientos básicos sobre el uso y programación de los ordenadores, sistemas operativos, bases de datos\r\ny programas informáticos con aplicación en ingeniería.\r\nConocer y aplicar la estructura, organización, funcionamiento e interconexión de los sistemas informáticos, los fundamentos\r\nde su programación, y saber aplicarlos en la resolución de problemas propios de la ingeniería.\r\nCapacidad para diseñar, desarrollar, seleccionar y evaluar aplicaciones y sistemas informáticos, asegurando su fiabilidad,\r\nseguridad y calidad, conforme a principios éticos y a la legislación y normativa vigente.\r\nCapacidad de explicar y aplicar los procedimientos algorítmicos básicos de las tecnologías informáticas para diseñar\r\nsoluciones a problemas, analizando la idoneidad y complejidad de los algoritmos propuestos.\r\nCapacidad de entender y utilizar de forma eficiente los tipos y estructuras de datos más adecuados a la resolución de un\r\nproblema.\r\nCapacidad para analizar, diseñar, construir y mantener aplicaciones de forma robusta, segura y eficiente, eligiendo el\r\nparadigma y los lenguajes de programación más adecuados.\r\nCapacidad de conocer y aplicar las herramientas necesarias para el almacenamiento, procesamiento y acceso a los Sistemas\r\nde información, incluidos los basados en web.\r\nCapacidad para diseñar y evaluar interfaces persona computador que garanticen la accesibilidad y usabilidad a los sistemas,\r\nservicios y aplicaciones informáticas.'),
(4, 'Base de datos, tic, entre otros', 'Capacidad para diseñar, desarrollar, seleccionar y evaluar aplicaciones y sistemas informáticos, asegurando su fiabilidad,\r\nseguridad y calidad, conforme a principios éticos y a la legislación y normativa vigente.\r\nCapacidad para planificar, concebir, desplegar y dirigir proyectos, servicios y sistemas informáticos en todos los ámbitos,\r\nliderando su puesta en marcha y su mejora continua y valorando su impacto económico y social.\r\nCapacidad de comprender y valorar la importancia de la negociación, los hábitos de trabajo efectivos, el liderazgo y las\r\nhabilidades de comunicación en todos los entornos de desarrollo de software.\r\n Capacidad para elaborar el pliego de condiciones técnicas de una instalación informática que cumpla los estándares y\r\nnormativas vigentes.\r\n Capacidad para aplicar los conceptos de administración y mantenimiento sistemas, servicios y aplicaciones informáticas.\r\nCapacidad para analizar, diseñar, construir y mantener aplicaciones de forma robusta, segura y eficiente, eligiendo el\r\nparadigma y los lenguajes de programación más adecuados.\r\nCapacidad de conocer y aplicar las características, funcionalidades y estructura de las bases de datos, que permitan su\r\nadecuado uso, y el diseño y el análisis e implementacion de aplicaciones basadas en ellos.\r\nCapacidad de conocer y aplicar las herramientas necesarias para el almacenamiento, procesamiento y acceso a los Sistemas\r\nde información, incluidos los basados en web.\r\n Capacidad de conocer y aplicar los principios fundamentales y técnicas básicas de los sistemas inteligentes y su aplicación\r\npráctica.\r\nCapacidad de conocer y aplicar los principios, metodologías y ciclos de vida de la ingeniería de software.\r\nCapacidad para desarrollar, mantener y evaluar servicios y sistemas software que satisfagan todos los requisitos del usuario\r\ny se comporten de forma fiable y eficiente, sean asequibles de desarrollar y mantener y cumplan normas de calidad, aplicando las\r\nteorías, principios, métodos y prácticas de la Ingeniería del Software.\r\nCapacidad para valorar las necesidades del cliente y especificar los requisitos software para satisfacer estas necesidades,\r\nreconciliando objetivos en conflicto mediante la búsqueda de compromisos aceptables dentro de las limitaciones derivadas del\r\ncoste, del tiempo, de la existencia de sistemas ya desarrollados y de las propias organizaciones.\r\n Capacidad de dar solución a problemas de integración en función de las estrategias, estándares y tecnologías disponibles.\r\nCapacidad de identificar y analizar problemas y diseñar, desarrollar, implementar, verificar y documentar soluciones\r\nsoftware sobre la base de un conocimiento adecuado de las teorías, modelos y técnicas actuales.\r\nCapacidad de identificar, evaluar y gestionar los riesgos potenciales asociados que pudieran presentarse.\r\nCapacidad para diseñar soluciones apropiadas en uno o más dominios de aplicación utilizando métodos de la ingeniería del\r\nsoftware que integren aspectos éticos, sociales, legales y económicos.'),
(5, 'TEO', 'Conocer y aplicar la estructura, organización, funcionamiento e interconexión de los sistemas informáticos, los fundamentos\r\nde su programación, y saber aplicarlos en la resolución de problemas propios de la ingeniería.\r\nCapacidad de conocer, comprender y evaluar la estructura y arquitectura de los computadores, así como los componentes\r\nbásicos que los conforman.\r\n'),
(6, 'Redes, sistemas, entre otros', 'Capacidad para elaborar el pliego de condiciones técnicas de una instalación informática que cumpla los estándares y\r\nnormativas vigentes.\r\nCapacidad para aplicar los conceptos de administración y mantenimiento sistemas, servicios y aplicaciones informáticas.\r\nCapcidad de conocer y aplicar las características, funcionalidades y estructura de los Sistemas Operativos así como diseñar\r\ne implementar aplicaciones basadas en sus servicios.\r\nCapacidad de conocer y aplicar las características, funcionalidades y estructura de los Sistemas Distribuidos, las Redes de\r\nComputadores e Internet y diseñar e implementar aplicaciones basadas en ellas.\r\nCapacidad de conocer y aplicar los principios fundamentales y técnicas básicas de la programación paralela, concurrente,\r\ndistribuida y de tiempo real.\r\nConocer y saber aplicar la normativa y la regulación de la informática en los ámbitos nacional, europeo e internacional.'),
(7, 'ingles', 'Capacidad de comunicarse en inglés a un nivel acorde al C1 del MCERL de forma oral y por escrito en una amplia variedad\r\nde situaciones, de diferente grado de complejidad y pertenecientes al ámbito personal, social, profesional y académico.\r\n Capacidad de desenvolverse con éxito desde el punto de vista sociocultural en entornos diversos de las comunidades de\r\nhabla inglesa, especialmente del ámbito profesional y académico a un nivel acorde al C1 del MCERL.\r\nCapacidad de aplicar estrategias de aprendizaje relacionadas con el aprendizaje de lenguas.'),
(8, 'etica', 'Conocer y aplicar los conceptos de empresa, marco institucional y jurídico de la empresa, así como de la organización y\r\ngestión de empresas.\r\nCapacidad para diseñar, desarrollar, seleccionar y evaluar aplicaciones y sistemas informáticos, asegurando su fiabilidad,\r\nseguridad y calidad, conforme a principios éticos y a la legislación y normativa vigente.\r\nCapacidad para elaborar el pliego de condiciones técnicas de una instalación informática que cumpla los estándares y\r\nnormativas vigentes.\r\nConocer y saber aplicar la normativa y la regulación de la informática en los ámbitos nacional, europeo e internacional.\r\n Capacidad para diseñar soluciones apropiadas en uno o más dominios de aplicación utilizando métodos de la ingeniería del\r\nsoftware que integren aspectos éticos, sociales, legales y económicos.'),
(9, 'economia', 'Conocer y aplicar los conceptos de empresa, marco institucional y jurídico de la empresa, así como de la organización y\r\ngestión de empresas.\r\nCapacidad para planificar, concebir, desplegar y dirigir proyectos, servicios y sistemas informáticos en todos los ámbitos,\r\nliderando su puesta en marcha y su mejora continua y valorando su impacto económico y social.\r\nCapacidad de comprender y valorar la importancia de la negociación, los hábitos de trabajo efectivos, el liderazgo y las\r\nhabilidades de comunicación en todos los entornos de desarrollo de software.\r\n Capacidad para valorar las necesidades del cliente y especificar los requisitos software para satisfacer estas necesidades,\r\nreconciliando objetivos en conflicto mediante la búsqueda de compromisos aceptables dentro de las limitaciones derivadas del\r\ncoste, del tiempo, de la existencia de sistemas ya desarrollados y de las propias organizaciones.\r\nCapacidad para diseñar soluciones apropiadas en uno o más dominios de aplicación utilizando métodos de la ingeniería del\r\nsoftware que integren aspectos éticos, sociales, legales y económicos.'),
(10, 'contabilidad', 'No existen datos'),
(11, 'empresas, recursos, entre otros', 'No existen datos'),
(12, 'investigacion de mercados, entre otros', 'No existen datos'),
(13, 'comunicacion visual', 'No existen datos'),
(14, 'practicum', 'Capacidad para resolver los problemas matemáticos que puedan plantearse en la ingeniería. Aptitud para aplicar los\r\nconocimientos sobre: álgebra lineal; cálculo diferencial e integral; métodos numéricos; algorítmica numérica; estadística y\r\noptimización.\r\n Capacidad de explicar y aplicar los conceptos básicos de campos y ondas y electromagnetismo, teoría de circuitos\r\neléctricos, circuitos electrónicos, principio físico de los semiconductores y familias lógicas, dispositivos electrónicos y fotónicos, y\r\nsu aplicación para la resolución de problemas propios de la ingeniería.\r\nCapacidad de aplicar los conceptos básicos de matemática discreta, lógica, algorítmica y complejidad computacional, y su\r\naplicación para la resolución de problemas propios de la ingeniería.\r\nPoseer y aplicar conocimientos básicos sobre el uso y programación de los ordenadores, sistemas operativos, bases de datos\r\ny programas informáticos con aplicación en ingeniería.'),
(15, 'trabajo fin de grado', 'Ejercicio original a realizar individualmente y presentar y defender ante un tribunal universitario, consistente en un proyecto\r\nen el ámbito de las tecnologías específicas de la Ingeniería en Informática de naturaleza profesional en el que se sinteticen e\r\nintegren las competencias adquiridas en las enseñanzas.'),
(16, 'Algebra Lineal UC', 'Capacidad para la resolución de los problemas matemáticos que puedan plantearse en la ingeniería. Aptitud para aplicar los conocimientos sobre: álgebra lineal; cálculo diferencial e integral; métodos numéricos; algorítmica\r\nnumérica; estadística y optimización.'),
(17, 'Algorítmica y Complejidad UC', '(Comprender) Comprender y utilizar el lenguaje matemático.\r\nCapacidad para comprender y dominar los conceptos básicos de matemática discreta, lógica, algorítmica y\r\ncomplejidad computacional, y su aplicación para la resolución de problemas propios de la ingeniería.\r\n(Desarrollar programas) Desarrollar programas que resuelvan problemas matemáticos utilizando para cada caso\r\nel entorno computacional adecuado.\r\nConocimiento y aplicación de los procedimientos algorítmicos básicos de las tecnologías informáticas para\r\ndiseñar soluciones a problemas, analizando la idoneidad y complejidad de los algoritmos propuestos.\r\nConocimiento, diseño y utilización de forma eficiente de los tipos y estructuras de datos más adecuados a la\r\nresolución de un problema.\r\nCapacidad para evaluar la complejidad computacional de un problema, conocer estrategias algorítmicas que\r\npuedan conducir a su resolución y recomendar, desarrollar e implementar aquella que garantice el mejor\r\nrendimiento de acuerdo con los requisitos establecidos.'),
(18, 'Análisis Matemático y Métodos Numéricos UC', 'Capacidad para la resolución de los problemas matemáticos que puedan plantearse en la ingeniería. Aptitud para\r\naplicar los conocimientos sobre: álgebra lineal; cálculo diferencial e integral; métodos numéricos; algorítmica\r\nnumérica; estadística y optimización.\r\nCapacidad para comprender y dominar los conceptos básicos de matemática discreta, lógica, algorítmica y\r\ncomplejidad computacional, y su aplicación para la resolución de problemas propios de la ingeniería.'),
(19, 'Aprendizaje Automático y Minería de Datos\r\nUC', 'Capacidad para conocer y desarrollar técnicas de aprendizaje computacional y diseñar e implementar\r\naplicaciones y sistemas que las utilicen, incluyendo las dedicadas a extracción automática de información y\r\nconocimiento a partir de grandes volúmenes de datos.'),
(20, 'Arquitectura e Ingeniería de Computadores UC', 'Capacidad de conocer, comprender y evaluar la estructura y arquitectura de los computadores, así como los\r\ncomponentes básicos que los conforman.\r\nCapacidad de diseñar y construir sistemas digitales, incluyendo computadores, sistemas basados en\r\nmicroprocesador y sistemas de comunicaciones.\r\nCapacidad de analizar y evaluar arquitecturas de computadores, incluyendo plataformas paralelas y distribuidas,\r\nasí como desarrollar y optimizar software para las mismas.'),
(21, 'Bases de Datos Avanzadas UC', 'Conocimiento y aplicación de las características, funcionalidades y estructura de las bases de datos, que permitan su adecuado uso, y el diseño y el análisis e implementación de aplicaciones basadas en ellos.\r\nCapacidad para valorar las necesidades del cliente y especificar los requisitos software para satisfacer estas\r\nnecesidades, reconciliando objetivos en conflicto mediante la búsqueda de compromisos aceptables dentro de las\r\nlimitaciones derivadas del coste, del tiempo, de la existencia de sistemas ya desarrollados y de las propias\r\norganizaciones.\r\nCapacidad de dar solución a problemas de integración en función de las estrategias, estándares y tecnologías\r\ndisponibles.\r\nCapacidad de identificar y analizar problemas y diseñar, desarrollar, implementar, verificar y documentar\r\nsoluciones software sobre la base de un conocimiento adecuado de las teorías, modelos y técnicas actuales.'),
(22, 'Bases de Datos UC', 'Conocimiento y aplicación de las características, funcionalidades y estructura de las bases de datos, que permitan su adecuado uso, y el diseño y el análisis e implementación de aplicaciones basadas en ellos.\r\nConocimiento y aplicación de las herramientas necesarias para el almacenamiento, procesamiento y acceso a los\r\nSistemas de información, incluidos los basados en web.\r\nCapacidad para comprender la importancia de la negociación, los hábitos de trabajo efectivos, el liderazgo y las\r\nhabilidades de comunicación en todos los entornos de desarrollo de software.'),
(23, 'Calidad y Auditoría UC', 'Capacidad de identificar, evaluar y gestionar los riesgos potenciales asociados que pudieran presentarse.\r\nCapacidad para desarrollar, mantener y evaluar servicios y sistemas software que satisfagan todos los requisitos\r\ndel usuario y se comporten de forma fiable y eficiente, sean asequibles de desarrollar y mantener y cumplan\r\nnormas de calidad, aplicando las teorías, principios, métodos y prácticas de la Ingeniería del Software.\r\n\r\n'),
(24, 'Computer Animation and Video Games UC', 'Capacidad para diseñar y evaluar interfaces persona-computador que garanticen la accesibilidad y usabilidad de los sistemas, servicios y aplicaciones informáticas.\r\nConocimiento y aplicación de los principios, metodologías y ciclos de vida de la ingeniería de software.\r\nCapacidad para desarrollar y evaluar sistemas interactivos y de presentación de información compleja y su aplicación a la resolución de problemas de diseño de interacción persona computadora.\r\n\r\n\r\n\r\n'),
(25, 'Desarrollo de Sistemas de Información UC', 'Capacidad para desarrollar, mantener y evaluar servicios y sistemas software que satisfagan todos los requisitos del usuario y se comporten de forma fiable y eficiente, sean asequibles de desarrollar y mantener y cumplan normas de calidad, aplicando las teorías, principios, métodos y prácticas de la Ingeniería del Software.\r\nCapacidad para valorar las necesidades del cliente y especificar los requisitos software para satisfacer estas necesidades, reconciliando objetivos en conflicto mediante la búsqueda de compromisos aceptables dentro de las limitaciones derivadas del coste, del tiempo, de la existencia de sistemas ya desarrollados y de las propias organizaciones.\r\nCapacidad de identificar y analizar problemas y diseñar, desarrollar, implementar, verificar y documentar soluciones software sobre la base de un conocimiento adecuado de las teorías, modelos y técnicas actuales.'),
(26, 'Diseño de Algoritmos UC', 'Capacidad para evaluar la complejidad computacional de un problema, conocer estrategias algorítmicas que\r\npuedan conducir a su resolución y recomendar, desarrollar e implementar aquella que garantice el mejor\r\nrendimiento de acuerdo con los requisitos establecidos.\r\n'),
(27, 'Diseño de Software UC', 'Capacidad para desarrollar, mantener y evaluar servicios y sistemas software que satisfagan todos los requisitos del usuario y se comporten de forma fiable y eficiente, sean asequibles de desarrollar y mantener y cumplan normas de calidad, aplicando las teorías, principios, métodos y prácticas de la Ingeniería del Software.\r\nCapacidad de identificar y analizar problemas y diseñar, desarrollar, implementar, verificar y documentar soluciones software sobre la base de un conocimiento adecuado de las teorías, modelos y técnicas actuales.\r\nCapacidad de identificar, evaluar y gestionar los riesgos potenciales asociados que pudieran presentarse.\r\nCapacidad para diseñar soluciones apropiadas en uno o más dominios de aplicación utilizando métodos de la ingeniería del software que integren aspectos éticos, sociales, legales y económicos.'),
(28, 'Diseño y Administración de Redes UC', 'Conocimiento, administración y mantenimiento de sistemas, servicios y aplicaciones informáticas.\r\nConocimiento y aplicación de las características, funcionalidades y estructura de los Sistemas Distribuidos, las Redes de Computadores e Internet y diseñar e implementar aplicaciones basadas en ellas.\r\nCapacidad para analizar, evaluar, seleccionar y configurar plataformas hardware para el desarrollo y ejecución de aplicaciones y servicios informáticos.\r\nCapacidad para diseñar, desplegar, administrar y gestionar redes de computadores.\r\nConocimientos básicos sobre el uso y programación de los ordenadores, sistemas operativos, bases de datos y programas informáticos con aplicación en ingeniería.\r\nCapacidad de diseñar e implementar software de sistema y de comunicaciones.\r\nCapacidad de analizar, evaluar y seleccionar las plataformas hardware y software más adecuadas para el soporte de aplicaciones empotradas y de tiempo real.\r\nCapacidad para comprender, aplicar y gestionar la garantía y seguridad de los sistemas informáticos.\r\nCapacidad para conocer los fundamentos, paradigmas y técnicas propias de los sistemas inteligentes y analizar, diseñar y construir sistemas, servicios y aplicaciones informáticas que utilicen dichas técnicas en cualquier ámbito de aplicación.'),
(29, 'Diseño y Gestión de Sistemas Informáticos UC', 'Capacidad para elaborar el pliego de condiciones técnicas de una instalación informática que cumpla los\r\nestándares y normativas vigentes.\r\nConocimiento, administración y mantenimiento de sistemas, servicios y aplicaciones informáticas.'),
(30, 'Economía y Administración de Empresas UC', 'Conocimiento adecuado del concepto de empresa, marco institucional y jurídico de la empresa. Organización y gestión de empresas.'),
(31, 'Estadística y Optimización UC', 'Capacidad para la resolución de los problemas matemáticos que puedan plantearse en la ingeniería. Aptitud para aplicar los conocimientos sobre: álgebra lineal; cálculo diferencial e integral; métodos numéricos; algorítmica numérica; estadística y optimización.'),
(32, 'Estructura de Computadores UC', 'Conocimiento de la estructura, organización, funcionamiento e interconexión de los sistemas informáticos, los fundamentos de su programación, y su aplicación para la resolución de problemas propios de la ingeniería.\r\nCapacidad de conocer, comprender y evaluar la estructura y arquitectura de los computadores, así como los componentes básicos que los conforman.\r\nCapacidad de diseñar y construir sistemas digitales, incluyendo computadores, sistemas basados en\r\nmicroprocesador y sistemas de comunicaciones.'),
(33, 'Estructuras de Datos UC', 'Conocimiento y aplicación de los procedimientos algorítmicos básicos de las tecnologías informáticas para diseñar soluciones a problemas, analizando la idoneidad y complejidad de los algoritmos propuestos.\r\nConocimiento, diseño y utilización de forma eficiente de los tipos y estructuras de datos más adecuados a la resolución de un problema.\r\nCapacidad para analizar, diseñar, construir y mantener aplicaciones de forma robusta, segura y eficiente, eligiendo el paradigma y los lenguajes de programación más adecuados.'),
(34, 'Fundamentos Físicos de la Informática UC', 'Comprensión y dominio de los conceptos básicos de campos y ondas y electromagnetismo, teoría de circuitos eléctricos, circuitos electrónicos, principio físico de los semiconductores y familias lógicas, dispositivos electrónicos y fotónicos, y su aplicación para la resolución de problemas propios de la ingeniería.'),
(35, 'Gestión de Proyectos Software UC', 'Capacidad de identificar, evaluar y gestionar los riesgos potenciales asociados que pudieran presentarse.\r\nCapacidad para planificar, concebir, desplegar y dirigir proyectos, servicios y sistemas informáticos en todos los ámbitos, liderando su puesta en marcha y su mejora continua y valorando su impacto económico y social.\r\nCapacidad para desarrollar, mantener y evaluar servicios y sistemas software que satisfagan todos los requisitos del usuario y se comporten de forma fiable y eficiente, sean asequibles de desarrollar y mantener y cumplan normas de calidad, aplicando las teorías, principios, métodos y prácticas de la Ingeniería del Software.\r\nCapacidad para valorar las necesidades del cliente y especificar los requisitos software para satisfacer estas necesidades, reconciliando objetivos en conflicto mediante la búsqueda de compromisos aceptables dentro de las limitaciones derivadas del coste, del tiempo, de la existencia de sistemas ya desarrollados y de las propias organizaciones.'),
(36, 'Gráficos por Computador y Realidad Virtual UC', 'Capacidad para adquirir, obtener, formalizar y representar el conocimiento humano en una forma computable para la resolución de problemas mediante un sistema informático en cualquier ámbito de aplicación, particularmente los relacionados con aspectos de computación, percepción y actuación en ambientes o entornos inteligentes.\r\nCapacidad para desarrollar y evaluar sistemas interactivos y de presentación de información compleja y su aplicación a la resolución de problemas de diseño de interacción persona computadora.\r\nCapacidad para conocer y desarrollar técnicas de aprendizaje computacional y diseñar e implementar\r\naplicaciones y sistemas que las utilicen, incluyendo las dedicadas a extracción automática de información y conocimiento a partir de grandes volúmenes de datos.'),
(37, 'Informática Industrial UC', 'Conocimiento de la estructura, organización, funcionamiento e interconexión de los sistemas informáticos, los fundamentos de su programación, y su aplicación para la resolución de problemas propios de la ingeniería.\r\nCapacidad de diseñar y construir sistemas digitales, incluyendo computadores, sistemas basados en\r\nmicroprocesador y sistemas de comunicaciones.'),
(38, 'Ingeniería de Requisitos UC', 'Capacidad para valorar las necesidades del cliente y especificar los requisitos software para satisfacer estas necesidades, reconciliando objetivos en conflicto mediante la búsqueda de compromisos aceptables dentro de las limitaciones derivadas del coste, del tiempo, de la existencia de sistemas ya desarrollados y de las propias organizaciones.\r\nCapacidad de identificar y analizar problemas y diseñar, desarrollar, implementar, verificar y documentar soluciones software sobre la base de un conocimiento adecuado de las teorías, modelos y técnicas actuales.'),
(39, 'Ingeniería del Software I UC', 'Capacidad para diseñar, desarrollar, seleccionar y evaluar aplicaciones y sistemas informáticos, asegurando su fiabilidad, seguridad y calidad, conforme a principios éticos y a la legislación y normativa vigente.\r\nCapacidad para analizar, diseñar, construir y mantener aplicaciones de forma robusta, segura y eficiente, eligiendo el paradigma y los lenguajes de programación más adecuados.\r\nConocimiento y aplicación de los principios, metodologías y ciclos de vida de la ingeniería de software.\r\nCapacidad para desarrollar, mantener y evaluar servicios y sistemas software que satisfagan todos los requisitos del usuario y se comporten de forma fiable y eficiente, sean asequibles de desarrollar y mantener y cumplan normas de calidad, aplicando las teorías, principios, métodos y prácticas de la Ingeniería del Software.\r\nCapacidad para valorar las necesidades del cliente y especificar los requisitos software para satisfacer estas necesidades, reconciliando objetivos en conflicto mediante la búsqueda de compromisos aceptables dentro de las limitaciones derivadas del coste, del tiempo, de la existencia de sistemas ya desarrollados y de las propias organizaciones.\r\nCapacidad de identificar y analizar problemas y diseñar, desarrollar, implementar, verificar y documentar soluciones software sobre la base de un conocimiento adecuado de las teorías, modelos y técnicas actuales.\r\nCapacidad para diseñar soluciones apropiadas en uno o más dominios de aplicación utilizando métodos de la ingeniería del software que integren aspectos éticos, sociales, legales y económicos.\r\nCapacidad para comprender la importancia de la negociación, los hábitos de trabajo efectivos, el liderazgo y las habilidades de comunicación en todos los entornos de desarrollo de software'),
(40, 'Ingeniería del Software II UC', 'Capacidad para diseñar, desarrollar, seleccionar y evaluar aplicaciones y sistemas informáticos, asegurando su fiabilidad, seguridad y calidad, conforme a principios éticos y a la legislación y normativa vigente.\r\nCapacidad para planificar, concebir, desplegar y dirigir proyectos, servicios y sistemas informáticos en todos los ámbitos, liderando su puesta en marcha y su mejora continua y valorando su impacto económico y social.\r\nConocimiento, administración y mantenimiento de sistemas, servicios y aplicaciones informáticas.\r\nCapacidad para analizar, diseñar, construir y mantener aplicaciones de forma robusta, segura y eficiente, eligiendo el paradigma y los lenguajes de programación más adecuados.\r\nConocimiento y aplicación de los principios, metodologías y ciclos de vida de la ingeniería de software.'),
(41, 'Ingles UC', 'no existen datos'),
(42, 'Interacción Persona-Computador UC', 'Capacidad para diseñar y evaluar interfaces persona-computador que garanticen la accesibilidad y usabilidad de los sistemas, servicios y aplicaciones informáticas.\r\nCapacidad para desarrollar y evaluar sistemas interactivos y de presentación de información compleja y su aplicación a la resolución de problemas de diseño de interacción persona computadora.'),
(43, 'Introducción a las Redes de Computadores UC', 'Conocimiento y aplicación de las características, funcionalidades y estructura de los Sistemas Distribuidos, las Redes de Computadores e Internet y diseñar e implementar aplicaciones basadas en ellas.'),
(44, 'Introducción a los Computadores UC', 'Conocimiento de la estructura, organización, funcionamiento e interconexión de los sistemas informáticos, los fundamentos de su programación, y su aplicación para la resolución de problemas propios de la ingeniería.'),
(45, 'Introducción a los Sistemas Inteligentes UC', 'Capacidad para comprender y dominar los conceptos básicos de matemática discreta, lógica, algorítmica y\r\ncomplejidad computacional, y su aplicación para la resolución de problemas propios de la ingeniería.\r\nConocimiento y aplicación de los procedimientos algorítmicos básicos de las tecnologías informáticas para diseñar soluciones a problemas, analizando la idoneidad y complejidad de los algoritmos propuestos.\r\nConocimiento, diseño y utilización de forma eficiente de los tipos y estructuras de datos más adecuados a la resolución de un problema.\r\nConocimiento y aplicación de los principios fundamentales y técnicas básicas de los sistemas inteligentes y su aplicación práctica.\r\nCapacidad para conocer los fundamentos, paradigmas y técnicas propias de los sistemas inteligentes y analizar, diseñar y construir sistemas, servicios y aplicaciones informáticas que utilicen dichas técnicas en cualquier ámbito de aplicación.\r\nCapacidad para adquirir, obtener, formalizar y representar el conocimiento humano en una forma computable para la resolución de problemas mediante un sistema informático en cualquier ámbito de aplicación, particularmente los relacionados con aspectos de computación, percepción y actuación en ambientes o entornos inteligentes.\r\nCapacidad para conocer y desarrollar técnicas de aprendizaje computacional y diseñar e implementar\r\naplicaciones y sistemas que las utilicen, incluyendo las dedicadas a extracción automática de información y conocimiento a partir de grandes volúmenes de datos.'),
(46, 'Introducción al software UC', 'Conocimientos básicos sobre el uso y programación de los ordenadores, sistemas operativos, bases de datos y programas informáticos con aplicación en ingeniería.'),
(47, 'Lenguajes de Programación UC', 'Capacidad para conocer los fundamentos teóricos de los lenguajes de programación y las técnicas de procesamiento léxico, sintáctico y semántico asociadas, y saber aplicarlas para la creación, diseño y\r\nprocesamiento de lenguajes.'),
(48, 'Lenguajes Formales UC', 'Capacidad para tener un conocimiento profundo de los principios fundamentales y modelos de la computación y saberlos aplicar para interpretar, seleccionar, valorar, modelar, y crear nuevos conceptos, teorías, usos y desarrollos tecnológicos relacionados con la informática.'),
(49, 'Lógica UC', 'Capacidad para comprender y dominar los conceptos básicos de matemática discreta, lógica, algorítmica y\r\ncomplejidad computacional, y su aplicación para la resolución de problemas propios de la ingeniería.\r\n\r\n'),
(50, 'Matemática Discreta UC', 'Capacidad para comprender y dominar los conceptos básicos de matemática discreta, lógica, algorítmica y\r\ncomplejidad computacional, y su aplicación para la resolución de problemas propios de la ingeniería.'),
(51, 'Métodos de Desarrollo UC', 'Capacidad de identificar y analizar problemas y diseñar, desarrollar, implementar, verificar y documentar soluciones software sobre la base de un conocimiento adecuado de las teorías, modelos y técnicas actuales.\r\nConocimiento y aplicación de los principios, metodologías y ciclos de vida de la ingeniería de software.\r\nConocimiento de la normativa y la regulación de la Informática en los ámbitos nacional, europeo e internacional.\r\nCapacidad para desarrollar, mantener y evaluar servicios y sistemas software que satisfagan todos los requisitos del usuario y se comporten de forma fiable y eficiente, sean asequibles de desarrollar y mantener y cumplan normas de calidad, aplicando las teorías, principios, métodos y prácticas de la Ingeniería del Software.\r\nCapacidad para valorar las necesidades del cliente y especificar los requisitos software para satisfacer estas necesidades, reconciliando objetivos en conflicto mediante la búsqueda de compromisos aceptables dentro de las limitaciones derivadas del coste, del tiempo, de la existencia de sistemas ya desarrollados y de las propias organizaciones.\r\nCapacidad de identificar, evaluar y gestionar los riesgos potenciales asociados que pudieran presentarse.\r\nCapacidad para diseñar soluciones apropiadas en uno o más dominios de aplicación utilizando métodos de la ingeniería del software que integren aspectos éticos, sociales, legales y económicos.'),
(52, 'Métodos de Programación UC', 'Capacidad para diseñar, desarrollar, seleccionar y evaluar aplicaciones y sistemas informáticos, asegurando su fiabilidad, seguridad y calidad, conforme a principios éticos y a la legislación y normativa vigente.\r\nConocimiento y aplicación de los procedimientos algorítmicos básicos de las tecnologías informáticas para diseñar soluciones a problemas, analizando la idoneidad y complejidad de los algoritmos propuestos.\r\nConocimiento, diseño y utilización de forma eficiente de los tipos y estructuras de datos más adecuados a la resolución de un problema.\r\nCapacidad para analizar, diseñar, construir y mantener aplicaciones de forma robusta, segura y eficiente, eligiendo el paradigma y los lenguajes de programación más adecuados.\r\n'),
(53, 'Modelos de Cálculo UC', 'Capacidad para tener un conocimiento profundo de los principios fundamentales y modelos de la computación y saberlos aplicar para interpretar, seleccionar, valorar, modelar, y crear nuevos conceptos, teorías, usos y desarrollos tecnológicos relacionados con la informática.\r\nCapacidad para evaluar la complejidad computacional de un problema, conocer estrategias algorítmicas que\r\npuedan conducir a su resolución y recomendar, desarrollar e implementar aquella que garantice el mejor\r\nrendimiento de acuerdo con los requisitos establecidos.'),
(54, 'Multiprocesadores UC', 'Capacidad para planificar, concebir, desplegar y dirigir proyectos, servicios y sistemas informáticos en todos los ámbitos, liderando su puesta en marcha y su mejora continua y valorando su impacto económico y social.\r\nCapacidad de diseñar y construir sistemas digitales, incluyendo computadores, sistemas basados en\r\nmicroprocesador y sistemas de comunicaciones.\r\nCapacidad de analizar y evaluar arquitecturas de computadores, incluyendo plataformas paralelas y distribuidas, así como desarrollar y optimizar software para las mismas.\r\nCapacidad de diseñar e implementar software de sistema y de comunicaciones.\r\nCapacidad para analizar, evaluar, seleccionar y configurar plataformas hardware para el desarrollo y ejecución de aplicaciones y servicios informáticos.\r\nCapacidad para diseñar, desplegar, administrar y gestionar redes de computadores.'),
(55, 'Natural Language Processing UC', 'Capacidad para adquirir, obtener, formalizar y representar el conocimiento humano en una forma computable para la resolución de problemas mediante un sistema informático en cualquier ámbito de aplicación, particularmente los relacionados con aspectos de computación, percepción y actuación en ambientes o entornos inteligentes.\r\n'),
(56, 'Organización de Computadores UC', 'Capacidad de conocer, comprender y evaluar la estructura y arquitectura de los computadores, así como los componentes básicos que los conforman.'),
(57, 'PARÁCTICAS ACADÉMICAS EXTERNAS I UC', 'Capacidad para diseñar, desarrollar, seleccionar y evaluar aplicaciones y sistemas\r\ninformáticos, asegurando su fiabilidad, seguridad y calidad, conforme a principios éticos y a la legislación y normativa vigente.\r\nCapacidad para planificar, concebir, desplegar y dirigir proyectos, servicios y sistemas\r\ninformáticos en todos los ámbitos, liderando su puesta en marcha y su mejora continua y\r\nvalorando su impacto económico y social.\r\nCapacidad para comprender la importancia de la negociación, los hábitos de trabajo\r\nefectivos, el liderazgo y las habilidades de comunicación en todos los entornos de desarrollo de software.\r\nConocimiento y aplicación de los principios, metodologías y ciclos de vida de la ingeniería de software.'),
(58, 'Procesos de Ingeniería del Software UC', 'Capacidad para desarrollar, mantener y evaluar servicios y sistemas software que satisfagan todos los requisitos del usuario y se comporten de forma fiable y eficiente, sean asequibles de desarrollar y mantener y cumplan normas de calidad, aplicando las teorías, principios, métodos y prácticas de la Ingeniería del Software.\r\nCapacidad de identificar y analizar problemas y diseñar, desarrollar, implementar, verificar y documentar soluciones software sobre la base de un conocimiento adecuado de las teorías, modelos y técnicas actuales.\r\nCapacidad para analizar, diseñar, construir y mantener aplicaciones de forma robusta, segura y eficiente, eligiendo el paradigma y los lenguajes de programación más adecuados.\r\nConocimiento y aplicación de las características, funcionalidades y estructura de los Sistemas Distribuidos, las Redes de Computadores e Internet y diseñar e implementar aplicaciones basadas en ellas.\r\nConocimiento y aplicación de las herramientas necesarias para el almacenamiento, procesamiento y acceso a los Sistemas de información, incluidos los basados en web.\r\nCapacidad de dar solución a problemas de integración en función de las estrategias, estándares y tecnologías disponibles.'),
(59, 'Programación Paralela, Concurrente y de Tiempo Real UC', 'Conocimiento, diseño y utilización de forma eficiente de los tipos y estructuras de datos más adecuados a la resolución de un problema.\r\nCapacidad para analizar, diseñar, construir y mantener aplicaciones de forma robusta, segura y eficiente, eligiendo el paradigma y los lenguajes de programación más adecuados.\r\nConocimiento y aplicación de los principios fundamentales y técnicas básicas de la programación paralela, concurrente, distribuida y de tiempo real.\r\nConocimiento y aplicación de los procedimientos algorítmicos básicos de las tecnologías informáticas para diseñar soluciones a problemas, analizando la idoneidad y complejidad de los algoritmos propuestos.'),
(60, 'Redes de Computadores y Sistemas Distribuidos UC', 'Conocimiento y aplicación de las características, funcionalidades y estructura de los Sistemas Distribuidos, las Redes de Computadores e Internet y diseñar e implementar aplicaciones basadas en ellas.\r\nConocimiento y aplicación de los principios fundamentales y técnicas básicas de la programación paralela, concurrente, distribuida y de tiempo real.\r\nCapacidad para planificar, concebir, desplegar y dirigir proyectos, servicios y sistemas informáticos en todos los ámbitos, liderando su puesta en marcha y su mejora continua y valorando su impacto económico y social.'),
(61, 'Representación del Conocimiento UC', 'Capacidad para conocer los fundamentos, paradigmas y técnicas propias de los sistemas inteligentes y analizar, diseñar y construir sistemas, servicios y aplicaciones informáticas que utilicen dichas técnicas en cualquier ámbito de aplicación.\r\nCapacidad para adquirir, obtener, formalizar y representar el conocimiento humano en una forma computable para la resolución de problemas mediante un sistema informático en cualquier ámbito de aplicación, particularmente los relacionados con aspectos de computación, percepción y actuación en ambientes o entornos inteligentes'),
(62, 'Servicios Software UC', 'Capacidad para desarrollar, mantener y evaluar servicios y sistemas software que satisfagan todos los requisitos del usuario y se comporten de forma fiable y eficiente, sean asequibles de desarrollar y mantener y cumplan normas de calidad, aplicando las teorías, principios, métodos y prácticas de la Ingeniería del Software.\r\nCapacidad de dar solución a problemas de integración en función de las estrategias, estándares y tecnologías disponibles.\r\nCapacidad de identificar y analizar problemas y diseñar, desarrollar, implementar, verificar y documentar soluciones software sobre la base de un conocimiento adecuado de las teorías, modelos y técnicas actuales.\r\nCapacidad para diseñar soluciones apropiadas en uno o más dominios de aplicación utilizando métodos de la ingeniería del software que integren aspectos éticos, sociales, legales y económicos.'),
(63, 'Sistemas de Información de la Empresa UC', 'No existen registros'),
(64, 'Sistemas de Información UC', 'Conocimiento y aplicación de las herramientas necesarias para el almacenamiento, procesamiento y acceso a los Sistemas de información, incluidos los basados en web.\r\nCapacidad para diseñar, desarrollar, seleccionar y evaluar aplicaciones y sistemas informáticos, asegurando su fiabilidad, seguridad y calidad, conforme a principios éticos y a la legislación y normativa vigente.\r\nCapacidad para elaborar el pliego de condiciones técnicas de una instalación informática que cumpla los\r\nestándares y normativas vigentes.\r\nCapacidad para comprender la importancia de la negociación, los hábitos de trabajo efectivos, el liderazgo y las habilidades de comunicación en todos los entornos de desarrollo de software.\r\nConocimiento y aplicación de los principios, metodologías y ciclos de vida de la ingeniería de software.'),
(65, 'Sistemas de Tiempo Real UC', 'Conocimiento y aplicación de los principios fundamentales y técnicas básicas de la programación paralela, concurrente, distribuida y de tiempo real.\r\nCapacidad de analizar, evaluar y seleccionar las plataformas hardware y software más adecuadas para el soporte de aplicaciones empotradas y de tiempo real.\r\nCapacidad para comprender, aplicar y gestionar la garantía y seguridad de los sistemas informáticos.\r\nCapacidad para analizar, evaluar, seleccionar y configurar plataformas hardware para el desarrollo y ejecución de aplicaciones y servicios informáticos'),
(66, 'Sistemas Digitales UC', 'Conocimiento de la estructura, organización, funcionamiento e interconexión de los sistemas informáticos, los fundamentos de su programación, y su aplicación para la resolución de problemas propios de la ingeniería.\r\nComprensión y dominio de los conceptos básicos de campos y ondas y electromagnetismo, teoría de circuitos eléctricos, circuitos electrónicos, principio físico de los semiconductores y familias lógicas, dispositivos electrónicos y fotónicos, y su aplicación para la resolución de problemas propios de la ingeniería.'),
(67, 'Sistemas Embebidos UC', 'Capacidad de diseñar y construir sistemas digitales, incluyendo computadores, sistemas basados en\r\nmicroprocesador y sistemas de comunicaciones.\r\nCapacidad de desarrollar procesadores específicos y sistemas empotrados, así como desarrollar y optimizar el software de dichos sistemas.\r\nCapacidad de analizar, evaluar y seleccionar las plataformas hardware y software más adecuadas para el soporte de aplicaciones empotradas y de tiempo real.'),
(68, 'Sistemas Informáticos UC', 'Capacidad para planificar, concebir, desplegar y dirigir proyectos, servicios y sistemas informáticos en todos los ámbitos, liderando su puesta en marcha y su mejora continua y valorando su impacto económico y social.\r\nCapacidad para elaborar el pliego de condiciones técnicas de una instalación informática que cumpla los\r\nestándares y normativas vigentes.\r\nConocimiento, administración y mantenimiento de sistemas, servicios y aplicaciones informáticas.'),
(69, 'Sistemas Operativos Avanzados UC', 'Conocimiento de las características, funcionalidades y estructura de los Sistemas Operativos y diseñar e\r\nimplementar aplicaciones basadas en sus servicios.\r\nConocimientos básicos sobre el uso y programación de los ordenadores, sistemas operativos, bases de datos y programas informáticos con aplicación en ingeniería.'),
(70, 'Sistemas Operativos UC', 'Capacidad para la resolución de los problemas matemáticos que puedan plantearse en la ingeniería. Aptitud para aplicar los conocimientos sobre: álgebra lineal; cálculo diferencial e integral; métodos numéricos; algorítmica numérica; estadística y optimización.\r\nConocimiento de las características, funcionalidades y estructura de los Sistemas Operativos y diseñar e\r\nimplementar aplicaciones basadas en sus servicios.'),
(71, 'System and Network Security and Assurance UC', 'No existen registros'),
(72, 'Valores, Ética y Profesión Informática UC', 'Capacidad para diseñar, desarrollar, seleccionar y evaluar aplicaciones y sistemas informáticos, asegurando su fiabilidad, seguridad y calidad, conforme a principios éticos y a la legislación y normativa vigente.\r\nCapacidad para planificar, concebir, desplegar y dirigir proyectos, servicios y sistemas informáticos en todos los ámbitos, liderando su puesta en marcha y su mejora continua y valorando su impacto económico y social.\r\nCapacidad para comprender la importancia de la negociación, los hábitos de trabajo efectivos, el liderazgo y las habilidades de comunicación en todos los entornos de desarrollo de software.\r\nCapacidad para elaborar el pliego de condiciones técnicas de una instalación informática que cumpla los\r\nestándares y normativas vigentes.\r\nConocimiento de la normativa y la regulación de la Informática en los ámbitos nacional, europeo e internacional.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_uneatlantico`
--

CREATE TABLE `tb_uneatlantico` (
  `id` int(11) NOT NULL,
  `nombre_asignatura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creditos` int(11) NOT NULL,
  `id_outcom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_uneatlantico`
--

INSERT INTO `tb_uneatlantico` (`id`, `nombre_asignatura`, `creditos`, `id_outcom`) VALUES
(1, 'Tecnología y Estructura de Ordenadores', 6, 5),
(2, 'Programación I', 6, 3),
(3, 'Introducción a la Gestión de Proyectos de Software', 6, 4),
(4, 'Matemática I', 6, 1),
(5, 'Física', 6, 2),
(6, 'Matemática II', 6, 1),
(7, 'Programación II', 6, 3),
(8, 'Tecnologias de la Informacion y Comunicación', 6, 4),
(9, 'Matematica Discreta', 6, 1),
(10, 'Logica', 6, 1),
(11, 'Redes de Ordenadores', 6, 6),
(12, 'Estadística', 6, 1),
(13, 'Bases de Datos I', 6, 4),
(14, 'Estructuras de Datos y Algoritmos I', 6, 3),
(15, 'Matematica Numerica', 6, 1),
(16, 'Lenguajes de Programación', 6, 3),
(17, 'Sistemas Operativos', 6, 6),
(18, 'Bases de Datos II', 6, 4),
(19, 'Estructuras de Datos y Algoritmos II', 6, 3),
(20, 'Inglés II', 6, 7),
(21, 'Ingeniería de Software I', 6, 4),
(22, 'Sistemas Distribuidos y Programación en Paralelo', 6, 6),
(23, 'Ética y Legislación Informática', 6, 8),
(24, 'Inglés III', 6, 7),
(25, 'Ingeniería de Software II', 6, 4),
(26, 'Dirección de Sistemas de Información', 6, 4),
(27, 'Seguridad Informática y Criptografía', 6, 6),
(28, 'Inglés IV', 6, 7),
(29, 'Practicum', 6, 14),
(30, 'Programación Web I', 6, 3),
(31, 'Inteligencia Artificial', 6, 4),
(32, 'Proyectos', 6, 4),
(33, 'Trabajo de Fin de Grado', 12, 15),
(34, 'Programación Web II', 6, 3),
(35, 'Economía de la Empresa y Emprendedores', 6, 9),
(36, 'Organización de Empresas', 6, 11),
(37, 'Investigación de Mercados', 6, 12),
(38, 'Teoría y Práctica de la Comunicación Visual', 6, 13),
(39, 'Contabilidad I', 6, 10),
(40, 'Recursos Humanos', 6, 11),
(41, 'Marketing Estratégico y Operativo', 6, 12),
(42, 'Sociedad de la Información y el Conocimiento', 6, 13),
(43, 'Contabilidad II', 6, 10),
(44, 'Automática y Control', 6, 11),
(45, 'Marketing Digital y Medios Interactivos', 6, 12),
(46, 'Animación Digital', 6, 13),
(47, 'Matemáticas Financieras', 6, 10),
(48, 'Administración de la Producción y Logística', 6, 11),
(49, 'Comunicación Corporativa e Institucional', 6, 12),
(50, 'Creación de Productos Multimedia', 6, 13),
(51, 'Análisis de Estados Financieros', 6, 10);

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
(3, 'Universidad de Cantabria');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_asignaturas`
--
ALTER TABLE `tb_asignaturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_universidad` (`id_universidad`),
  ADD KEY `id_outcom` (`id_outcom`),
  ADD KEY `id` (`id`),
  ADD KEY `id_asignatura` (`id_asignatura`);

--
-- Indices de la tabla `tb_contenido`
--
ALTER TABLE `tb_contenido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_asignatura` (`id_asignatura`);

--
-- Indices de la tabla `tb_contenido_otros`
--
ALTER TABLE `tb_contenido_otros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_asignaturas` (`id_asignaturas`);

--
-- Indices de la tabla `tb_outcom`
--
ALTER TABLE `tb_outcom`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_uneatlantico`
--
ALTER TABLE `tb_uneatlantico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_outcom` (`id_outcom`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `tb_contenido`
--
ALTER TABLE `tb_contenido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT de la tabla `tb_contenido_otros`
--
ALTER TABLE `tb_contenido_otros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `tb_outcom`
--
ALTER TABLE `tb_outcom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `tb_uneatlantico`
--
ALTER TABLE `tb_uneatlantico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `tb_universidades`
--
ALTER TABLE `tb_universidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_asignaturas`
--
ALTER TABLE `tb_asignaturas`
  ADD CONSTRAINT `tb_asignaturas_ibfk_1` FOREIGN KEY (`id_universidad`) REFERENCES `tb_universidades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_asignaturas_ibfk_2` FOREIGN KEY (`id_outcom`) REFERENCES `tb_outcom` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_asignaturas_ibfk_3` FOREIGN KEY (`id_asignatura`) REFERENCES `tb_uneatlantico` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_contenido`
--
ALTER TABLE `tb_contenido`
  ADD CONSTRAINT `tb_contenido_ibfk_1` FOREIGN KEY (`id_asignatura`) REFERENCES `tb_uneatlantico` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_contenido_otros`
--
ALTER TABLE `tb_contenido_otros`
  ADD CONSTRAINT `tb_contenido_otros_ibfk_1` FOREIGN KEY (`id_asignaturas`) REFERENCES `tb_asignaturas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_uneatlantico`
--
ALTER TABLE `tb_uneatlantico`
  ADD CONSTRAINT `tb_uneatlantico_ibfk_1` FOREIGN KEY (`id_outcom`) REFERENCES `tb_outcom` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
