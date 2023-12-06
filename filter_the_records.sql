
-- where clause

select * from BikeStores.sales.orders;

select * from BikeStores.sales.orders where order_status = 3;

select * from BikeStores.sales.orders where year(order_date) = '2018';

-- Comparison Operators in Where Clause

select * from BikeStores.sales.orders where order_date > '2018-05-01';

select * from BikeStores.sales.orders where year(order_date) > '2017';

select * from BikeStores.sales.customers;

select * from BikeStores.sales.customers where state <> 'NY';

select * from BikeStores.sales.customers where state != 'NY';

select * from BikeStores.sales.orders where year(order_date) >= '2017';

-- Arithmetic Operators in where clause

select * from BikeStores.sales.order_items;

select * from BikeStores.sales.order_items where discount > 0.10;

select * from BikeStores.sales.order_items where discount <> 0.10;

-- joining tables
select pr.product_name
	,oi.list_price
	,(oi.list_price * (1 - oi.discount)) as offer_price
from BikeStores.sales.order_items oi
join BikeStores.production.products pr
	on pr.product_id = oi.product_id 
where (oi.list_price * (1 - oi.discount)) > 500;

select pr.product_name
	,oi.list_price
	,(oi.list_price * (1 - oi.discount)) as offer_price
from BikeStores.sales.order_items oi
join BikeStores.production.products pr
	on pr.product_id = oi.product_id 
where (oi.list_price * (1 - oi.discount)) < 500;


-- Logical Operators in where clause
select pr.product_name
	,oi.list_price
	,(oi.list_price * (1 - oi.discount)) as offer_price
from BikeStores.sales.order_items oi
join BikeStores.production.products pr
	on pr.product_id = oi.product_id 
where (oi.list_price * (1 - oi.discount)) > 500 and oi.discount > 0.10;

select pr.product_name
	,oi.list_price
	,(oi.list_price * (1 - oi.discount)) as offer_price
from BikeStores.sales.order_items oi
join BikeStores.production.products pr
	on pr.product_id = oi.product_id 
where (oi.list_price * (1 - oi.discount)) > 500 and oi.discount <> 0.10;

select pr.product_name
	,oi.list_price
	,(oi.list_price * (1 - oi.discount)) as offer_price
from BikeStores.sales.order_items oi
join BikeStores.production.products pr
	on pr.product_id = oi.product_id 
where (oi.list_price * (1 - oi.discount)) < 500 or oi.discount > 0.10;

select product_id
      ,product_name
      ,list_price
	  ,case
		when list_price > 999 then 'Expensive Bikes'
		when list_price between 400 and 999 then 'Mid-ranga Bikes'
		else 'Low budget Bikes'
	   end as BikeCategory
from BikeStores.production.products
where product_name = 'Trek 820 - 2016';

select product_id
      ,product_name
      ,list_price
	  ,case
		when list_price > 999 then 'Expensive Bikes'
		when list_price between 400 and 999 then 'Mid-ranga Bikes'
		else 'Low budget Bikes'
	   end as BikeCategory
from BikeStores.production.products
where not product_name = 'Trek 820 - 2016';

--Between Operator
select * from BikeStores.sales.orders where year(order_date) between '2016' and '2017'; -- shows both 2016 and 2017 data

select * from BikeStores.sales.orders where year(order_date) between '2017' and '2017'; -- shows only 2017 data

select * from BikeStores.sales.orders where order_date between '2018-01-01' and '2018-05-01';

--cast function
select order_date	
	,cast(order_date as datetime) as timestamp
from BikeStores.sales.orders;

-- both concatenation and concat() need to be mentioned in where clause as the order execution. (where clause will executed before selection) - applicable for all selections
select first_name + ' ' + last_name as FullName from BikeStores.sales.customers where first_name + ' ' + last_name  = 'Debra Burks';

select concat(first_name, ' ', last_name) as FullName from BikeStores.sales.customers where concat(first_name, ' ', last_name)  = 'Debra Burks';

SELECT CAST(1.834 AS INT); -- 1

-- IS NULL value

select concat(first_name, ' ', last_name) as FullName
	,phone
	,email
from BikeStores.sales.customers where email is null or phone is not null;

select concat(first_name, ' ', last_name) as FullName
	,phone
from BikeStores.sales.customers where phone is not null;

-- IN Operator
select * from BikeStores.sales.customers where state IN ('NY', 'CA');

select * from BikeStores.sales.customers where state NOT IN ('NY', 'TX');