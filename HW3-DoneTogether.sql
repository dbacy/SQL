select top 1 name , Population
from city
where CountryCode = 'twn'
order by Population desc

use sakila
select rating , format(sum(length)/60.0, 'n0') , format(sum(rental_rate),'c') 
from film
group by rating

use sakila
select inventory_id, count(*) as 'Rental Count'
from rental
group by inventory_id
order by count(*) desc
