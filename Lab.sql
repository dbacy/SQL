select District, sum(population) as 'Total Pop'
from city
where CountryCode = 'USA'
group by District
having sum(population) > 5000000
order by 'Total Pop'

--use sakila
--select rating, count(*)
--from film
--group by rating

select Continent, round(avg(lifeExpectancy),0) as 'Avg Life Span'
from country
group by Continent


use sakila
select title,replacement_cost as 'Cost'
from film
where replacement_cost in (select max (replacement_cost) from film)

use World
select Continent,FORMAT(avg(GNP),2) as 'Avg GNP'
from country 
group by Continent


select Region, FORMAT(sum(surfaceArea),2) as 'Total Surface Area'
from country
group by Region
having sum(surfaceArea) > 4000000
order by sum(surfaceArea) desc


select Region , avg(lifeExpectancy) as 'Avg Life Expectancy'
from country
group by Region

select region, MAX(Population) as 'Max Pop', format(round(avg(LifeExpectancy),0),'n0') as 'Avg Life Span' 
from country
group by Region


select continent, sum(GNP) as 'Total GNP'
from country
group by continent
order by 'Total GNP'


use sakila
select rating, avg(length) as 'Movie Length'
from film
group by rating


--------------------------------------------------------------------------------------------------------------------------------
use sakila
select title, replacement_cost-rental_rate
from film
order by replacement_cost-rental_rate desc

use sakila
select title, round(rental_rate/length,2)
from film
order by rental_rate/length desc

use World
select continent, format(round(sum(gnp/surfaceArea),2),'N0') as 'GNP per square km'
from country
group by continent
order by 'GNP per square km'

use sakila
select format(sum(amount),'C') as 'Gross Income'
from payment
where payment_date between '2005/06/01' and '2005/06/30'

use World
select continent, sum(gnp)/ sum(CAST(population as bigint))
from country
where Population > 0
group by Continent

select continent, sum(cast(population as bigint)) as 'total pop',
				  sum(surfaceArea) as 'total area',
				  sum(cast(population as bigint))/sum(surfaceArea) as 'people per sq mile',
				  sum(gnp)/sum(surfaceArea) as '$ per sq mile'
from country
group by Continent