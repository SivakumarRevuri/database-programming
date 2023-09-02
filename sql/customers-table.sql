create table emp(
empno numeric primary key,
ename varchar(20) not null
);
use oracle;
show tables;
select * from emp;

-- create customers table

create table customers(
	id integer primary key auto_increment,
    name varchar(20) not null,
    age numeric(2) not null,
    address varchar(20)
);

alter table customers add column salary float;
describe customers;
alter table customers rename column name to customer_name;
alter table customers rename column customer_name to name;
select * from customers;

insert into customers(name, age, address, salary) values('Ramesh', 32, 'Ahmedabad', 2000);
insert into customers(name, age, address, salary) values('Khilan', 25, 'Delhi', 1500);
insert into customers(name, age) values('Kaushik', 23);
insert into customers(name, age, address, salary) values('Chaitali', 25, 'Mumbai', 6500);
insert into customers(name, age, address, salary) values('Hardik', 27, 'Bhopal', 8500);
insert into customers(name, age, address, salary) values('Komal', 22, 'MP', 4500);
insert into customers(name, age, address, salary) values('Muffy', 24, 'Indore', 10000);

delete from customers where id = 4;
update customers set address = 'Kota' where id = 3;
update customers set salary = 2000 where  id = 3;-- name = 'kaushik';

alter table customers add column gender char(1);
update customers set gender = 'M' where id in (1,2,3);
commit;

alter table customers drop gender;