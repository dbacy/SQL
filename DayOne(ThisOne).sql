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

select title , description , length
from film
where length > 100 
and length < 140
order by length

select top 5 title ,rental_rate , rating 
from film
where title like '%y'

select top 5 title ,rental_rate , description , release_year 
from film
where rating = 'G'

select film_id, title , description 
from film
where rating = 'PG'
order by rental_rate

select *
from city
where CountryCode in ('nld' , 'bel')
and Population > 50000
and name like 'A%'

select LocalName , HeadOfState , GNP
from country
where IndepYear >= 1890
and Continent like 'Europe'

select Name,Population, CountryCode
from city
where Population > 5000000
and District like 's%'

select *
from countrylanguage
where Language = 'English' or Language = 'Spanish' or Language = 'French'
order by Language