-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema proyecto_integrador
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema proyecto_integrador
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `proyecto_integrador` DEFAULT CHARACTER SET utf8mb4 ;
USE `proyecto_integrador` ;

-- -----------------------------------------------------
-- Table `proyecto_integrador`.`addresses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`addresses` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `adress` VARCHAR(45) NOT NULL,
  `city_id` SMALLINT NOT NULL,
  `user_id` SMALLINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`careers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`careers` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL DEFAULT NULL,
  `cut` DATE NULL DEFAULT NULL,
  `description` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL DEFAULT NULL,
  `image` BIT(1) NULL DEFAULT b'1',
  `journey_id` SMALLINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 25
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`careers_modules`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`careers_modules` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `modulo_id` SMALLINT NOT NULL,
  `career_id` SMALLINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 31
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`cities`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`cities` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) CHARACTER SET 'utf8mb4' NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`groups_users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`groups_users` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `user_id` SMALLINT NOT NULL,
  `group_id` SMALLINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`journeys`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`journeys` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) CHARACTER SET 'utf8mb4' NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 28
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`modalitys`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`modalitys` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`modules`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`modules` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) CHARACTER SET 'utf8mb4' NOT NULL,
  `description` TEXT CHARACTER SET 'utf8mb4' NOT NULL,
  `journey_id` SMALLINT NOT NULL,
  `duration` TINYINT NOT NULL,
  `modality_id` SMALLINT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 57
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`news`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`news` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(50) CHARACTER SET 'utf8mb4' NOT NULL,
  `description` VARCHAR(90) CHARACTER SET 'utf8mb4' NOT NULL,
  `photo` BIT(1) NOT NULL DEFAULT b'1',
  `date` DATE NOT NULL,
  `user_id`  SMALLINT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 14
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`roles` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) CHARACTER SET 'utf8mb4' NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 37
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`the_groups`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`the_groups` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `group_code` VARCHAR(50) CHARACTER SET 'utf8mb4' NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`users` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL DEFAULT NULL,
  `mail` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL DEFAULT NULL,
  `date_of_birth` DATE NULL DEFAULT NULL,
  `foto` BIT(1) NOT NULL DEFAULT b'1',
  `cell_phone_number` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 49
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`users_careers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`users_careers` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `user_id` SMALLINT NOT NULL,
  `career_id` SMALLINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`users_roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`users_roles` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `user_id` SMALLINT NOT NULL,
  `rol_id` SMALLINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 25
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
