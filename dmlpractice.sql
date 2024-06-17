use dml;

create table rec
(
	reg_id int(9) not null unique,
    fname varchar(99) not null,
    adress varchar(99) not null,
    ranking int(9) not null unique
);

insert into rec values('3','Kushal','Bihar','7');
insert into rec values('4','Geetika','MP','8');
insert into rec values('5','lavanya','UP','4');
insert into rec values('6','Shishir','UK','3');
insert into rec values('7','Uttam','HR','9');

select *from rec;

update rec set ranking=1 where reg_id=3;
update rec set ranking=2 where reg_id=7;

delete from rec where reg_id=5;

select *from rec where reg_id = '4'; -- this will print all values after reg id 3

select *from rec where not reg_id ='6'; -- this will print all values excelt reg id 6

select *from rec where reg_id=3 and ranking= 1; -- this will print the value which contain regid as 3 and ranking as one

