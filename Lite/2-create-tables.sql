/*
Variables to change:
    database_name
    table_name
    fk_table_name
    field_name
    fk_field_name
    data_type

List of useful data types:
DATETIME
NVARCHAR(256) -- or some other byte value
NCHAR
BIT
INT
SMALLINT
*/


USE [database_name];

DROP TABLE IF EXISTS [table_name]; -- Useful for testing

-- https://learn.microsoft.com/en-us/sql/t-sql/statements/create-table-transact-sql
CREATE TABLE [table_name] (
    [field_name1] data_type NOT NULL, -- Create a field that cannot be nulled
    [field_name2] data_type NULL, -- Create a field that CAN be null
    [field_name3] data_type UNIQUE, -- Create a field that cannot have duplicates
    -- https://learn.microsoft.com/en-us/sql/t-sql/statements/create-table-transact-sql-identity-property
    [field_name4] data_type IDENTITY(1, 1), -- Create a field that has an automatically generated value
    CONSTRAINT [PK_table_name] PRIMARY KEY ([field_name]), -- Create a primary key
    CONSTRAINT [FK_table_name_fk_table_name] FOREIGN KEY (field_name2) REFERENCES [fk_table_name] ([fk_field_name]) -- Create a foreign key
)