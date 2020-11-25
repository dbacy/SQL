--Retrieve all rows from the city table that are in Brazil (BRA).  (~250 results.)
select name,CountryCode,Population
from city 
where CountryCode = 'BRA'

--Retrieve all rows from the city table whose name starts with 'Spring%'. (~4 results.)
select *
from city
where name like 'Spring%'

--Retrieve all  countries from the country table whose independence year is after 1900 (~149 results.)
select name , Population , IndepYear
from country
where IndepYear > 1900

--Retrieve all languages that are spoken in the United States. (~12 results.)
select *
from countrylanguage
where CountryCode = 'USA'

--Retrieve all cities that start with any letter of the alphabet from C to R inclusive. (hint: cities that start with r will alphabetically be after 'r' since they have more letters in the name.) (~2463 results)
select *
from city
where name between 'c' and 's'
	-- where name like '[c-r]%'    <== can also be used   | square brackets can be used with like to give me a range just as bewteen does |
Order by name