create database unv;
use unv;
-- drop database unv;
CREATE table professors(
  profnum integer,
  pname varchar(20),
  dept varchar(20),
  yrsteach real,
  area varchar(30),
  PRIMARY key (profnum)
 );
  
CREATE TABLE courses(
    cnum integer,
    cname varchar(20),
    dept varchar(10),
    term varchar(10),
    enrollment char(10),
    constraint courses primary key(cnum,term)
);
create table student(
    stnum integer,
    stname char(20),
    age integer,
    major char(20),
    gpa double,
    hours char(20),
    primary key(stnum)
);
CREATE TABLE takes(
      grades char(10),
	  cnum integer,
	  term char(10),
	  stnum integer,
      foreign key (cnum,term) REFERENCES courses(cnum,term),
	  foreign key (stnum) REFERENCES student(stnum)
);
create table teaches(
      cnum integer,
	  term char(10),
      profnum integer,
       foreign key (cnum,term) REFERENCES courses(cnum,term),
       foreign key (profnum) REFERENCES professors(profnum)
  );