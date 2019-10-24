-- MySQL Script generated by MySQL Workbench
-- jue 24 oct 2019 10:26:28 CEST
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
-- Table `mydb`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `idUser` INT NOT NULL,
  `Name` MEDIUMTEXT NOT NULL,
  `LastName` MEDIUMTEXT NOT NULL,
  `UserName` MEDIUMTEXT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  `CodeRec` VARCHAR(45) NOT NULL,
  `is_Active` TINYINT(1) NOT NULL,
  `is_Admin` TINYINT(1) NOT NULL,
  `Created_At` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUser`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Album`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Album` (
  `idAlbum` INT NOT NULL,
  `idUser` INT NOT NULL,
  `src` VARCHAR(45) NOT NULL,
  `Tittle` MEDIUMTEXT NOT NULL,
  `Content` LONGTEXT NOT NULL,
  `Created_At` DATE NOT NULL,
  `User_idUser` INT NOT NULL,
  `Url` VARCHAR(45) NOT NULL,
  INDEX `fk_Album_User_idx` (`User_idUser` ASC),
  CONSTRAINT `fk_Album_User`
    FOREIGN KEY (`User_idUser`)
    REFERENCES `mydb`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Recover`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Recover` (
  `idRecover` INT NOT NULL,
  `idUser` INT NOT NULL,
  `Code` VARCHAR(45) NOT NULL,
  `is_Used` TINYINT(1) NOT NULL,
  `Created_At` DATE NOT NULL,
  `User_idUser` INT NOT NULL,
  INDEX `fk_Recover_User1_idx` (`User_idUser` ASC),
  CONSTRAINT `fk_Recover_User1`
    FOREIGN KEY (`User_idUser`)
    REFERENCES `mydb`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
