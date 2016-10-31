use shop;

SELECT * FROM shop.`order`;

-- Добавим бабки покупателям
update shop.`order` set money = 10000 where id=1;
update shop.`order` set money = 15000 where id=2;

-- Смоделируем перевод денег внутри них
start transaction;
update shop.`order` set money = money-1000 where id=1;
update shop.`order` set money = money+1000 where id=2;
commit;




