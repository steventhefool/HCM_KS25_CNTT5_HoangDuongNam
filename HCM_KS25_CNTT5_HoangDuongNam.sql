create database ShopManager;
use ShopManager;

create table Categories (
	category_id int primary key auto_increment,
    category_name varchar(20)
);

create table Products (
	product_id int primary key auto_increment,
    product_name varchar (20),
    price int not null,
    stock int,
    category_id int not null,
    
    constraint fk_category_id
		foreign key (category_id)
        references categories (category_id)
);

insert into categories (category_name) values 
	('Điện tử'),
    ('Thời trang')
;

insert into Products (product_name, price, stock,category_id) values 
	('Iphone 15', 25000000, 10, 1),
    ('Samsung S23', 20000000, 5, 1),
    ('Áo sơ mi nam', 5000000, 50, 2),
    ('Giày thể thao', 1200000, 20, 2)
;

update Products 
	set price =26000000
    where product_name ='Iphone 15';

update products 
	set stock = stock +10
    where category_id = 1
;


delete from products where product_id = 4;
delete from products where price < 1000000;

select * from products;
select * from products where stock > 15;
select * from products where stock >1000000 and 25000000;
select * from products where product_name = 'iphone 15' and stock >0;
select * from products where category_id = 1 and price > 500000
