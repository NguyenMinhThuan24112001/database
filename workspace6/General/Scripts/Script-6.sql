create database first_database;
drop database first_database;
create table customer (
	ID int ,
	nAme VARCHAR(100),
	phone varchar(100),
	merchant_id int
)
ALTER TABLE customer
ADD PRIMARY KEY (ID);

create table merchant (
	id int, 
	name varchar(1000)
)

ALTER TABLE merchant
ADD PRIMARY KEY (ID);

ALTER TABLE customer
ADD FOREIGN KEY (merchant_id) REFERENCES merchant(id);

insert into customer(id, name, merchant_id) values(1231234, 'Nguyễn Thị A', 3322)

insert into customer values(1231236, 'Vũ văn B', '123449', 3323)

insert into merchant values(3322, 'Phùng A')

insert into merchant values(3323, 'Đai Lý B')
insert into merchant values(2234, 'Đai Lý C')


insert into customer(id, phone, merchant_id) values(1231236, '09063424', '2233')

insert into customer values(1231236, 'Trân Văn C', '223455', 2234)

insert into customer(id, name, phone, merchant_id) values(1231237, 'Vũ Thị E', '345345', 3323)

insert into customer(id, name, phone, merchant_id) values(1231238, 'Trân Văn C', '223455', 3323)

insert into customer(id, name, phone, merchant_id) values(1231240, 'Trân Văn H', '223455', 2234)

update customer set phone = '123456', merchant_id = 3445 where id = 1231234

update customer set name = 'Phan Văn E' where id = 1231246

delete from customer where id = 1231244

delete from customer

drop table customer

select * from customer

select * from merchant

select name, id from customer

select count(*) from customer

select * from customer where merchant_id = 3323

select * from customer where merchant_id = 3323 and name like "Vũ%"

select * from customer where merchant_id <> 3323

select * from customer where merchant_id < 3000

select id from customer where merchant_id = 3323 or merchant_id = 3322

select * from customer c where id = 1231237

select * from customer

select * from customer order by merchant_id asc

select * from customer order by merchant_id desc

select * from customer order by merchant_id desc, id asc

select * from customer order by id desc

select * from customer order by id desc limit 2

select * from customer order by id desc limit 2, 2


