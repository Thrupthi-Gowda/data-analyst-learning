--Day 24 Project
--Warehouse inventory management System

--Drop table 
Drop table if exists orderes;
Drop table if exists products;
Drop table if exists warehouses;

--create warehouse table
create table warehouses(
    id int primary key,
    name varchar(50),
    location varchar(50)
);


--create product table
create table product(
    id int primary key,
    product_name varchar(50),
    warehouse_id int,
    quantity int,
    price int,
    foreign key(warehouse_id) references
    warehouse(id)
);

--create orders table
create table orders(
    id int primary key,
    product_id int,
    order_quantity int,
    order_date date,
    foreign key(product_id) references
    products(id)
);

--insert warehouses
insert into warehouses values(1,'MainWarehouse','Channai');
insert into warehouses values(2,'BackupWarehouse','Bangalore');

--insert products
insert into product values(1,'Laptop',1,50,50000);
insert into product values(2,'Mobile',1,100,20000);
insert into product values(3,'Table',2,70,30000);
insert into product values(4,'Monitor',2,40,15000);

--insert orders
insert into orders values(1,1,5,'2024-01-10');
insert into orders values(2,2,10,'2024-01-11');
insert into orders values(3,3,7,'2024-01-12');
insert into orders values(4,1,3,'2024-01-13');

--.View all products
select * from products;

--where(low stock)
select * from product
where quantity < 60;

--update stock
update products
set quantity = quantity-5
where id=1;

--delete example
delete from orders 
where id=4;

--join(product+warehouse)
select p.product_name,w.name as warehouse,p.quantity
from products p
join warehouses w
on p.warehouse_id=w.id;

--group by(total products per warehouse)
select w.name,count(p.id)as total_products
from products p
join warehouses w
on p.warehouse_id=w.id
group by w.name;

--having (warehouse with more than 1 product)
select w.name,count(p.id) as total_products
from products p
join warehouses w
on p.warehouse_id=w.id
group by w.name
having count(p.id)>1;

--order by(highest price)
select * from products
order by price desc;

--limit (top 2 expensive products)
select * from products 
order by price desc;
limit 2;

--subquery(above average price)
select product_name,price
from products 
where price>(select avg(price) from products);

window function (ranking products by price)
select product_name , price,
row_number() over(order by price desc) as rank_num
from products; 