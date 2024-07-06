-- creating database stylaxcarz_db; task 1 
create database stylaxcarz_db;
-- using database stylaxcarz_db

use stylaxcarz_db;
-- creating table task2 

create table salespearson(
salespearson_id int not null, 
salespearson_name varchar (50) not null,
salespearson_city varchar(50) not null,
commission_rate int not null 
);
-- add primary key in salespearson_id task 2
alter table salespearson add primary key (salespearson_id);

desc salespearson;

--  create &insert values in table task 3 

insert into salespearson(salespearson_id,salespearson_name,salespearson_city,commission_rate)
values(1001,"William","London",12),
(1002,"Liam","San Jose",13),
(1003,"Axelrod","New York",10),
(1004,"James","London",11),
(1005,"Fran","London",26),
(1007,"Oliver","Barcelona",15),
(1008,"John","London",0),
(1009,"Charles","Florida",0);

-- update the commission rate task 4 

set sql_safe_updates=0;
update salespearson
set commission_rate = 15 
where commission_rate between 0 and 13;



-- creating table 2 

create table customers(
customer_id int not null,
first_name varchar(50) not null,
last_name varchar(50) not null,
city varchar(50) not null,
rating int not null);

-- ading primary key in customer_id 

alter table customers add primary key(customer_id);

-- insert into table 
insert into customers(customer_id,first_name,last_name,city,rating)
values (2001,"Hoffman","Anny","London",100),
(2002,"Giovanni","Jenny","Rome",200),
(2003,"Liu","Williams","San Jose",100),
(2004,"Grass","Harry","Berlin",300),
(2005,"Clemens","John",	"London",200),
(2006,"Cisneros","FannySan","Jose",200),
(2007,"Pereira","Jonathan","Rome",300);

-- update rating task 7 
update customers
set rating = rating +50;

-- creating table 3 

create table orders(
order_id int not null,
amount int not null,
orderdate date not null,
salespearson_id int not null,
customer_id int not null);

alter table orders add primary key(order_id);

-- display table 
desc orders;

drop database  stylaxcarz_db;

-- insert into table values 

insert into orders(order_id,amount,orderdate,salespearson_id,customer_id)
values (3001, 123, '2021-02-01', 1009, 2007),
(3002, 100, '2021-07-30', 1001, 2007),
(3003, 187, '2021-10-02', 1001, 2001),
(3005, 201, '2021-10-09', 1003, 2003),
(3007, 167, '2021-04-02', 1004, 2002),
(3008, 189, '2021-03-06', 1002, 2002),
(3009, 145, '2021-10-10', 1009, 2005),
(3010, 200, '2021-02-23', 1007, 2007),
(3011, 100, '2021-09-18', 1001, 2004);

-- droping database 

drop database stylaxcarz_db;

-- craete table $ adding clouns task 5 

create table orders_bkp like orders;

-- create table select and coppy 

create table orders_place_history select * from orders;

-- delete data from orders task 6 

DELETE FROM orders
WHERE order_id = '3005' or order_id ='3008';


