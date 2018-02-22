use master
go 
create database ecommerceDB2
go
use ecommerceDB2
go

create table category
(
	id int identity(1,1) primary key,
	name varchar(200)
)
create table product
(
	id int identity primary key,
	name varchar(200),
	description varchar(2000),
	price float,
	imageUrl varchar,
	categoryId int,
	foreign key (categoryId) references category(id)
)
create table userInfo
(
	id int identity primary key,
	name varchar(200) not null,
	email varchar(200) not null unique,
	password varchar(200),
	role varchar(200)
)