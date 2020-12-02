
select city.Name , city.District as 'district or state'
, country.Name as country
from city
join country on country.Code = city.CountryCode

select Region , max(Gnp) as 'Max(gnp)'
from country
group by Region

select name as country , country.Region , country.GNP
from country
join (select Region, MAX(GNP) as GNP
	   from country
	   group by Region) as regionGNPpair
on regionGNPpair.GNP = country.GNP
and regionGNPpair.Region = country.Region
order by Region