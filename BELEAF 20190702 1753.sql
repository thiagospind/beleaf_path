-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.23-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema beleaf
--

CREATE DATABASE IF NOT EXISTS beleaf;
USE beleaf;

--
-- Definition of table `marmita`
--

DROP TABLE IF EXISTS `marmita`;
CREATE TABLE `marmita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `lista_ingredientes` text NOT NULL,
  `quantidade` int(11) NOT NULL,
  `url_imagem` varchar(255) NOT NULL,
  `porcentagem_desconto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marmita`
--

/*!40000 ALTER TABLE `marmita` DISABLE KEYS */;
INSERT INTO `marmita` (`id`,`nome`,`descricao`,`preco`,`lista_ingredientes`,`quantidade`,`url_imagem`,`porcentagem_desconto`) VALUES 
 (1,'Lasanha Bolonhesa do Futurooo','Lasanha Bolonhesa do Futuro','28.90','Tomate, massa de lasanha, futuro burguer (água, preparado proteíco [proteína texturizada de soja, proteína isolada de soja, proteína de ervilha e farinha de grão de bico/, gordura vegetal, amido modificado, cebola, condimento preparado sabor carne, sal, açúcar, beterraba em pó, estabilizante metilcelulose, aroma natural e antioxidante ácido asórbico), mussarela de castanha (água, castanha de caju, óleo de coco, fermentado de semente de quinoa, polvilho doce, sal, massa de soja fermentada, suco de limão, alho em pó, lecitina de soja, goma xantana, kappa carragena, acidulante ácido lático), azeite de oliva, sal. CONTÉM GLÚTEN. \r\n\r\nALÉRGICOS: CONTÉM CASTANHA DE CAJU. PODE CONTER DERIVADOS DE SOJA, AMENDOIM, AMÊNDOA E AVELÃ.',10,'https://veganja.vteximg.com.br/arquivos/ids/155804/Lasanha-do-Futuro.jpg',5),
 (21,'NHOQUE DE BATATAS COM SHIITAKE E ESPINAFRE','O \"mangia che te fa bene\" nunca se encaixou tão bem em um prato. Isso porque nosso nhoque de batatas é feito com massa fresca, e vem acompanhado de shiitake e espinafre, alimentos ricos em vitaminas do complexo B. Além disso, o prato é fortalecido com proteína isolada de ervilha, que ajuda na recuperação muscular. Pra fechar, o molho branco de castanha de caju, com mostarda dijon e tomate deixam a combinação cremosa e cheia de sabor. Impossível não mangiare tutto. Quem diria, hein nonna?','26.30','Nhoque de batata, castanha de caju, tomate, espinafre, shiitake, proteína de ervilha isolada, mostarda djon, polvilho doce, azeite de oliva, cebola, alho, sal. Pode conter traços de glúten. \r\n\r\nALÉRGICOS: CONTÉM CASTANHA DE CAJU. PODE CONTER DERIVADOS DE SOJA, AMENDOIM, AMÊNDOA E AVELÃ.',8,'https://veganja.vteximg.com.br/arquivos/ids/155803/Nhoque.jpg',0);
/*!40000 ALTER TABLE `marmita` ENABLE KEYS */;


--
-- Definition of table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(10) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`,`login`,`senha`) VALUES 
 (1,'Beleaf','$2b$10$QoZwxtRYN1rxARW/GcnKA.bjt1bXAmyOJwGqtbBcuKjx2wcHHjjAe');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
