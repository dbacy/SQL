create table orders (
order_id int not null identity,
customer_id int,
delivery_address_id int, 
order_date date,
total decimal (13,4),
tax decimal (13,4),
primary key (order_id)
)
alter table orders
add foreign key (customer_id)
references customers(customer_id)

alter table orders
add foreign key (delivery_address_id)
references delivery_address(delivery_address_id)
----------------------------------------------------------------------------------------------

create table order_items (
item_id int not null identity, 
order_id int,
product_id int,
sell_price decimal (13,4),
primary key (item_id),
foreign key (order_id) references orders(order_id)
)
alter table order_items
add foreign key (product_id)
references products(product_id)
----------------------------------------------------------------------------------------------

create table products (
product_id int not null identity,
category_id int,
name varchar(50),
description varchar(100),
price decimal (13,4),
image_path varchar(50),
primary key (product_id)
)
alter table products
add foreign key (category_id)
references categories(category_id)
----------------------------------------------------------------------------------------------

create table categories (
category_id int not null identity primary key, 
name varchar(50),
description varchar(50)
)
----------------------------------------------------------------------------------------------

create table customers (
customer_id int not null identity primary key, 
first_name char(30),
last_name char(30),
address1 varchar(50),
address2 varchar(50),
address3 varchar(50),
city char(30),
state char(2),
zip int,
phone bigint,
email varchar(30) unique
)
----------------------------------------------------------------------------------------------

create table delivery_address (
delivery_address_id int not null identity primary key, 
first_name char(30),
last_name char(30),
address1 varchar(50),
address2 varchar(50),
address3 varchar(50),
city char(30),
state char(2),
zip int,
phone bigint,
email varchar(30) unique
)
----------------------------------------------------------------------------------------------