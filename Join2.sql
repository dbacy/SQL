use world
select cl.Language , c.Name , Percentage
from country as c
join countrylanguage as cl on cl.CountryCode = c.Code
where c.code = 'usa'


use World
select code , Population
from country as c
where c.code = 'usa'


use World
select C.name , format(C.population,'n0') , CL.language , format(round(CL.Percentage* C.Population/100,2),'n0')  as TotalSpeakers
from country as C
join countrylanguage as CL on CL.CountryCode = C.code
where c.Code = 'usa'


use sakila
select name
from category

use sakila
select *
from film_category


use sakila
select film.title , c.name
from film
join film_category as fc on fc.film_id = film.film_id
join category as c on c.category_id = fc.category_id


use sakila
select film.title , c.name
from film
join film_category as fc on fc.film_id = film.film_id
join category as c on c.category_id = fc.category_id
where c.name = 'horror'


use sakila
select  c.name , count(*) as 'count'
from category as c
join film_category as fc on fc.category_id = c.category_id
group by c.name


use sakila
select  actor.first_name , actor.last_name, count(*) 
from actor
join film_actor as fa on fa.actor_id = actor.actor_id
group by actor.first_name , actor.last_name


use sakila
select first_name ,last_name ,  sum(length/60)
from customer
join rental on rental.customer_id = customer.customer_id
join inventory on inventory.inventory_id = rental.inventory_id
join film on film.film_id = inventory.film_id
group by first_name , last_name


use sakila
select first_name ,last_name , count(*) as 'Movies Watched' , max(length) as 'longest movie'
from customer
join rental on rental.customer_id = customer.customer_id
join inventory on inventory.inventory_id = rental.inventory_id
join film on film.film_id = inventory.film_id
--where first_name = 'constance'
group by first_name , last_name



use sakila
select first_name , last_name , name , count(*) as watched
from customer as cu
join rental as r on cu.customer_id = r.customer_id
join inventory as i on i.inventory_id = r.inventory_id
join film_category as fc on fc.film_id = i.film_id
join category as ca on ca.category_id = fc.category_id
group by first_name , last_name , name 
order by first_name , last_name , count(*) desc

select title
from film as f
join film_category as fc on fc.film_id = f.film_id
join category as c on c.category_id = fc.category_id
where c. name = 'travel'

-- what actors do customers like
use sakila
select c.first_name, c.last_name, a.first_name , a.last_name , count(*) as Favorite
from customer as c
join rental as r on r.customer_id = c.customer_id
join inventory as i on i.inventory_id = r.inventory_id
join film_actor as fc on fc.film_id = i.film_id
join actor as a on a.actor_id = fc.actor_id
group by c.first_name, c.last_name, a.first_name , a.last_name 
having count(*) > 4
order by c.first_name, c.last_name, count(*)desc

-- how much money did each customer spend
use sakila
select c.first_name , c.last_name , sum(p.amount)
from customer as c
join payment as p on p.customer_id = c.customer_id
group by c.first_name , c.last_name 
order by sum(p.amount) desc


-- in the Crime database using the NewYork table
-- what day of the week has the most crime
use crime
select datepart(WEEKDAY , Fromdate) as 'Day Of Week', count(*) as 'Most Occ.'
from NewYork
group by datepart(WEEKDAY , Fromdate)
order by datepart(weekday , fromdate)



-- what hour of the day has the most crime
use crime
select  datepart(hour , FromTime) as 'Hour' , count(*) as 'Count'
from NewYork
group by datepart(hour , FromTime) 
order by 'count' desc 

-- most crime in day and hour 
use crime
select datepart(WEEKDAY , Fromdate) as 'Day Of Week', count(*) as 'Most Occ.' ,  datepart(hour , FromTime) as 'Hour' , count(*) as 'Count'
from NewYork
group by datepart(WEEKDAY , Fromdate) , datepart(hour , FromTime) 
order by 'count' desc
-- find a api.....