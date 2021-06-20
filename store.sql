create table customer (
  id int,
  firstname varchar(250),
  lastname  varchar(250),
  username varchar(250),
  password varchar(250)
);

insert into customer (id, firstname, lastname, username, password)
VALUES ('6942069', 'Daniel', 'Mints', 'danielson', 'hahaLOL');

insert into customer (id, firstname, lastname, username, password)
values ('123456', 'Rick', 'Rickerson', 'hahaDavis', 'wassGood');

insert into  customer (id, firstname, lastname, username, password)
values ('654321', 'Morty', 'Mortison', 'PickleRick', 'certifiedHoodClassic' );

insert into customer (id, firstname, lastname, username, password)
values ('696696', 'Hudson', 'Huderson', 'BigClout', 'FbgDuck');

insert into customer(id, firstname, lastname, username, password)
VALUES ('9800078', 'Dayvon', 'Bennet',
        'KingVon', 'realHoodlem');

create table address(
  state varchar(255),
  city varchar(255),
  street varchar(255)
);

insert into address(state, city, street) VALUES ('Illinois', 'Chiraq', 'O-block');

insert into address(state, city, street) VALUES ('Masssachests', 'Ingelwood', 'charles');

insert into address(state, city, street) values ('Alabama', 'chacha', 'lala');

insert into address(state, city, street) values ('NewHampshire', 'zaza', 'lala');

create table orders(
  orderId int,
  orderDate varchar(255)
);

alter table orders
  add customerId int;

insert into orders (orderid)
select id
from customer;

alter table orders
  add name varchar(255);

insert into orders (name)
select firstname
from customer;

delete from orders;

insert into orders (name, customerid)
select firstname, id
from customer;

delete from orders where name='Rick';
delete from orders where name='Morty';

update orders
set orderid='98765', orderdate='06/8/2021'
where name = 'Daniel';

update orders
set orderdate='06/10/2021',
    orderid='320978'
where name = 'Dayvon';

update orders
set orderid='120095',
    orderdate='06/27/2021'
where name='Hudson';

create table cloths(
  clothId int,
  nameOfCloth varchar(255),
  price int
);

insert into cloths(clothid, nameofcloth, price) values ('123', 'Dolche', '2000');
insert into cloths(clothid, nameofcloth, price) values ('124', 'Gucci', '5000');
insert into cloths(clothid, nameofcloth, price) values ('125', 'Prada', '10000');
insert into cloths(clothid, nameofcloth, price) values ('126', 'Nike', '500');
insert into cloths(clothid, nameofcloth, price) values ('127', 'Valentino', '15000');
insert into cloths(clothid, nameofcloth, price) values ('128', 'Armani', '20000');

insert into address(state, city, street) values ('Arkinso', 'bala', 'kaza');

insert into orders(orderid, orderdate, customerid, name)
values ('19472', '06/24/2021', '696696', 'Hudson');

insert into orders(orderid, orderdate, customerid, name)
values ('85943', '06/30/2021', '6942069', 'Daniel');

create table delivery(
  deliveryId int,
  deliveryDate varchar(255),
  supplierId int
);

insert into delivery(deliveryid, deliverydate, supplierid)
values ('89223', '06/20/2021', '465768');

insert into delivery(deliveryid, deliverydate, supplierid)
values ('78234', '06/22/2021', '5231');

insert into delivery(deliveryid, deliverydate, supplierid)
values ('38264', '07/8/2021', '873801');

insert into delivery(deliveryid, deliverydate, supplierid)
values ('71340', '07/13/2021', '728974');

insert into delivery(deliveryid, deliverydate, supplierid)
values ('8301', '07/13/2021', '381993');

create table orderDetailDilivery(
  deliId int,
  ordId int,
  orderDetailId int
);

insert into orderdetaildilivery(deliid, ordid)
select deliveryid,orderid
from delivery,orders;

delete from orderdetaildilivery;
drop table orderdetaildilivery;

create table orderDetailDelivery(
  orderDetailId int
);

insert into orderDetailDelivery
values ('34523'),('75493'),('83024'),('123382'),('7384728');

drop table orderDetailDelivery;

CREATE TABLE ODD
AS (SELECT orders.orderid, delivery.deliveryid
    FROM orders, delivery);

drop table ODD;

create table ODD
as (select orders.orderid
    from orders);

alter table odd
  add delId int;

alter table odd
  add odId int;

insert into odd(delId)
select deliveryid
from delivery;

drop table odd;

create table ODD
as (select orders.orderid
    from orders);

alter table odd
  add adId int;

ALTER TABLE odd
  DROP COLUMN adid;

alter table odd
  add odId int;

alter table odd
  add delId int;

update odd
set odid = '7302', delid = '89223'
where orderid = '320978';

update odd
set odid = '39412', delid = '78234'
where orderid = '120095';

update odd
set odid = '52324', delid = '38264'
where orderid = '19472';

update odd
set odid = '30945', delid = '71340'
where orderid = '85943';

update odd
set odid = '21394', delid = '8301'
where orderid = '98765';

create table orderDetail
as (select odd.orderid, odd.odid
    from odd);

alter table orderdetail
  add clothId varchar(255);

alter table orderdetail
  add quantitie int;

update orderdetail
set clothid = '124', quantitie = 2
where orderid = '320978';

update orderdetail
set clothid = '125', quantitie = 1
where orderid = '120095';

update orderdetail
set clothid = '126', quantitie = 4
where orderid = '19472';

update orderdetail
set clothid = '123', quantitie = 1
where orderid = '85943';

update orderdetail
set clothid = '128', quantitie = 1
where orderid = '98765';

drop table odd;
ALTER TABLE orderdetail
  DROP COLUMN odid;

ALTER TABLE Customer
  ADD state varchar(255);

alter table customer
  DROP column state;

alter table address
  add id int;

UPDATE address
SET id = (
  SELECT id
  FROM customer
  WHERE customer.id = address.id
);


where id == null;

drop table address;

create table address(
  id int
)

Insert into address
(id)
Select id from customer;

alter table address
  add state varchar(255);

alter table address
  add city varchar(255);

alter table address
  add addi varchar(255);

update address
set state='MA',city='Boston',addi='Hanalulu'
where id = 6942069;

update address
set state='LA',city='chuchu',addi='chacha'
where id = 696696;

update address
set state='NY',city='nau',addi='pollop'
where id = 9800078;

update address
set state='ZE',city='zulu',addi='zala'
where id = 654321;

update address
set state='PO',city='SALz',addi='Vart'
where id = 123456;

alter table orders
  add id_of_cust int;

UPDATE orders
SET id_of_cust = (
  SELECT id
  FROM customer
  WHERE orders.name = customer.firstname
);

create table clothInvestigation (
  clothID int,
  prico int,
  sold int
);

drop table clothinvestigation;

create table paymentInfo();

alter table paymentinfo
  add custID int;

insert into paymentinfo(custid)
select id
from customer;

alter table paymentinfo
  add state int;

SELECT customer.firstname
FROM customer
RIGHT JOIN paymentinfo
ON customer.id = paymentinfo.custid;
