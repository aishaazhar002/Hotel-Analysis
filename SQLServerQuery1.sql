with Hotels as (
select * from dbo.year_2018
union
select * from dbo.year_2019
union
select * from dbo.year_2020) 

select * from Hotels
left join dbo.market_segment
on hotels.market_segment = market_segment.market_segment
left join dbo.meal_cost
on hotels.meal = meal_cost.meal