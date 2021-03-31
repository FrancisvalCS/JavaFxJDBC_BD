/*
MySQL Backup
Database: cursojdbc
Backup Time: 2021-03-30 23:29:21
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cursojdbc`.`department`;
DROP TABLE IF EXISTS `cursojdbc`.`seller`;
CREATE TABLE `department` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `seller` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `BirthDate` datetime NOT NULL,
  `BaseSalary` double NOT NULL,
  `DepartmentId` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `DepartmentId` (`DepartmentId`),
  CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`DepartmentId`) REFERENCES `department` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
BEGIN;
LOCK TABLES `cursojdbc`.`department` WRITE;
DELETE FROM `cursojdbc`.`department`;
INSERT INTO `cursojdbc`.`department` (`Id`,`Name`) VALUES (1, 'Informática'),(2, 'Electronics'),(3, 'Vestuário'),(4, 'Livros'),(5, 'Bebidas'),(6, 'Brinquedos');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `cursojdbc`.`seller` WRITE;
DELETE FROM `cursojdbc`.`seller`;
INSERT INTO `cursojdbc`.`seller` (`Id`,`Name`,`Email`,`BirthDate`,`BaseSalary`,`DepartmentId`) VALUES (1, 'Bob Brown', 'bob@gmail.com', '1998-04-21 00:00:00', 1000, 1),(2, 'Maria Green', 'maria@gmail.com', '1979-12-31 00:00:00', 3500, 2),(3, 'Alex Grey', 'alex@gmail.com', '1988-01-15 00:00:00', 2200, 1),(4, 'Martha Red', 'martha@gmail.com', '1993-11-30 00:00:00', 3000, 4),(5, 'Donald Blue', 'donald@gmail.com', '2000-01-09 00:00:00', 4000, 3),(6, 'Alex Pink', 'bob@gmail.com', '1997-03-04 00:00:00', 3000, 2),(7, 'Francisval', 'francisvalcs@gmail.com', '1989-10-18 00:00:00', 1470, 1);
UNLOCK TABLES;
COMMIT;
