use sakila
select top 15 title ,rental_rate , description , length
from film
where rating = 'G'
and length > 100

select title , description , length
from film
where length > 100 
and length < 140
order by length

use World
select name , sum(population) as 'pop'
from city
where name between 'b' and 'q'
and CountryCode = 'usa'
group by name 

use sakila
select top 5 format(sum(rental_rate), 'c') as 'price for g' , rating
from film
where title like 'g%'
group by rating

use Crime
select LocationOfOccurance, count(*) as 'place'
from NewYork
--where LocationOfOccurance is not like '0'  ---why does this not work??
group by LocationOfOccurance
order by count(*) desc

select distinct LawCatCode as 'here' , Attempted
from NewYork
order by Attempted

use sakila
select special_features , count(*) as 'extras' , rating 
from film
group by special_features
order by count (*) , rating








