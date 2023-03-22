-- Database Creation for storing data in it :
drop database if exists masterdata;
create database masterdata;

-- Using Created Database for operation :
use masterdata;

-- Product Table :
create table products (
pid int auto_increment,
pname varchar(255),
sku varchar(255),
price int,
primary key (pid));

-- Data Insertion :
insert into products (pname,sku,price)
values('Laptop','LT1234',1000),
('Tablet','TB2468',500),
('Printer','PR1342',250),
('External Hard Drive','HD9013',450),
('Monitor','MN9012',400),
('Keyboard','KB6789',550),
('Mouse','MS2365',250);

-- Invertory Table :
create table inventory (
inid int auto_increment,
pid int,
curr_quantity int,
reorder_point int,
reorder_quantity int,
primary key (inid));

insert into inventory (pid,curr_quantity,reorder_point,reorder_quantity)
values(1,50,10,50),
(2,20,5,40),
(3,100,20,80),
(4,200,30,150),
(5,150,25,100),
(6,70,45,60),
(7,180,80,75);

-- Vendor Table :
create table vendors (vid int auto_increment,
vname varchar(255),
address varchar(255),
contact bigint(10),
primary key (vid));

insert into vendors (vname,address,contact)
values('ABC Suppliers', '123 Main St Anytown USA', 5551234908),
('XYZ Suppliers','456 Elm St. Anytown USA',5555678123),
('STU Suppliers','789 Oak St. Anytown USA',5557890078);

-- Orders Table :
create table orders (order_id int auto_increment,
order_number int,
order_date datetime,
vendor_id int,
primary key (order_id));

INSERT INTO orders (order_number, order_date, vendor_id)
VALUES (1234, '2022-02-28', 1),
(5679, '2022-03-05', 2),
(9101, '2022-03-10', 3),
(1121, '2022-03-15', 3),
(3141, '2022-03-20', 1),
(4568, '2022-03-27', 2),
(6701, '2022-03-30', 2),
(7658, '2022-04-01', 3),
(5684, '2022-04-14', 1),
(8567, '2022-04-08', 3);

-- Order items Table :
create table items (order_item_id int auto_increment,
order_id int,
product_id int,
quantity int,
unit_price int,
primary key (order_item_id));

insert into items (order_id, product_id, quantity,unit_price)
values (1, 1,10,1000),
(2, 2,20,500),
(3, 3,5,250),
(4, 4,30,450),
(5, 5,100,400),
(6, 6,50,550),
(7, 7,70,250);
       
show tables from masterdata;
       
-- Seeing if all data got stored in table or not :
select * from products;
select * from inventory;
select * from vendors;
select * from orders;
select * from items;
