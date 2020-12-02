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
where LocationOfOccurance  != '0'  
group by LocationOfOccurance
order by count(*) desc

select distinct LawCatCode as 'here' , Attempted
from NewYork
order by Attempted

use sakila
select special_features , count(*) as 'extras' , rating
from film
group by special_features , rating 
order by count (*) 

use Crime
select OffenseDesc, count(*) as 'Offense count'
from NewYork
where OffenseDesc != '0'
group by OffenseDesc
order by count(*) desc

use Crime
select Borough, count(*) 
from NewYork
group by Borough
order by count(*) desc

use World
select Continent,FORMAT(avg(GNP),2) as 'Avg GNP'
from country 
group by Continent




select datepart(hour,fromtime) as "Hour", datepart(WEEKDAY,fromdate) as "Day of Week"
from NewYork 



