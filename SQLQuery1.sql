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
	pow varchar(10) not null,
	zt int default(0),
)
go
create table leixing
(
	id int primary key identity(1,1),
	name varchar(10) not null,
	ccid int references cc(id)
)
go

insert  cc values ('cc','123',default)
insert  cc values ('cc','123',default)
insert  cc values ('cc1','123',1)
insert  leixing values ('类型1',2)
insert  leixing values ('类型2',1)
insert  leixing values ('类型2',3)
--		SELECT * FROM  cc		where name= and pow=
--select * from cc where name='cc'
--update cc set zt=1 where id=2
--SELECT * FROM  cc where zt=1
select * from cc,leixing where cc.id=leixing.ccid
--select *,(select name from leixing where cc.id=leixing.ccid) from cc where zt=0 and name='cc'and leixing.name=1 
select * from leixing
select * from cc,leixing where cc.id=leixing.ccid and zt=0 and cc.name='cc'and leixing.ccid=2
--select * from cc,leixing where cc.id=leixing.ccid and zt=0 and leixing.id=1