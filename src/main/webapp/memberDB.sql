
create database pjdb;

use pjdb;

create table member_tbl(
	userid varchar(45) not null primary key,
    pwd varchar(45) not null,
    username varchar(45) not null,
    phone varchar(20) not null,
    email varchar(45) not null,
    zipcode int not null,
    addr1 varchar(45) not null,
    addr2 varchar(45) not null,
    grade int
);

desc member_tbl;