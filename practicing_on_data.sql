use amazon_db;

select * from amazon_sales;

select ship_city, sum(amount) as city_wise_sales
from amazon_sales 
group by ship_city 
order by city_wise_sales  desc limit 10;

select ship_state, sum(amount) as state_wise_sales
from amazon_sales
group by ship_state 
order by state_wise_sales desc limit 10;

select category, sum(amount) as category_wise_sales
from amazon_sales
group by category 
order by category_wise_sales desc limit 10;



UPDATE amazon_sales
SET Order_date = STR_TO_DATE(Order_date, '%m-%d-%Y %H:%i:%s');


ALTER TABLE amazon_sales
MODIFY COLUMN Order_date DATE;

select * from amazon_sales
where year(Order_date) = 2022
and month(Order_date)= 4 and 5;

create view  amazon_saless as 
select * from amazon_sales
where year(Order_date) = 2022
and month(Order_date) = 4 and 5;



select * from project_data_anlytics;

select * from project_data_anlytics
where ship_postal_code = "Unknown";


select ship_city, sum(Revenue) as city_wise_sale
from project_data_anlytics 
group by ship_city 
order by city_wise_sale desc;


select  ship_state, sum(Revenue) as state_wise_sale
from project_data_anlytics
group by ship_state 
order by state_wise_sale desc;

select Category, sum(Revenue) as Category_wise_sales
from  project_data_anlytics
group by category 
order by category_wise_sales desc;

select year(Order_date) as year,
month(Order_date) as month,
sum(revenue) as month_wise_sales
from project_data_anlytics
group by year(order_date),month(order_date)
order by year,month ;

select * from project_data_anlytics
where ship_city = "Hyderabad";



