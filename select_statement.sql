
-- Select
select * from BikeStores.SALES.customers;

select count(*) from BikeStores.sales.customers;

select first_name
	  ,last_name
	  ,email
from BikeStores.sales.customers;

select first_name from BikeStores.sales.customers;

select 'first_name' from BikeStores.sales.customers; -- dummy column as count of rows

select 'first_name' as dummy_value from BikeStores.sales.customers; -- dummy column with alias

-- Select Distinct
select  first_name from BikeStores.sales.customers;

select distinct first_name from BikeStores.sales.customers;

select count(distinct first_name) from BikeStores.sales.customers;

select distinct first_name
	,last_name 
from BikeStores.sales.customers;

select count(distinct first_name, last_name) from BikeStores.sales.customers; -- not work in sql server but works in snowflake

-- with subquey
select count(*) as DistinctCount from (select distinct first_name,last_name from BikeStores.sales.customers) as sub_query;

-- with cte
with UniqueNames as ( 
	select distinct first_name, last_name from BikeStores.sales.customers
	)

select count(*) as DistinctCount from UniqueNames; 

select count(distinct first_name + ' ' + last_name) from BikeStores.sales.customers;

-- Select Top
-- The TOP function is used to retrieve a specific number or a percentage of rows from a query result.
select top 3 * from BikeStores.sales.customers;

select top 3 percent * from BikeStores.sales.customers; -- based on percentage

-- Case with Select