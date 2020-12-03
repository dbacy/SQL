use world
select top 10 city.name as city , country.name as country , lifeExpectancy
from city
join country on country.Code = city.CountryCode
order by LifeExpectancy desc

select city.name as city , country.name as country , Language , city.Population
from city
join countrylanguage on countrylanguage.CountryCode = city.CountryCode
join country on country.Code = city.CountryCode
where Language = 'spanish' and IsOfficial = 't'
order by Population desc

---------------------------------------------------------------------------------------------------------------

use sakila
select film.title , film.film_id 
from film
join film_actor on film_actor.film_id = film.film_id
where actor_id = 25

select film.title , film.description , category.name as Category
from film 
join film_category on film_category.film_id = film.film_id
join category on category.category_id = film_category.category_id
where category.name = 'Documentary' and description not like '%documentary%'

------------------------------------------------------------------------------------------------------------------
use World
select C.name , C.population , CL.language , format(round(CL.Percentage* C.Population/100,2),'n0')  as popPercentage
from country as C
join countrylanguage as CL on CL.CountryCode = C.code
order by C.Name

select country.name, Capital, city.name
from country
join city on city.ID = country.Capital;
