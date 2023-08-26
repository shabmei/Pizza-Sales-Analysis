select * from pizza_sales;

-- 1. Daily Trend for Total Orders
select dayname(order_date) as order_day, count(distinct order_id) as total_orders 
from pizza_sales 
group by dayname(order_date)
order by total_orders desc;

-- 2. Monthly Trend for Total Orders
select monthname(order_date) as month_name, count(distinct order_id) as total_orders 
from pizza_sales 
group by monthname(order_date)
order by total_orders desc;

-- 3. Percentage of Sales by Pizza Category
select pizza_category, cast(sum(total_price) as decimal(10,2)) as total_sales, cast(sum(total_price) * 100 / 
(select sum(total_price) from pizza_sales) as decimal(10,2)) as PCT
from pizza_sales
group by pizza_category
order by PCT desc;

-- 4. Percentage of Sales by Pizza Size
select pizza_size, cast(sum(total_price) as decimal(10,2)) as total_sales, cast(sum(total_price) * 100 / 
(select sum(total_price) from pizza_sales) as decimal(10,2)) as PCT
from pizza_sales
group by pizza_size
order by PCT desc;

-- 5. Total Pizzas sold by Category
select pizza_category, sum(quantity) as total_pizzas_sold
from pizza_sales
group by pizza_category
order by total_pizzas_sold desc;

-- 6. Top 5 Pizzas by Total Revenue
select pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by total_revenue desc limit 5;

-- 7. Bottom 5 Pizzas by Total Revenue
select pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by total_revenue asc limit 5;

-- 8. Top 5 Pizzas by Total Quantity
select pizza_name, sum(quantity) as total_quantity from pizza_sales
group by pizza_name
order by total_quantity desc limit 5;

-- 9. Bottom 5 Pizzas by Total Quantity
select pizza_name, sum(quantity) as total_quantity from pizza_sales
group by pizza_name
order by total_quantity asc limit 5;

-- 10. Top 5 Pizzas by Total Orders
select pizza_name, count(distinct order_id) as total_orders from pizza_sales
group by pizza_name
order by total_orders desc limit 5;

-- 11. Bottom 5 Pizzas by Total Orders
select pizza_name, count(distinct order_id) as total_orders from pizza_sales
group by pizza_name
order by total_orders asc limit 5;