-- --------------------------------------------------------
-- Host:                         192.168.1.254
-- Versión del servidor:         10.4.27-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para micordoba
CREATE DATABASE IF NOT EXISTS `micordoba` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `micordoba`;

-- Volcando estructura para tabla micordoba.ciudades
CREATE TABLE IF NOT EXISTS `ciudades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `ubicacion` varchar(50) DEFAULT NULL,
  `poblacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla micordoba.ciudades: ~4 rows (aproximadamente)
INSERT INTO `ciudades` (`id`, `nombre`, `ubicacion`, `poblacion`) VALUES
	(2, 'Cosquin', 'Cordoba Departamento Valle de Punilla', 40800),
	(3, 'Cordoba', 'Region central del pais', 2106734),
	(4, 'Villa General Belgrano', 'Localidad del departamento de Calamuchita', 6260),
	(5, 'Villa Carlos Paz', 'Valle de Punilla', 62000);
select * from ciudades 
delete from ciudades where id=2 
update ciudades set nombre=cosquincito where id=2

-- Volcando estructura para tabla micordoba.contactos
CREATE TABLE IF NOT EXISTS `contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla micordoba.contactos: ~5 rows (aproximadamente)
INSERT INTO `contactos` (`id`, `nombre`, `email`, `telefono`) VALUES
	(9, 'Gianna', 'g@gmail.com', '035678924'),
	(10, 'Benja', 'b@gmail.com', '038522789'),
	(11, 'Axel', 'a@gmail.com', '03597236'),
	(12, 'Xavier', 'x@gmail.com', '035873673'),
	(13, 'Maximo', 'ko@gmail.com', '86632902');
select * from contactos
delete from contactos where id=13
update contactos set nombre=Max where id=13

-- Volcando estructura para tabla micordoba.imagenes_populares
CREATE TABLE IF NOT EXISTS `imagenes_populares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla micordoba.imagenes_populares: ~5 rows (aproximadamente)
INSERT INTO `imagenes_populares` (`id`, `nombre`, `url`, `fecha_publicacion`) VALUES
	(2, 'Cordoba', 'https://vamospanish.com/wp-content/uploads/cordoba-the-second-city-822x1024.jpg', '2023-07-07'),
	(3, 'Cordoba', 'https://vamospanish.com/wp-content/uploads/cordoba-the-second-city-822x1024.jpg', '2021-12-17'),
	(4, 'Cosquin', 'https://www.welcomeargentina.com/paseos/pedaleada_balnerios_cosquin/balnearios-cosquin-2.jpg', '2021-03-20'),
	(5, 'Carlos Paz', 'https://www.viajando.travel/villa-carlos-paz/villa-carlos-paz-una-ciudad-todos-los-gustos-n13', '2022-01-04'),
	(6, 'Villa General Belgrano', 'https://www.vivavgb.com.ar/', '2022-11-13');
select * from imagenes_populares 
delete from imagenes_populares where id=4
update imagenes_populares set nombre=cosquincito where id=4

-- Volcando estructura para tabla micordoba.videos
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla micordoba.videos: ~4 rows (aproximadamente)
INSERT INTO `videos` (`id`, `nombre`, `url`, `fecha_publicacion`) VALUES
	(1, 'Cordoba', 'https://youtu.be/DB4KFt6q9Ew', '2021-10-17'),
	(2, 'Cosquin', 'https://youtu.be/50NYwkLUglc', '2021-07-15'),
	(3, 'Carlos Paz', 'https://youtu.be/2fnPtPmNUzE', '2022-01-04'),
	(4, 'Villa General Belgrano', 'https://youtu.be/F7Pvna_GOGE', '2022-01-25');
select * from videos 
delete from ciudades where id=2 
update videos set nombre=cosquincito where id=2

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
