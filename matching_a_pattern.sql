-- LIKE Operator with percent to match 0 or more Characters
select concat(first_name , ' ' , last_name) as FullName
from BikeStores.sales.customers where first_name like 'Jac%';

select concat(first_name , ' ' , last_name) as FullName
from BikeStores.sales.customers where first_name like '%rry';

select * from BikeStores.sales.customers;

-- LIKE Operator with [...] Character classes
select concat(first_name , ' ' , last_name) as FullName
from BikeStores.sales.customers where first_name like 'A[BS]%';

select concat(first_name , ' ' , last_name) as FullName, street
from BikeStores.sales.customers where street like '[0-9] [ABS]%';

-- LIKE Operator with Negation Character
select * from BikeStores.sales.customers where city like '[^A-W]%';

-- LIKE Operator with Underscore
select * from BikeStores.sales.customers where state like 'C_';

select * from BikeStores.sales.customers where city like 'S_____C___';

select distinct state from BikeStores.sales.customers where state not like 'C_';

select distinct state from BikeStores.sales.customers where state like 'C_';

-- Escaping single characters 
select * from  BikeStores.production.products where product_name like '%,%';

select * from  BikeStores.production.products where product_name like '%.%';

select * from  BikeStores.production.products where product_name like '%-%';

select * from  BikeStores.production.products where product_name like '%''%'; --Trek Kids' Neko - 2018