create database data_base1;
create table customer (
	MaDV int ,
	nAme VARCHAR(100),
	dia_chi varchar(100),
	gioi_tinh boolean;
);
ALTER TABLE customer
ADD PRIMARY KEY (ID);
