--Check that tables do not already exist; drop tables that already exist. 
DROP TABLE IF EXISTS wine;
DROP TABLE IF EXISTS imports;

--Create a table for wine reviews
CREATE TABLE wine (
ID INT NOT NULL PRIMARY KEY,
country VARCHAR,
description VARCHAR,
designation VARCHAR,
points VARCHAR,
price VARCHAR,
province VARCHAR,
region01 VARCHAR,
region02 VARCHAR,
variety VARCHAR,
winery VARCHAR
);

--Check wine table
select * from wine;

--Create a table for wine imports
CREATE TABLE imports (
ID INT NOT NULL PRIMARY KEY,
country VARCHAR(50) NOT NULL,
imports_usd VARCHAR(50) NOT NULL,
imports_change VARCHAR(50) NOT NULL
);

--Check imports table
select * from imports;

