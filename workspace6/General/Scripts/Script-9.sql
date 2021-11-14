create table customer (
	MaDV int ,
	nAme VARCHAR(100),
	dia_chi varchar(100),
	gioi_tinh boolean,
	day date
);
ALTER TABLE customer
ADD PRIMARY KEY (MaDV);
insert into customer values (1,'Anh','HN',0,'2000-10-9');
insert into customer values (2,'Thuan','BN',1,'2001-10-9');
insert into customer values (3,'Tung','HN',1,'2001-10-9');
insert into customer values (4,'Hoa','BN',1,'2001-11-9');
insert into customer values (5,'NgocAnh','BN',0,'2007-10-9');
insert into customer values (6,'Haha','VP',1,'2002-10-10');
select distinct c.nAme ,c.dia_chi from customer c,customer c2 where c.dia_chi = c2.dia_chi and c.MaDV != c2.MaDV ; 

create table nhanvien (
	MaDV int ,
	nAme VARCHAR(100),
	luong int,
);
create table nhanvien (
	MaDV int ,
	diadiem VARCHAR(100),
	tenDuAn VARCHAR(100),
);