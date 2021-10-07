-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: logistics
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- -------------------------------------------------------------------------


# Database: Industry - Health & Business Area - Logistics
# Authors: Aaron Flynn - x19404024 & Alexis Pechon - x19358953
# Date:  06/04/2021
# DDL script

DROP DATABASE IF EXISTS logistics; 				# Drop the database "logistics" if it exists
CREATE DATABASE logistics;						# Create the database "logistics"

USE logistics; 									# Use the logistics database and write the commands below

# Create products table 
# Table created by Aaron - x19404024 
CREATE TABLE `products` (						# Create the products table, this table shows the information regarding the products
  `ProductsID` int NOT NULL,					# ProductsID: Stores the ID of the associated product using an INT datatype
  `ProductName` varchar(100) NOT NULL,			# ProductName: Stores the name of the product using a VARCHAR datatype up to 100 characters
  `ProductCategory` varchar(50) NOT NULL,		# ProductCategory: Stores the category of the product (i.e Opiates, vaccine etc.) using a VARCHAR datatype up to 50 characters
  `ProductRefNum` int NOT NULL,					# ProductRefNum: Stores the reference number for the product using an INT datatype
  `ProductBatchNum` int NOT NULL,				# ProductBatchNum: Stores the batch mumber of the product using an INT datatype
  CONSTRAINT `products_PK` PRIMARY KEY (`ProductsID`) # Sets the primary key of the products table as "ProductsID" with the constraint of "products_PK"
);

--

# Create a Reference Calender
# Table created by Aaron - x19404024
CREATE TABLE `ref_calender` (					# Create the Reference calender table, this table shows the information regarding the shipment timeline
  `RefCalenderID` int NOT NULL,					# RefCalenderID: Stores the ID of the associated shipment timeline using an INT datatype
  `ExpectedStartDate` DATE NOT NULL,			# ExpectedStartDate: Stores the expected start date of the shipment using a DATE datatype
  `ActualStartDate` DATE NOT NULL,				# ActualStartDate: Stores the actual date that the delivery was shipped using a DATE datatype
  `ExpectedDeliveryDate` DATE NOT NULL,			# ExepectedDeliveryDate: Stores the expected date for the shipment to arrive using a DATE datatype
  `ActualDeliveryDate` DATE NOT NULL,			# ActualDeliveryDate: Stores the actual date the shipment was delivered using a DATE datatype
  CONSTRAINT `ref_calender_PK` PRIMARY KEY (`RefCalenderID`) # Sets the primary key of the reference calender table as "RefCalenderID" with the constraint of "ref_calender_PK"
);

# Create a shipment legs table
# Table created by Aaron - x19404024
CREATE TABLE `shipment_legs` (					# Create the Shipment Legs table, this table will show where the shipment will leave from and where it will go
  `ShipmentLegsID` int NOT NULL,				# ShipmentLegsID: Stores the ID of the associated shipment legs using an INT Datatype
  `OriginCountry` varchar(50) NOT NULL,			# OriginCountry: Stores the name of the country where the package was shipped from using a VARCHAR datatype up to 50 characters
  `OriginAddress` varchar(100) NOT NULL,		# OriginAddress: Stores the Address where the package was shipped from using a VARCHAR dataype with a character limit of 100 characters
  `DestinationCountry` varchar(50) NOT NULL,	# DestinationCountry: Stores the name of the country where the package is being shipped to using a VARCHAR datatype with a character limit of 50 characters
  `DestinationAddress` varchar(100) NOT NULL,	# DestinationAddress: Stores the address where the package is being shipped to using a VARCHAR datatype up to 100 characters
  CONSTRAINT `shipment_legs_PK` PRIMARY KEY (`ShipmentLegsID`) # Sets the primary key of the shipment legs table as "ShipmentLegsID" with the constraint of "shipment_legs_PK"
);

# Create a shipper table
# Table created by Aaron - x19404024
CREATE TABLE `shipper` (						# Create the shipper table, this table will show the details of shipper
  `ShipperID` int NOT NULL,						# ShipperID: Stores the ID of the associated shipper using an INT Datatype
  `ShipperName` varchar(50) NOT NULL,			# ShipperName: Stores the name of the shipper using a VARCHAR datatype with a character limit of 50
  `PhoneNumber` int NOT NULL,					# PhoneNumber: Stores the phone number of the shipper using an INT datatype
  `EmailAddress` varchar(50) NULL,				# EmailAddress: Stores the email address of the shipper using a VARCHAR datatype with a character limit of 50
  CONSTRAINT `shipper_PK` PRIMARY KEY (`ShipperID`) # Sets the primary key of the shipper table as "ShipperID" with the constraint of "shipper_PK"
);

# Create a trader table
# Table created by Aaron - x19404024
CREATE TABLE `trader` (							# Create the trader table, this table will show the details of the associated trader
  `TraderID` int NOT NULL,						# TraderID: Stores the ID of the associated trader using an INT datatype
  `TraderName` varchar(50) NOT NULL,			# TraderName: Stores the name of the trader using a VARCHAR datatype with a character limit of 50
  `PhoneNumber` int NOT NULL,					# PhoneNumber: Stores the phone number of the trader using an INT datatype
  `EmailAddress` varchar(50) NOT NULL,			# EmailAddress: Stores the email address of the trader using a VARCHAR datatype with a character limit of 50
  CONSTRAINT `trader_PK` PRIMARY KEY (`TraderID`) # Sets the primary key of the trader table as "TraderID" with the constraint of "trader_PK"
);


