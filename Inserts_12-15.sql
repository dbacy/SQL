insert into categories (name, description) values ('books', 'things made out of paper')
insert into categories (name, description) values ('electronics', 'things made you plug in')
insert into categories (name, description) values ('clothing', 'things you put on your body')
select * from categories


insert into products (category_id, name, description, price) values (1, 'HTML', 'Build web pages in your spare time', 5.99)
insert into products (category_id, name, description, price) values (1, 'JavaScript', 'Become fluent in 10 days', 15.99)
insert into products (category_id, name, description, price) values (1, 'C#', 'Becoming a Microsoft C# developer', 13.99)
insert into products (category_id, name, description, price) values (1, 'Java', 'Learning the best language ever', 25.99)
insert into products (category_id, name, description, price) values (2, 'iPad', 'Apple iPad 12in', 385.99)
insert into products (category_id, name, description, price) values (2, 'Chrome Book', 'Cheap laptop for kids', 150.99)
insert into products (category_id, name, description, price) values (2, 'Digital Camera', 'Do they still make them', 130.99)
insert into products (category_id, name, description, price) values (2, 'Ring Security', 'All home security system', 250.99)
insert into products (category_id, name, description, price) values (3, 'Blue Suede Shoes', 'Looking sharp', 5.99)
insert into products (category_id, name, description, price) values (3, 'Red Shirt', 'Dont get caught dead in this', 15.99)
insert into products (category_id, name, description, price) values (3, 'Top Hat', 'Get ready for the inaguaration', 13.99)
insert into products (category_id, name, description, price) values (3, 'Gloves', 'Its finally winter', 25.99)
select * from products


insert into customers (first_name, last_name, city, state, email) values ('John','Quincy','Arlington','TX','jq@gmail.com')
insert into customers (first_name, last_name, city, state, email) values ('George','Washington','Fort Worth','TX','gw@gmail.com')
insert into customers (first_name, last_name, city, state, email) values ('Alexander','Hamilton','Dallas','TX','ah@gmail.com')
insert into customers (first_name, last_name, city, state, email) values ('Aaron','Burr','Grand Prairie','TX','ab@gmail.com')
insert into customers (first_name, last_name, city, state, email) values ('Thomas','Jefferson','Hurst','TX','tj@gmail.com')
select * from customers


insert into orders(customer_id, order_date, tax) values(1, getDate(), 0.0825);
insert into orders(customer_id, order_date, tax) values(2, getDate(), 0.0625);
insert into orders(customer_id, order_date, tax) values(3, getDate(), 0.0525);
insert into orders(customer_id, order_date, tax) values(4, getDate(), 0.02);
insert into orders(customer_id, order_date, tax) values(5, getDate(), 0.0375);
select * from orders


insert into order_items (order_id, product_id, sell_price) values (1, 1, 13.25)
insert into order_items (order_id, product_id, sell_price) values (1, 2, 10.25)
insert into order_items (order_id, product_id, sell_price) values (2, 3, 13.25)
insert into order_items (order_id, product_id, sell_price) values (2, 4, 19.25)
insert into order_items (order_id, product_id, sell_price) values (4, 3, 31.25)
insert into order_items (order_id, product_id, sell_price) values (4, 3, 32.25)
insert into order_items (order_id, product_id, sell_price) values (4, 3, 12.25)
insert into order_items (order_id, product_id, sell_price) values (4, 1, 99.25)
insert into order_items (order_id, product_id, sell_price) values (3, 7, 120.89)
insert into order_items (order_id, product_id, sell_price) values (5, 5, 399.99)
insert into order_items (order_id, product_id, sell_price) values (5, 9, 40.50)
insert into order_items (order_id, product_id, sell_price) values (3, 11, 9.99)
select * from order_items