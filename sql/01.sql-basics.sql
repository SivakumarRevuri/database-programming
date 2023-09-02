use oracle;

create table test(sno numeric(7,2)); -- percision, scale

select * from test;
insert into test(sno) values(12307.67);
truncate test;
alter table test add column inde int primary key auto_increment;

insert into test(sno) values(78905);

desc orders;