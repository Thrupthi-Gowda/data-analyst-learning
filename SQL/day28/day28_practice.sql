--Day28 SQL practice
--Topic:real business queries

--Drop table 
Drop table if exists orders;
drop table if exists customers;

--create customers table 
create table customers(
    id  int primary key,
    name varchar(50),
    city varchar(50)
);

--create a table orders
create table orders(
    id int primary key,
    customers_id int ,
    amount int,
    order_date date,
    foreign key (customers_id) references customers(id)
);

-- insert the data into customers
insert into customers values(1,'Alex','Chennai');
insert into customers values(2,'Tom','Bangalore');
insert into customers values(3,'Sara','Chennai');
insert into customers values(4,'John','Delhi');

--Insert into orders table 
insert into customers values(1,1,5000,'2024-01-01');
insert into customers values(2,2,7000,'2024-01-02');
insert into customers values(3,1,3000,'2024-01-03');
insert into customers values(4,3,9000,'2024-01-04');
insert into customers values(5,4,2000,'2024-01-05');

--Total orders per customers
select c.name,count(o.id) as total_orders
from customers c
join orders o
on c.id =o.customers_id
group by c.name;

--Total amount per customer
select c.name,sum(o.amount) as total_amount
from customers c
join orders o
on c.id=o.customers_id
group by c.name;

--Customers with total amount>8000
select c.name,sum(o.amount) as total_amount
from customers c
join orders o
on c.id=o.customers_id
group by c.name
having sum(o.amount)>8000;

--highest order amount
select max(amount) from orders;

--customers who placed highest order
select name
from customers
where id=(
    select customers_id
    from orders
    where amount =(
        select max(amount) from orders
    )
);

--Rank customers by total spending 
select name,total_amount,
row_number() over (order by total_amount desc) as rank_num
from(
    select c.name,sum(o.amount) as total_amount
    from customersc
    join orders o
    on c.id=o.customers_id
    group by c.name
)t;


--categorize customers
Categorize customers
SELECT name, total_amount,
CASE WHEN total_amount > 8000 THEN 'High Value'
WHEN total_amount > 4000 THEN 'Medium Value'
ELSE 'Low Value'END AS category
FROM (SELECT c.name, SUM(o.amount) AS total_amount
FROM customers c
JOIN orders o
ON c.id = o.customer_id
GROUP BY c.name) t;