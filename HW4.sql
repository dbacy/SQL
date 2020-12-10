use sakila
select a.first_name , a.last_name , count(*) as 'total dramas'
from actor as a
join film_actor as fa on fa.actor_id = a.actor_id
join film_category as fc on fc.film_id = fa.film_id
join category as c on c.category_id = fc.category_id
where c.name = 'drama'
group by a.first_name , a.last_name
order by 'total dramas' desc

---------------------------------------------------------------------------------------
use sakila
select f.title , sum(p.amount) as 'revenue'
from film as f
join inventory as i on i.film_id=f.film_id
join rental as r on r.inventory_id = i.inventory_id
join payment as p on p.rental_id = r.rental_id
group by f.title 
order by 'revenue' desc
---------------------------------------------------------------------------------------
use sakila
select a.first_name, a.last_name, a.actor_id, count(*) as 'Total views'
from actor as a
join film_actor as fa on fa.actor_id = a.actor_id
join inventory as i on i.film_id = fa.film_id
join rental as r on r.inventory_id = i.inventory_id
group by a.first_name , a.last_name , a.actor_id
order by 'Total views' desc 



--, count(*) as 'Revenue'