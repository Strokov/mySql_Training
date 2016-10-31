use shop;
-- информация о типе товара, которого нет в продуктах:
select * from category
	left join product on product.category_id = category.id
    where product.id is null;

select * from `order`
	left join order_products on order_products.order_id = `order`.id;
    -- right join product on order_products.product_id = product.id;
    -- where `order`.id is null ;

insert into `order` (user_name, phone, datetime) values ('Петр', '5-456-76', '30-10-2016 19:08');

select * from product_type
union
select * from brend;

select count(price), min(price), max(price) from product where price<5000;
select max(price) from product;

select * from product;
select * from `order`;
select * from order_products;
insert into order_products (order_id, product_id, count) values ('2','3','2');
insert into order_products (order_id, product_id, count) values ('2','4','4');

select order_products.count * product_id from order_products where order_products.count = 3;

-- сумма рублей по заказу Василий:
select `order`.user_name as 'Покупатель', sum(product.price * order_products.count) as 'Суммарная стоимость заказа' from product
       inner join order_products on order_products.product_id = product.id
	   inner join `order` on `order`.id = order_products.order_id
	   where `order`.user_name = 'Василий';
-- union       
-- сумма рублей по заказу Петр:
select `order`.user_name as 'Покупатель', sum(product.price * order_products.count) as 'Суммарная стоимость заказа' from product
       inner join order_products on order_products.product_id = product.id
	   inner join `order` on `order`.id = order_products.order_id
	   group by `order`.user_name;