# Create a warehouse table
# Table created by Aaron - x19404024
CREATE TABLE `warehouse` (						# Create the warehouse table, this table will show the details of the associated warehouse
  `WarehouseID` int NOT NULL,					# WarehouseID: Stores the ID of the associated warehouse using an INT datatype
  `Country` varchar (50) NOT NULL,				# Country: Stores the name of the country the warehouse is situated using a VARCHAR datatype with a character limit of 50
  `Address` varchar (100) NOT NULL,				# Address: Stores the address of the warehouse using a VARCHAR datatype with a character limit of 100
  `RepresentativeName` varchar (50) NOT NULL,	# RepresentativeName: Stores the name of the representative of the warehouse using a VARCHAR datatype with a character limit of 50
  `RepresentativePhoneNumber` int NOT NULL,		# RepresentativePhoneNumber: Stores the phone number of the representative using an INT datatype
  `RepresentativeEmail` varchar (50) NOT NULL,	# RepresentativeEmail: Stores the email address of the representative using a VARCHAR datatype with a character limit of 50
  CONSTRAINT `warehouse_PK` PRIMARY KEY (`WarehouseID`) # Sets the primary key of the warehouse table as "WarehouseID" with the constraint of "warehouse_PK"
);

# Create a table for Weight level of shipment
# Table created by Aaron - x19404024
CREATE TABLE `weight_level` (					# Create the weight level table, this table will show the class and weight of the associated package
  `WeightLevelID` int NOT NULL,					# WeightLevelID: Stores the ID of the associated weight level of the package using an INT datatype
  `WeightClass` varchar (50) NOT NULL,			# WeightClass: Stores the weight class of the package (i.e heavy, light etc.) using a VARCHAR datatype with a character limit of 50
  `WeightKG` int NOT NULL,						# WeightKG: Stores the weight of the package in kg (rounded up to the nearest whole number) using an INT datatype
  CONSTRAINT `weight_level_PK` PRIMARY KEY (`WeightLevelID`) # Sets the primary key of the weight level table as "WeightLevelID" with the constraint of "weight_level_PK"
);

# Create a table for the shipment facts
# Table created by Aaron & Alexis - x19404024 & x19358953
CREATE TABLE `shipment_facts` (					# Create the shipment facts table, this table will show the IDs and etc details of each individual shipment
  `ShipmentLegsID` int NOT NULL,				# ShipmentLegsID: Stores the ID of the associated shipment legs using an INT Datatype
  `ShipperID` int NOT NULL,						# ShipperID: Stores the ID of the associated shipper using an INT Datatype
  `ProductsID` int NOT NULL,					# ProductsID: Stores the ID of the associated product using an INT datatype
  `WarehouseID` int NOT NULL,					# WarehouseID: Stores the ID of the associated warehouse using an INT datatype
  `TraderID` int NOT NULL,						# TraderID: Stores the ID of the associated trader using an INT datatype
  `RefCalenderID` int NOT NULL,					# RefCalenderID: Stores the ID of the associated shipment timeline using an INT datatype
  `WeightLevelID` int NOT NULL,					# WeightLevelID: Stores the ID of the associated weight level of the package using an INT datatype
  `Details` varchar(200) DEFAULT NULL,			# Details: Stores extra details of the shipment using a VARCHAR datatype with a character limit of 200
  CONSTRAINT `shipments_facts_PK` PRIMARY KEY (`ShipmentLegsID`,`ShipperID`,`ProductsID`,`WarehouseID`,`TraderID`,`RefCalenderID`,`WeightLevelID`),
  CONSTRAINT `SD_SHIPMENTLEGS_FK` FOREIGN KEY (`ShipmentLegsID`)
				REFERENCES `shipment_legs`(`ShipmentLegsID`)
						ON UPDATE NO ACTION
                        ON DELETE NO ACTION,
  CONSTRAINT `SD_SHIPPER_FK` FOREIGN KEY (`ShipperID`)
				REFERENCES `shipper`(`ShipperID`)
						ON UPDATE NO ACTION
                        ON DELETE NO ACTION,
  CONSTRAINT `SD_PRODUCTS_FK` FOREIGN KEY (`ProductsID`)
				REFERENCES `products`(`ProductsID`)
						ON UPDATE NO ACTION
                        ON DELETE NO ACTION,
  CONSTRAINT `SD_WAREHOUSE_FK` FOREIGN KEY (`WarehouseID`)
				REFERENCES `warehouse`(`WarehouseID`)
						ON UPDATE NO ACTION
                        ON DELETE NO ACTION,
  CONSTRAINT `SD_TRADER_FK` FOREIGN KEY (`TraderID`)
				REFERENCES `trader`(`TraderID`)
						ON UPDATE NO ACTION
                        ON DELETE NO ACTION,
  CONSTRAINT `SD_REFCALENDER_FK` FOREIGN KEY (`RefCalenderID`)
				REFERENCES `ref_calender`(`RefCalenderID`)
						ON UPDATE NO ACTION
                        ON DELETE NO ACTION,
  CONSTRAINT `SD_WEIGHTLEVEL_FK` FOREIGN KEY (`WeightLevelID`)
				REFERENCES `weight_level`(`WeightLevelID`)
						ON UPDATE NO ACTION
                        ON DELETE NO ACTION
);