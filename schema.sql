--Check that tables do not already exist; drop tables that already exist. 
DROP TABLE IF EXISTS wine;
DROP TABLE IF EXISTS imports;

--Create a table for wine reviews
CREATE TABLE wine (
ID INT NOT NULL PRIMARY KEY,
Country VARCHAR,
Description VARCHAR,
Designation VARCHAR,
Points INTEGER,
Price DECIMAL,
Province VARCHAR,
Primary_Region VARCHAR,
Secondary_Region VARCHAR,
Variety VARCHAR,
Winery VARCHAR
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

