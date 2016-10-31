use shop;
select * from category;
select * from category where id = 3;
select * from category where not (discount > 5);
select * from category where alias_name is not null;
select * from category where name = "Женская обувь";
insert into category (name, discount, alias_name) values ('мужская обувь', 5, 'старые макасины');
select * from category where alias_name is not null;
select discount, name from category; 
select distinct discount from category;
select discount from category order by discount;
select * from category where discount > 0 order by discount desc;
select * from category limit 2;
select name from category where id = 3;
select * from category where discount < 10 order by name;

select * from category;
update category set name = 'самцовые боты' where id in (4, 5);

update category set alias_name = 'валенки' where id =3;
update category set alias_name = 'брак' where id < 3;

select * from brend;
insert into brend (type) values ('Тетя Клава Company');
delete from brend where id=4;
update brend set id = 4 where id=5;

