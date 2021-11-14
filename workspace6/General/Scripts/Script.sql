create database first_database

create table Khachhang(
	sid int, 
	sname varchar(20),
	rating int,
	age real,
	primary key (sid)
);

create table Boats(
	bid int, 
	bname char(20),
	color char(10),
	primary key (bid)
);

create table Reservers(
	sid int, 
	bid int, 
	day date,
	primary key (sid , bid, day),
	foreign key (sid) references Khachhang(sid),
	foreign key (bid) references Boats(bid)
);