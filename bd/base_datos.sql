-- MySQL Script generated by MySQL Workbench
-- Sun Dec  9 15:28:40 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema autopark_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema autopark_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `autopark_db` DEFAULT CHARACTER SET utf8 ;
USE `autopark_db` ;

-- -----------------------------------------------------
-- Table `autopark_db`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `autopark_db`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `autopark_db`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `autopark_db`.`Cliente` (
  `rut_cliente` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`rut_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `autopark_db`.`Ticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `autopark_db`.`Ticket` (
  `idTicket` INT NOT NULL AUTO_INCREMENT,
  `idEstacionamiento` INT NOT NULL,
  `monto` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTicket`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `autopark_db`.`Estacionamiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `autopark_db`.`Estacionamiento` (
  `idEstacionamiento` INT NOT NULL AUTO_INCREMENT,
  `lugar` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEstacionamiento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `autopark_db`.`Voucher`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `autopark_db`.`Voucher` (
  `idVoucher` INT NOT NULL AUTO_INCREMENT,
  `total` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idVoucher`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `autopark_db`.`Detalle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `autopark_db`.`Detalle` (
  `idVoucher` INT NOT NULL,
  `idTicket` INT NOT NULL,
  PRIMARY KEY (`idVoucher`, `idTicket`),
  INDEX `idTicket_idx` (`idTicket` ASC),
  CONSTRAINT `idVoucher`
    FOREIGN KEY (`idVoucher`)
    REFERENCES `autopark_db`.`Voucher` (`idVoucher`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idTicket`
    FOREIGN KEY (`idTicket`)
    REFERENCES `autopark_db`.`Ticket` (`idTicket`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `autopark_db`.`Usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `autopark_db`;
INSERT INTO `autopark_db`.`Usuario` (`idUsuario`, `usuario`, `password`) VALUES (1, '19128620', '19128620');
INSERT INTO `autopark_db`.`Usuario` (`idUsuario`, `usuario`, `password`) VALUES (1, '19209255', '19209255');

COMMIT;


-- -----------------------------------------------------
-- Data for table `autopark_db`.`Cliente`
-- -----------------------------------------------------
START TRANSACTION;
USE `autopark_db`;
INSERT INTO `autopark_db`.`Cliente` (`rut_cliente`, `nombre`, `telefono`, `email`) VALUES (19128620, 'Jacob Olivares', 968038777, 'jaco.olivares@alumnos.duoc.cl');
INSERT INTO `autopark_db`.`Cliente` (`rut_cliente`, `nombre`, `telefono`, `email`) VALUES (19209255, 'Esteban Miranda', 973854193, 'es.mirandaa@alumnos.duoc.cl');
               
COMMIT;


-- -----------------------------------------------------
-- Data for table `autopark_db`.`Ticket`
-- -----------------------------------------------------
START TRANSACTION;
USE `autopark_db`;
INSERT INTO `autopark_db`.`Ticket` (`idTicket`, `idEstacionamiento`, `monto`) VALUES (1, 1, '500');
INSERT INTO `autopark_db`.`Ticket` (`idTicket`, `idEstacionamiento`, `monto`) VALUES (2, 2, '1000');
INSERT INTO `autopark_db`.`Ticket` (`idTicket`, `idEstacionamiento`, `monto`) VALUES (3, 3, '1500');
INSERT INTO `autopark_db`.`Ticket` (`idTicket`, `idEstacionamiento`, `monto`) VALUES (4, 4, '2000');

COMMIT;


-- -----------------------------------------------------
-- Data for table `autopark_db`.`Estacionamiento`
-- -----------------------------------------------------
START TRANSACTION;
USE `autopark_db`;
INSERT INTO `autopark_db`.`Estacionamiento` (`idEstacionamiento`, `lugar`) VALUES (1, 'Plaza de Armas - Santiago');
INSERT INTO `autopark_db`.`Estacionamiento` (`idEstacionamiento`, `lugar`) VALUES (2, 'Plaza de Armas - Concepcion');
INSERT INTO `autopark_db`.`Estacionamiento` (`idEstacionamiento`, `lugar`) VALUES (3, 'Mirador el Sol - Quilpue');
INSERT INTO `autopark_db`.`Estacionamiento` (`idEstacionamiento`, `lugar`) VALUES (4, 'Plaza Civica - Valparaiso');
INSERT INTO `autopark_db`.`Estacionamiento` (`idEstacionamiento`, `lugar`) VALUES (5, 'Cerro Santa Lucia - Santiago');
INSERT INTO `autopark_db`.`Estacionamiento` (`idEstacionamiento`, `lugar`) VALUES (6, 'Plaza de Armas - Chillan');

COMMIT;

