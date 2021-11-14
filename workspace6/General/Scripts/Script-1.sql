create table Khachhang(
	sid int, 
	sname varchar(20),
	rating int,
	age real,
	primary key (sid)
);

-- nhap vao bang
insert into khachhang (sid,sname,rating,age) values (24,'Nguyen minh thuan',1,21);
insert into khachhang (sid,sname,rating,age) values (12,'Nguyen thuan hoa',3,17);
insert into khachhang (sid,sname,rating,age) values (14,'Nguyen Thi ngoc anh',11,17);
insert into khachhang (sid,sname,rating,age) values (11,'Nguyen van tiep',1,20);

-- cap nhat lai thong tin
update khachhang 
set age = 43
where sid = 11;
create table Boats(
	bid int, 
	bname char(20),
	color char(10),
	primary key (bid)
);
insert into Boats (bid,bname,color) values (11,'Nguyen minh thuan','red');
insert into Boats (bid,bname,color) values (12,'Nguyen thuan hoa','black');
insert into Boats (bid,bname,color) values (14,'Nguyen Thi ngoc anh','yellow');

delete from  boats where bname = 'Nguyen minh thuan';
-- xoá toàn bộ bảng
-- delete  from boats 

-- su dung join de in ra cac diem trùng
-- SELECT  Khachhang.sid, Khachhang.sname,Khachhang.age, Boats.color
--     FROM Khachhang 
--     INNER JOIN Boats ON Khachhang.sid = Boats.bid;
   

create table Reservers(
	sid int not null, 
	bid int not null, 
	day date,
	primary key (sid , bid, day),
	foreign key (sid) references khachhang(sid),
	foreign key (bid) references Boats(bid)
);
INSERT INTO Reservers (sid, bid, day) VALUES (11,12,'2021/9/10');
INSERT INTO Reservers (sid, bid, day) VALUES (12,14,'2021/9/11');

select * from khachhang k 
select * from khachhang where sid =11;
select sid, sname from khachhang k ;
select  count(*) from boats b ; 
select * from khachhang where sid =12 and sname like "%nguyen%";
select * from khachhang where sid =13 or sname like "%ngoc%";
select * from khachhang where sid <>11;
select * from khachhang where sid > 13;
select * from boats order by bid asc;
select * from khachhang order by sid desc, age asc  ;
select * from boats order by bid asc limit 2;
DROP TABLE boats;