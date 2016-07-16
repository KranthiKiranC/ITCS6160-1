-- MySQL Script generated by MySQL Workbench
-- 07/15/16 13:05:58
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema UNIVERSITYDB
-- -----------------------------------------------------
-- This is the Schema for the ITCS 6160 University Project.
-- 

-- -----------------------------------------------------
-- Schema UNIVERSITYDB
--
-- This is the Schema for the ITCS 6160 University Project.
-- 
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `UNIVERSITYDB` DEFAULT CHARACTER SET utf8 ;
USE `UNIVERSITYDB` ;

-- -----------------------------------------------------
-- Table `UNIVERSITYDB`.`AspiringStudent`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UNIVERSITYDB`.`AspiringStudent` (
  `idAspiringStudent` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(30) NOT NULL DEFAULT 'changeMe',
  PRIMARY KEY (`email`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UNIVERSITYDB`.`Major`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UNIVERSITYDB`.`Major` (
  `idMajor` INT NOT NULL,
  `MajorName` VARCHAR(45) NULL,
  `NumberCourses` INT UNSIGNED NULL,
  `EducationalPrereq` VARCHAR(45) NULL,
  `MinGPA` FLOAT(3,2) UNSIGNED NULL,
  `MinSAT` SMALLINT UNSIGNED NULL,
  `InStateTuition` FLOAT(10,2) UNSIGNED NULL,
  `OutStateTuition` FLOAT(10,2) UNSIGNED NULL,
  PRIMARY KEY (`idMajor`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
