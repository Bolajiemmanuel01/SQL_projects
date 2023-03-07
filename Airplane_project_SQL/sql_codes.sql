-- creatting the tables
--Brazil
CREATE TABLE "Brazil_table" (
	"ident"	TEXT,
	"type"	TEXT,
	"name"	TEXT,
	"elevation_ft"	REAL,
	"continent"	TEXT,
	"iso_country"	TEXT,
	"iso_region"	TEXT,
	"municipality"	TEXT,
	"gps_code"	TEXT,
	"iata_code"	TEXT,
	"local_code"	TEXT,
	"coordinates"	REAL
);
-- Canada
CREATE TABLE "Canada_table" (
	"ident"	TEXT,
	"type"	TEXT,
	"name"	TEXT,
	"elevation_ft"	REAL,
	"continent"	TEXT,
	"iso_country"	TEXT,
	"iso_region"	TEXT,
	"municipality"	TEXT,
	"gps_code"	TEXT,
	"iata_code"	TEXT,
	"local_code"	TEXT,
	"coordinates"	REAL
);
-- Nigeria
CREATE TABLE "Nigeria_table" (
	"ident"	TEXT,
	"type"	TEXT,
	"name"	TEXT,
	"elevation_ft"	REAL,
	"continent"	TEXT,
	"iso_country"	TEXT,
	"iso_region"	TEXT,
	"municipality"	TEXT,
	"gps_code"	TEXT,
	"iata_code"	TEXT,
	"local_code"	TEXT,
	"coordinates"	REAL
);
-- United Arab Emirate
CREATE TABLE "UAE_table" (
	"ident"	TEXT,
	"type"	TEXT,
	"name"	TEXT,
	"elevation_ft"	REAL,
	"continent"	TEXT,
	"iso_country"	TEXT,
	"iso_region"	TEXT,
	"municipality"	TEXT,
	"gps_code"	TEXT,
	"iata_code"	TEXT,
	"local_code"	TEXT,
	"coordinates"	REAL
);
-- United Kingdom
CREATE TABLE "UK_table" (
	"ident"	TEXT,
	"type"	TEXT,
	"name"	TEXT,
	"elevation_ft"	REAL,
	"continent"	TEXT,
	"iso_country"	TEXT,
	"iso_region"	TEXT,
	"municipality"	TEXT,
	"gps_code"	TEXT,
	"iata_code"	TEXT,
	"local_code"	TEXT,
	"coordinates"	REAL
);


--- Total Airports for Brazil
SELECT count(*) FROM  Brazil_table;
--- Total Airports for Canada
SELECT count(*) FROM  Canada_table;
--- Total Airports for Nigeria
SELECT count(*) FROM  Nigeria_table;
--- Total Airports for United Arab Emirates
SELECT count(*) FROM  UAE_table;
--- Total Airports for United Kingdom
SELECT count(*) FROM  UK_Table;


--- Grouping Airports into types for Brazil
SELECT type as Airport_Types, count(*) as Amount
FROM Brazil_table
GROUP BY type
ORDER BY Amount DESC

--- Grouping Airports into types for Canada
SELECT type as Airport_Types, count(*) as Amount
FROM Canada_table
GROUP BY type
ORDER BY Amount DESC

--- Grouping Airports into types for Nigeria
SELECT type as Airport_Types, count(*) as Amount
FROM Nigeria_table
GROUP BY type
ORDER BY Amount DESC

--- Grouping Airports into types for United Arab Emirates
SELECT type as Airport_Types, count(*) as Amount
FROM UAE_table
GROUP BY type
ORDER BY Amount DESC

--- Grouping Airports into types for United Kingdom
SELECT type as Airport_Types, count(*) as Amount
FROM UK_Table
GROUP BY type
ORDER BY Amount DESC
