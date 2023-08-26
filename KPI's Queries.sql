select * from pizza_sales;

-- A. Total Revenue
select sum(total_price) as total_revenue from pizza_sales;

-- B. Average Order values
select sum(total_price) / count(distinct order_id) as avg_order_value from pizza_sales;

-- C. Total Pizzas Sold
select sum(quantity) as total_pizzas_sold from pizza_sales;

-- D. Total Orders
select count(distinct order_id) as total_orders from pizza_sales;

-- E. Average Pizza Per Order
select cast(cast(sum(quantity) as decimal(10,2)) /
cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2)) as avg_pizza_per_order
from pizza_sales;