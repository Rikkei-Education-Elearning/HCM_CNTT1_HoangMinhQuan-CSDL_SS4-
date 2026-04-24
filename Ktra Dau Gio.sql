create database Shopmanager;

use Shopmanager;

create table categories (
	category_id int primary key,
    category_name varchar(30)
);

create table products (
	product_id int primary key,
    product_name varchar(30),
    price decimal(15,0),
    stock int,
    category_id int,
    foreign key (category_id) references categories(category_id)
);

insert into categories (category_id, category_name)
values 	(1, 'Điện tử'),
		(2, 'Thời trang');
        
insert into products (product_id, product_name, price, stock, category_id)
values	(1, 'iPhone 15', 25000000, 10, 1),
		(2, 'Samsung 23', 20000000, 5, 1),
        (3, 'Áo sơ mi nam', 500000, 50, 2),
        (4, 'Giày thể thao', 1200000, 20, 2);

set SQL_SAFE_UPDATES = 0;

update products
set price = 26000000
where product_name = 'Samsung 23';

delete from products 
where product_id = 4; 

select * from products;
select * from products 
where stock > 15;
set SQL_SAFE_UPDATES = 1;
