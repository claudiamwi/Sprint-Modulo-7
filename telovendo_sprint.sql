-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema telovendo_sprint
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema telovendo_sprint
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `telovendo_sprint` DEFAULT CHARACTER SET utf8mb3 ;
USE `telovendo_sprint` ;

-- -----------------------------------------------------
-- Table `telovendo_sprint`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `telovendo_sprint`.`category` (
  `idcategory` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idcategory`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `telovendo_sprint`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `telovendo_sprint`.`client` (
  `idclient` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `lastname` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idclient`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `telovendo_sprint`.`color`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `telovendo_sprint`.`color` (
  `idcolor` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idcolor`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `telovendo_sprint`.`supplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `telovendo_sprint`.`supplier` (
  `idsupplier` INT NOT NULL AUTO_INCREMENT,
  `legal_representative` VARCHAR(45) NULL DEFAULT NULL,
  `corporate_name` VARCHAR(45) NULL DEFAULT NULL,
  `phone1` VARCHAR(15) NULL DEFAULT NULL,
  `phone2` VARCHAR(15) NULL DEFAULT NULL,
  `contact_name` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `category_idcategory` INT NOT NULL,
  PRIMARY KEY (`idsupplier`),
  INDEX `fk_supplier_category_idx` (`category_idcategory` ASC) VISIBLE,
  CONSTRAINT `fk_supplier_category`
    FOREIGN KEY (`category_idcategory`)
    REFERENCES `telovendo_sprint`.`category` (`idcategory`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `telovendo_sprint`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `telovendo_sprint`.`product` (
  `idproduct` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `stock` INT NULL DEFAULT NULL,
  `price` FLOAT NULL DEFAULT NULL,
  `supplier_idsupplier` INT NOT NULL,
  `color_idcolor` INT NOT NULL,
  PRIMARY KEY (`idproduct`),
  INDEX `fk_product_supplier1_idx` (`supplier_idsupplier` ASC) VISIBLE,
  INDEX `fk_product_color1_idx` (`color_idcolor` ASC) VISIBLE,
  CONSTRAINT `fk_product_color1`
    FOREIGN KEY (`color_idcolor`)
    REFERENCES `telovendo_sprint`.`color` (`idcolor`),
  CONSTRAINT `fk_product_supplier1`
    FOREIGN KEY (`supplier_idsupplier`)
    REFERENCES `telovendo_sprint`.`supplier` (`idsupplier`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
