CREATE SCHEMA `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;

CREATE TABLE `shop`.`category` (
  `id` INT NOT NULL,
  `name` VARCHAR(128) NOT NULL,
  `discount` TINYINT NOT NULL,
  PRIMARY KEY (`id`));
  
  ALTER TABLE `shop`.`category` 
ADD COLUMN `alias_name` VARCHAR(45) NULL AFTER `discount`;

CREATE TABLE `shop`.`brend` (
  `id` INT NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `shop`.`product_type` (
  `id` INT NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));  
  
 use shop;
insert into product_type(id,type) values (1,'футболка'); 