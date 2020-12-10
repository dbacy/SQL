use World
select Population, name , LifeExpectancy
from country
where Population between 10000000 and 20000000
and LifeExpectancy < 40

use World
select top 10 district , sum(Population)
from city
where CountryCode = 'usa'
group by District
order by sum(Population) desc