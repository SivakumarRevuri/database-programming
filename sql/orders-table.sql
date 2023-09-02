create table orders (
	oid integer auto_increment primary key,
    date datetime, 
    customer_id integer references customers(id),
    amount float
);

insert into orders (oid, date, customer_id, amount) values(100, sysdate(), 3, 3000);
insert into orders(date, customer_id, amount) values(sysdate(), 3, 1500);
insert into orders(date, customer_id, amount) values(datetime(2009, 11, 20, 00,00,00), 2, 1560);

alter table orders add foreign key (customer_id) references customers(id);
commit;

select * from orders;

