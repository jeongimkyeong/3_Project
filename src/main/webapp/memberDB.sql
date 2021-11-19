
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

create table board_tbl(
	num int primary key auto_increment,
	username varchar(45) not null,
	subject varchar(20) not null,
	content text not null,
	regdate DATETIME DEFAULT CURRENT_TIMESTAMP,
	pwd varchar(15),
	count int unsigned,
	filename varchar(30),
	filesize int
);

/*전체 실행 : Ctrl+Alt+X , 드래그한부분 실행 : Alt+X*/