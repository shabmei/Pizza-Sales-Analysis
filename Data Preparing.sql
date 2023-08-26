create table project;
use project;
select * from pizza_sales;
desc pizza_sales;

alter table pizza_sales modify column order_date varchar(20);

select replace(order_date, '/', '-') as order_date from pizza_sales;
update pizza_sales set order_date = replace(order_date, '/', '-');
update pizza_sales set order_date = date_format(str_to_date(order_date, '%m-%d-%Y'), '%Y-%m-%d');

select cast(order_date as date) from pizza_sales;
alter table pizza_sales modify column order_date date;

select cast(order_time as time) from pizza_sales;
alter table pizza_sales modify column order_time time;