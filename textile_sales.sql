select * from product_details limit 10;
select * from sales limit 10;
select * from product_prices limit 10;
select * from product_hierarchy limit 10;

-- What was the total quantity sold for all products?
select d.product_name, sum(s.qty) as total_quantity_sold
from sales s
inner join product_details d
on s.prod_id = d.product_id
group by d.product_name
order by total_quantity_sold desc;

-- What is the total generated revenue for all products before discounts?
select sum(price*qty) as total_revenue from sales;

-- What was the total discount amount for all products?
select sum(price*qty*discount)/100 as total_discount from sales;

-- How many unique transactions were there?
select count(distinct txn_id) as unique_txn from sales;

-- What are the average unique products purchased in each transaction?
with cte as (
select txn_id, count(distinct prod_id) as unique_product_count
from sales
group by txn_id)
select round(avg(unique_product_count),1) as avg_pro_count 
from cte;

-- What is the average discount value per transaction?
with trans as(
select txn_id, sum(price*qty*discount)/100 as total_discount 
from sales
group by txn_id)
select round(avg(total_discount)) as avg_discount
from trans;

-- What is the average revenue for member transactions and non-member transactions?
with members as (
select sum(price*qty) as total_revenue, txn_id,
case when member = 'true' then 'member' else 'non-member' end as membership
from sales
group by membership, txn_id)
select membership, round(avg(total_revenue),1) as avg_revenue
from members
group by membership;

-- What are the top 3 products by total revenue before discount?
select d.product_name, sum(s.price*s.qty) as total_revenue 
from sales s join product_details d
on d.product_id = s.prod_id
group by d.product_name
order by total_revenue desc
limit 3;

-- What are the total quantity, revenue and discount for each segment?
select d.segment_name, sum(s.qty) as total_quantity, sum(s.price*s.qty) as total_revenue, 
       sum(s.price*s.qty*s.discount)/100 as total_discount
from product_details d 
inner join sales s
on d.product_id = s.Prod_id
group by  d.segment_name;

-- What is the top 5 selling product for each segment?
select d.segment_id, d.segment_name,d.product_id, d.product_name, sum(s.qty) as top_sales
from product_details d 
inner join sales s 
on d.product_id = s.prod_id
group by d.segment_name, d.product_name, d.segment_id, d.product_id
order by top_sales desc
limit 5;

-- What are the total quantity, revenue and discount for each category?
select d.category_name, sum(s.qty) as total_quantity, sum(s.price*s.qty) as total_revenue, 
       sum(s.price*s.qty*s.discount)/100 as total_discount
from product_details d 
inner join sales s
on d.product_id = s.Prod_id
group by d.category_name;

-- What is the top 5 selling product for each category?
select  d.category_name, d.product_name,sum(s.qty) as top_sales
from product_details d 
inner join sales s
on d.product_id = s.Prod_id
group by d.category_name, d.product_name
order by top_sales desc limit 5;