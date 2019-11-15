use master
go
if exists(select * from sys.databases where name='ceshi')
drop database ceshi
go
create database ceshi
go
use ceshi
go
create table cc
(
	id int primary key identity(1,1),
	name varchar(10) not null,
	pwd varchar(10) not null,
)
go

insert  cc values ('cc','123')
--		SELECT * FROM  cc		where name= and pow=
--select * from cc where name='cc'
