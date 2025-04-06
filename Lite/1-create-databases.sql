-- Variables to change --
-- database_name

USE [master];

-- https://learn.microsoft.com/en-us/sql/t-sql/statements/create-database-transact-sql
CREATE DATABASE [database_name]
COLLATE Latin1_General_CI_AI; -- Case insensitive and accent insensitive.

-- https://learn.microsoft.com/en-us/sql/t-sql/statements/alter-database-transact-sql-set-options
ALTER DATABASE [database_name]
SET RECOVERY SIMPLE, -- Saves space.
QUERY_STORE = OFF; -- Increases performance and saves space.