/* 

====================================================================================
Create Database and Schemas
====================================================================================
Script Purpose:
    This script creates a new database named "tut_exhbition" after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    with the databse: 'bronze', 'silver', and 'gold'.
*/


-- Create Database 'DataWarehouse'

USE master;

-- Drop and recreate the database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'tut_exhibition')
  BEGIN
  ALTER DATABASE tut_exhibition SET SINGLE USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE tut_exhibition;
END;
GO

-- Create the 'tut_exhibition' database
CREATE DATABASE tut_exhibition;
GO

USE tut_exhibition;
GO

-- Create the schemas

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
