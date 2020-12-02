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
