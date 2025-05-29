--1 Which customer has spent the most overall?
select 
 c.customer_id,
 c.first_name || '' || c.last_name as Customer_name,
 sum(o.total_amount) as Total_spent
from customers c
join orders o on c.customer_id=o.customer_id
group by c.customer_id ,Customer_name 
order by Total_spent desc
limit 5;

--2 List all customers who have never placed an order.
select 
  c.customer_id,
  c.first_name || '' || c.last_name as Customer_name
from customers c
left join orders o on c.customer_id=o.customer_id
where o.order_id is null;
  
--3 What is the average order value per customer?
select 
  c.customer_id,
  c.first_name || '' || c.last_name as Customer_name,
  count(o.order_id) as Total_orders,
  sum(o.total_amount) as Total_spent,
  AVG(o.total_amount) as average_order_value
from customers c
join orders o on c.customer_id=o.customer_id
group by c.customer_id , Customer_name;

--4 What are the top 5 best-selling products by quantity?
select 
 p.product_name,
 sum(oi.quantity) as Total_sold
from order_items oi
join products p on oi.product_id=p.product_id
group by p.product_name
order by Total_sold desc
limit 5;

--5  What are the top 3 categories by revenue?
select 
 p.category,
 SUM(oi.quantity * oi.unit_price) as Revenue_per_category
from order_items oi
join products p on oi.product_id=p.product_id
group by p.category 
order by Revenue_per_category desc
limit 3;

--6 Which product category has the highest average order value?
select 
 p.category,
	 SUM(oi.quantity * oi.unit_price) as avg_order_value
from order_items oi 
join products p on oi.product_id=p.product_id
group by p.category
order by avg_order_value desc;

--7 Find the rank of products by revenue within each category
select
 p.category,
 p.product_name,
 sum(oi.quantity * oi.unit_price) as revenue,
 Rank() over (partition by p.category order by sum(oi.quantity * oi.unit_price)desc) as Rank_in_category
from order_items oi
join products p on oi.product_id=p.product_id
group by p.category,p.product_name;

--8 Which day of the week has the highest average order value?
select 
 to_char(order_date,'Day') as weekday,
 avg(total_amount) as Avg_order_value
from orders
group by weekday
order by Avg_order_value Desc;

--9 How many first-time customers ordered in the last 30 days?

SELECT COUNT(*) AS first_time_customers_last_30_days
FROM (
  SELECT customer_id, MIN(order_date) AS first_order_date
  FROM orders
  GROUP BY customer_id
) AS first_orders
WHERE first_order_date >= CURRENT_DATE - INTERVAL '30 days';

-10 Which customers ordered from multiple product categories?
Select 
 c.customer_id,
 c.first_name || '' || c.last_name as Customer_name,
 count(DISTINCT p.category) as Distinct_category
from customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
Group by c.customer_id,c.first_name
having count(DISTINCT p.category) >= 2
order by c.customer_id desc;

--11  Which employee department has the highest average salary?
SELECT 
  d.department_name,
  AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY avg_salary DESC
LIMIT 1;

select * from customers;
select * from order_items;
select * from products;
select * from orders;
select * from departments;
select * from employees;
