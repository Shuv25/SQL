use cartesian;

select *from customerA;
select *from customerB;

select distinct a.id,a.name from customerA a join customerB b on a.name=b.name;-- intersection will return common values

select distinct a.name,a.city from customerA a join customerB b on a.city=b.city;


