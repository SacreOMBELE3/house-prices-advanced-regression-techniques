/*
=============================================

CREATION DE LA BASE DE DONNEES House Prices

============================================
Ce script permet de créer une nouvelle base de données de manière sécurisée. 
Il commence par vérifier si la base de données existe déjà. 
Si elle existe, celle-ci est supprimée afin de garantir une nouvelle installation propre.

Une fois cette étape terminée, une nouvelle base de données est créée et organisée selon une architecture en trois couches, 
représentées par les schémas suivants :

Bronze : destiné au stockage des données brutes provenant des différentes sources ;
Silver : destiné au nettoyage, à la transformation et à la structuration des données ;
Gold : destiné aux données finales, optimisées et prêtes à être exploitées pour l’analyse et la prise de décision.

Cette organisation permet de mettre en place une architecture de type Medallion Architecture, 
facilitant la gestion, la transformation et l'exploitation des données au sein du Data Warehouse.
*/
USE master;
GO

-- Vérifier si la base de données « HousePrices » existe déjà. Si c’est le cas, la supprimer, puis créer une nouvelle base de données.

IF EXISTS (SELECT 1 FROM sys.databases WHERE name='HousePrices')
BEGIN 
	ALTER DATABASE HousePrices SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE HousePrices
END;
go

-- Création de la base de données  'HousePrices'
CREATE DATABASE HousePrices;

USE HousePrices;


-- création des trois schemas bronze, silver et gold


CREATE SCHEMA bronze;
GO


CREATE SCHEMA silver;
go


CREATE SCHEMA gold;
go