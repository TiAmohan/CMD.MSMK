use master
go


--每时每刻数据库
if exists(select * from sys.databases where name='EveryTime')
drop database EveryTime
go
	create database EveryTime
go
use EveryTime
go

--用户表
if exists(select * from sys.tables where name='Users')
	drop table Users
go
create table Users
(
	Userid int primary key identity(1,1),--用户id
	Username varchar(50) not null,       --用户名
	Userpassword varchar(50) not null,   --用户密码
	Usergrade int check(Usergrade=1
	 or Usergrade=2 or Usergrade=3 
	 or Usergrade=4) not null,           --用户等级(1为买家，2为卖家，3为供应商，4为平台管理)
	Userbalance money not null           --用户余额
)
go

--供应商表
if exists(select * from sys.tables where name='Provider')
	drop table Provider
go
create table Provider
(
	Providerid int primary key identity(1,1),--供应商id
	Providername varchar(50),                --供应商名称
	Providerstate int default(0) check(Providerstate=0 or Providerstate=1)not null,    --(供应商状态默认是0，0是正常，1是冻结)
)
go

--供应商商品表
if exists(select * from sys.tables where name='ProviderProduct')
	drop table ProviderProduct
go
create table ProviderProduct
(
	Productid int primary key identity(1,1),--供应商商品id
	Productname varchar(50)not null,        --供应商商品名称
	Productcontent varchar(100)not null,    --供应商商品简介
	Productprice varchar(100)not null,      --供应商商品价格
	Productimg varchar(50) not null,        --供应商商品图片
	Providerid int references Provider(Providerid)--对应供应商表的供应商id（外键）
)
go

--卖家表	
if exists(select * from sys.tables where name='Seller')
	drop table Seller
go
create table Seller 
(
	Sellerid int primary key identity(1,1),--卖家id
	Sellername varchar(50) not null,       --卖家名字
	Sellerstate int default(0) check(Sellerstate=0 or Sellerstate=1)not null,    --(卖家状态默认是0，0是正常，1是冻结)
)
go


--卖家商品表
if exists(select * from sys.tables where name='SellerProduct')
	drop table SellerProduct
go
create table SellerProduct
(
	Sproductid int primary key identity(1,1),--卖家商品id
	Sproductname varchar(50)not null,        --卖家商品名称
	Sproductcontent varchar(100) not null,   --卖家商品简介
	Sproductprice varchar(100) not null,     --卖家商品价格
	Sproductimg varchar(100) not null,       --卖家商品图片
	Sellerid int references Seller(Sellerid)--对应卖家表的卖家id（外键）
)
go

--订单表
if exists(select * from sys.tables where name='List')
	drop table List
go
create table List
(
	Listid int primary key identity(1,1),--订单id
	Sproductid int references SellerProduct(Sproductid),--对应卖家商品表的商品id（外键）
	Liststate int default(0) check(Liststate=0 or Liststate=1 or Liststate=2 or Liststate=3)not null,--(默认值为0，0是待发货，1是已发货，2是已完成，3是退换)订单状态
	Userid int references Users (Userid)--对应用户表的用户id（外键）
)
go


-- 买家个人信息
if exists(select * from sys.tables where name='Buyer')
	drop table Buyer
go
create table Buyer
(
	Buyerid int primary key identity(1,1), --买家id
	Buyername varchar(50) not null,        --买家用户名
	Buyerphone varchar(50) not null,       --买家电话
	Buyeremail varchar(50) not null,       --买家邮箱
	Shname varchar(50) not null,           --收货人姓名
	Shaddress varchar(50) not null,        --收货人地址
	Shphone varchar(50) not null,          --收货人电话
)
go

--买家（购物车表）
if exists(select * from sys.tables where name='Shopping')
	drop table Shopping
go
create table Shopping
(
	Shoppingid int primary key identity(1,1),   --购物车id
	Sproductname varchar(50)not null,        --购物车商品名（对应）（卖家商品名称）
	Sproductcontent varchar(100) not null,   --购物车商品简介（对应）（卖家商品简介）
	Sproductprice varchar(100) not null,     --购物车商品价格（对应）（卖家商品价格）
	Sproductimg varchar(100) not null,       --购物车商品图片（对应）（卖家商品图片）
	Buyerid int references Buyer(Buyerid)    --买家购物车对应买家个人信息（买家id）（外键）
)
go

--会员表
if exists(select * from sys.tables where name='VIPuser')
drop table VIPuser
go
create table VIPuser
(
Vipid int primary key identity(1,1),    --会员id
Vipname varchar(50) not null,           --会员名称
VIPList   int  check(VIPList=1 or VIPList=2 or VIPList=3) not null,--会员级别(1=白银会员，2=黄金会员，3=至尊会员)
Viper varchar(50) not null,        --会员特权
Buyerid int  references Buyer (Buyerid)  --对应买家个人信息（买家id）（外键）
)
go

--平台管理（公告表）
if exists(select * from sys.tables where name='Manage')
	drop table Manage
go
create table Manage
(
	Manageid  int primary key identity(1,1), --公告id
	Managetitle varchar(50) not null,        --公告标题
	Managecontent varchar(50) not null,      --公告内容
	Managetime time not null,                --公告时间
	Managegrade int check(
	Managegrade=1 or Managegrade=2 or
	 Managegrade=3 or Managegrade=4 or
	  Managegrade=5) not null                --公告对应级别(对哪个级别发布)(买家，卖家，供应商，派送，全部)
)
go

--级别审批
if exists(select * from sys.tables where name='Approval')
	drop table Approval
go
create table Approval
(
	Approvalid int primary key identity(1,1), --审批id
	Approvalgrade int not null,               --审批级别
	Approvalcontent varchar(50) not null,     --审批内容
	Approvaltime time not null,               --审批时间
	Userid int references Users(Userid)       --对应用户表（用户id）（外键）
)
go

--卖家与买家的交流
if exists(select * from sys.tables where name='Talk')
	drop table Talk
go
create table Talk
(
	Talkid int primary key identity(1,1),     --交流id
	Sellerid int references Seller(Sellerid), --对应卖家表（卖家id）（外键）
	Buyerid int references  Buyer(Buyerid),   --对应买家表（买家id）（外键）	
	Talkcontent varchar(50) not null,         --交流内容
	Talktime time not null,                   --交流时间
)
go

insert Users values('张三','123456',1,1300)
insert Users values('李四','111111',2,200)
select * from Users


--添加卖家信息
insert into Seller values('小卡',0)
insert into Seller values('小琴',0)
insert into Seller values('小尼',0)
insert into Seller values('小D',0)
insert into Seller values('小力',0)
select * from Seller
--添加卖家商品信息
insert into SellerProduct values('卡西欧','简约奢华','2387','',1)
insert into SellerProduct values('浪琴','简约奢华','12345','',2)
insert into SellerProduct values('阿玛尼','简约奢华','2387','',3)
insert into SellerProduct values('DW','简约奢华','2387','',4)
insert into SellerProduct values('劳力士','简约奢华','2387','',5)
insert into SellerProduct values('卡西欧','简约奢华','2387','',1)
insert into SellerProduct values('浪琴','简约奢华','2387','',2)
insert into SellerProduct values('阿玛尼','简约奢华','2387','',3)
select * from SellerProduct
select * from Seller,SellerProduct where Seller.Sellerid=SellerProduct.Sellerid









