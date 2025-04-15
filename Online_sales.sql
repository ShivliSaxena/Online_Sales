use online_sales;
select * from online_sales;
describe online_sales;

SELECT 
    STR_TO_DATE(order_date, '%Y-%m-%d') AS order_date_converted
FROM 
    online_sales;


set sql_safe_updates=0;
update online_sales
set order_date = STR_TO_DATE(order_date, '%Y-%m-%d');

ALTER TABLE online_sales
MODIFY COLUMN order_date DATE;


describe online_sales;


SELECT 
    EXTRACT(MONTH FROM order_date) AS order_month,
    extract(year from order_date) as order_year
FROM 
    online_sales
Group BY order_month, order_year;
    
select * from online_sales;

 select item_id, sum(total) as revenue from online_sales
 group by item_id;

SELECT 
    SUM(total) AS revenue
FROM 
    online_sales;

select count(distinct order_id) as volume
from online_sales;

SELECT 
    order_id, order_date, total
FROM 
    online_sales
ORDER BY 
    order_date ASC; 

SELECT 
    order_id, order_date, total
FROM 
    online_sales
ORDER BY 
    order_date desc;
    
select * from online_sales
limit 5;

SELECT 
    *
FROM 
    online_sales
WHERE 
    order_date BETWEEN '2020-01-01' AND '2020-12-31'
    limit 5;

SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(total) AS revenue,
    COUNT(DISTINCT order_id) AS total_volume
FROM 
    online_sales
WHERE 
    order_date BETWEEN '2020-01-01' AND '2021-12-31'
GROUP BY 
    order_year,
    order_month
ORDER BY 
    order_year,
    order_month;
