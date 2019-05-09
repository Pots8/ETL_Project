create database projetl;

use projetl;

create table crimedata (
	CityDept varchar(100) NOT NULL,
	Population float,
	Agency varchar(250),
	Violent_crime int(20),
	Robbery int(20),
	Property_crime float,
	Burglary int(20),
	MotorVehicle_theft float,
    PRIMARY KEY (CityDept)
);

create table demograph (
CityDept varchar(100) NOT NULL,
county varchar(100),         
agency_name varchar (250),
agency_code  varchar(20),
bachelors_or_higher float,
median_income float,
unemployment_rate float,
PRIMARY KEY (CityDept)
);


-- Joins tables
SELECT crimedata.CityDept, crimedata.Violent_crime, crimedata.Property_crime, crimedata.Burglary, demograph.unemployment_rate
FROM crimedata
JOIN demograph
ON crimedata.CityDept = demograph.CityDept;

