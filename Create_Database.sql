
create database mytDatabase
use mytDatabase
USE World
GO

/****** Object:  Table dbo.country    Script Date: 12/10/2020 10:45:35 AM ******/
-----------------------------------------------------------------------------------------------------------------------------

CREATE TABLE dbo.country(
	Code char(3) NOT NULL,
	Name char(52) NOT NULL,
	Continent varchar(20) NOT NULL,
	Region char(26) NOT NULL,
	SurfaceArea decimal(10, 2) NOT NULL,
	IndepYear smallint NULL,
	Population int NOT NULL,
	
PRIMARY KEY CLUSTERED 
(
	Code ASC )
)
GO
-----------------------------------------------------------------------------------------------------------------------------

insert into country (code , name , Continent , Region , SurfaceArea , IndepYear , Population)
values ('DLB' , 'United States of America' , 'North America' , 'Texas' , 10000 , 1776 , 2433478)

select * from country

insert into country (code , name , Continent , Region , SurfaceArea , IndepYear , Population)
values ('BLD' , 'United States of America' , 'North America' , 'Texas' , 10000 , 1776 , 2433478)

insert into country (code , name , Continent , Region , SurfaceArea , IndepYear , Population)
values ('KSC' , 'United States of America' , 'North America' , 'Kansas' , 7500 , 1776 , 1233478)

insert into country (code , name , Continent , Region , SurfaceArea , IndepYear , Population)
values ('CRR' , 'United States of America' , 'North America' , 'Colorado' , 12000 , 1776 , 2533478)

insert into country (code , name , Continent , Region , SurfaceArea , IndepYear , Population)
values ('NDN' , 'United States of America' , 'North America' , 'North Dakota' , 8000 , 1776 , 933478)

select * from country
update country set Population = 1933478 where Population = 2533478

select * from country
-----------------------------------------------------------------------------------------------------------------------------

--Will creates a table
SELECT  name, gnp, HeadOfState
INTO NameAndGNP
	FROM world.dbo.country
	where HeadOfState like 'Eli%'
-----------------------------------------------------------------------------------------------------------------------------

--Will add to a table 
INSERT INTO NameAndGNP (name, gnp, HeadOfState)
	SELECT name, gnp, HeadOfState 
	FROM world.dbo.country
	where HeadOfState like 'Geo%'

select * from NameAndGNP
-----------------------------------------------------------------------------------------------------------------------------

--Will clone a table 
SELECT  *
INTO MyCityTable 
	FROM world.dbo.city
select count(*) from MyCityTable
-----------------------------------------------------------------------------------------------------------------------------

--This will give me a temp table 
SELECT  *
INTO #MyTempCit
	FROM world.dbo.city

select count(*) from #MyTempCit
-----------------------------------------------------------------------------------------------------------------------------

--examples 
SELECT  title, length, description, special_features
INTO myFilm
	FROM sakila.dbo.film
	where special_features like '%trailers%'

	SELECT  name, district, Population
INTO #MyTempCityPop
	FROM world.dbo.city
	WHERE CountryCode = 'USA'
-----------------------------------------------------------------------------------------------------------------------------

