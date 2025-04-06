/*
Variables to change:
    database_name
    spProcName
*/

-- Must ensure you are in the right database BEFORE executing the CREATE PROCEDURE query.
-- You cannot have any other query in a CREATE PROCEDURE query window.
-- USE [database_name];

-- https://learn.microsoft.com/en-us/sql/t-sql/statements/create-procedure-transact-sql
CREATE PROCEDURE [spProcName]
AS
SET NOCOUNT ON; -- Adding this after AS is best practice

SELECT CAST(GETDATE() AS DATE) AS [JustDate]; -- Example

SELECT [dbo].[field_name] -- Explicitly using field names is best practice (rather than *)
FROM [dbo].[table_name] -- Using [dbo] is best practice for all objects
WHERE 1 = 1;