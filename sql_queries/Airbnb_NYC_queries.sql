--Step 1.1: Average Price by Neighborhood Group
select
	neighbourhood_group,
	round(avg(price),2) as avg_price,
	count(*)as total_listings
from airbnb_nyc
where price>0
group by neighbourhood_group
order by avg_price desc
	
	
--Step 1.2: High-Demand Listings
select
	neighbourhood_group,
	neighbourhood,
	count(*)as high_demand_listings
from airbnb_nyc
where number_of_reviews>100
group by neighbourhood_group, neighbourhood
order by high_demand_listings desc


--Step 1.3: Neighborhoods with the Highest Average Price
select
	neighbourhood_group,
	neighbourhood,
	round(avg(price),2)as avg_price,
	count(*) as total_listings
from airbnb_nyc
where price>0
group by neighbourhood_group, neighbourhood
order by avg_price desc
	
	
--Step 1.4: Host Activity
select
	host_name,
	count(*)as total_listings,
	neighbourhood_group
from airbnb_nyc	
group by
	host_name,
	neighbourhood_group
order by
	total_listings desc
	
	
--Step 1.5: Room Type Availability

select
	neighbourhood_group,room_type,
	round(avg(availibility_365),2) as avg_availibility,
	count(*) AS total_listings 
	
from
	airbnb_nyc
group by room_type,neighbourhood_group
order by avg_availibility desc


--Step 1.6: Revenue Potential
select
	neighbourhood_group,
	round(avg(price*availibility_365),2) as avg_revenue_potential,
	count(*) as total_listings
from airbnb_nyc
where price>0
group by neighbourhood_group
order by avg_revenue_potential desc


--Step 1.7: Availability Analysis
select
	neighbourhood_group,
	round(avg(availibility_365),2) as avg_availibility,
	count(*)as total_listings
from airbnb_nyc
group by neighbourhood_group
order by avg_availibility desc




