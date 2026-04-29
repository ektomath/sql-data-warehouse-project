/*
Create Database and Schemas

Script Purpose:
	Creates a new database named DataWarehouse containing 3 schemas bronze, silver, gold.

WARNING:
	Running this script drops any existing database named 'DataWarehouse' if it exists.
*/


USE Master;
GO

-- Drop and recreate the 'DataWarehouse database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse
END;
GO

-- Create new datawarehouse database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
