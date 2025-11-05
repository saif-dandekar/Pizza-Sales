

select sum(total_price) AS Total_Revenue from pizza_sales; 

select (sum(total_price) / count(DISTINCT order_id)) as avg_order_value from pizza_sales;

select sum(quantity) as Total_Pizza_Sold from pizza_sales;

select count(distinct order_id) as total_Order from pizza_sales;

select (cast(cast(sum(quantity) as decimal(10,2)) / 
cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2))) 
as avg_Pizzas_per_order from pizza_sales;

select DATENAME(DW,order_date) as order_date,COUNT(distinct order_id) as order_id
from pizza_sales
group by DATENAME(DW,order_date);

select DATENAME(MONTH,order_date) as order_date,COUNT(distinct order_id) as total_order
from pizza_sales
group by DATENAME(MONTH,order_date)
order by total_order desc;


select pizza_category,sum(total_price) as Total_sales,
sum(total_price) * 100 / (select sum(total_price)
from pizza_sales) as PCT
from pizza_sales
group by pizza_category;

select top 5 pizza_name,sum(total_price) as total_Revenue
from pizza_sales
group by pizza_name
order by total_Revenue desc ;

select top 5 pizza_name,sum(total_price) as total_Revenue
from pizza_sales
group by pizza_name
order by total_Revenue  asc;

select top 5 pizza_name,sum(quantity) as total_quantity
from pizza_sales
group by pizza_name
order by total_quantity desc;

select top 5 pizza_name,sum(quantity) as total_quantity
from pizza_sales
group by pizza_name
order by total_quantity asc;

select top 5 pizza_name,count(order_id) as total_Orders
from pizza_sales
group by pizza_name
order by total_Orders desc;

select top 5 pizza_name,count(order_id) as total_Orders
from pizza_sales
group by pizza_name
order by total_Orders asc;