-- MySQL Script generated by MySQL Workbench
-- Wed Nov 15 01:32:17 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema agency
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema agency
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `agency` DEFAULT CHARACTER SET utf8 ;
USE `agency` ;

-- -----------------------------------------------------
-- Table `agency`.`Realtors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `agency`.`Realtors` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` TEXT NOT NULL,
  `last_name` TEXT NOT NULL,
  `phone` TEXT NOT NULL,
  `email` TEXT NOT NULL,
  `rating` INT NOT NULL,
  `experience` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `agency`.`Apartments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `agency`.`Apartments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` TEXT NOT NULL,
  `price` INT NOT NULL,
  `city` TEXT NOT NULL,
  `rooms` INT NOT NULL,
  `address` TEXT NOT NULL,
  `square` INT NOT NULL,
  `id_realtor` INT NOT NULL,
  `update_time` TEXT NOT NULL,
  `create_time` TEXT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `id_realtor`
    FOREIGN KEY (`id`)
    REFERENCES `agency`.`Realtors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `agency`.`Apartments`
-- -----------------------------------------------------

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
