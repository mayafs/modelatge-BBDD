-- MySQL Script generated by MySQL Workbench
-- mié 23 oct 2019 13:20:58 CEST
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Picture`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Picture` (
  `idPicture` INT NOT NULL,
  `Autor` MEDIUMTEXT NOT NULL,
  `Precio` DECIMAL(10,0) NULL,
  `Estado` MEDIUMTEXT NULL,
  PRIMARY KEY (`idPicture`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vendedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vendedor` (
  `idVendedor` INT NOT NULL,
  `Nombre` MEDIUMTEXT NOT NULL,
  `Apellido` MEDIUMTEXT NOT NULL,
  `DNI` MEDIUMTEXT NOT NULL,
  `idPicture` INT NOT NULL,
  `Picture_idPicture` INT NOT NULL,
  PRIMARY KEY (`idPicture`),
  INDEX `fk_Vendedor_Picture_idx` (`Picture_idPicture` ASC),
  CONSTRAINT `fk_Vendedor_Picture`
    FOREIGN KEY (`Picture_idPicture`)
    REFERENCES `mydb`.`Picture` (`idPicture`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
