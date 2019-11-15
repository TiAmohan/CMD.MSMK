use master
go

if exists(select * from sys.databases where name='EveryTime')
drop database EveryTime
go
create database EveryTime
go

use EveryTime
go


--等级表
create table grade
(
	gradeId int primary key identity(1,1),--用户等级(1为买家，2为卖家，3为供应商，4为平台管理)
	ClassTypes varchar(20)--用户等级(为买家，为卖家，为供应商，为平台管理)
)
go
--用户表
create table Users
(
	Userid int primary key identity(1,1),--用户id
	Username varchar(50) not null,       --用户名
	Userpassword varchar(50) not null,   --用户密码
	Userbalance money default(0) not null,           --用户余额
	Usergrade int references grade(gradeId), --用户等级(1为买家，2为卖家，3为供应商，4为平台管理)
	UsersState int  default(0) check(UsersState=0 or UsersState=1)--用户状态  默认为0   0正常，1冻结
)
go
--个人信息
create table information
(
	Tel varchar(50),--电话
	Mailbox varchar(50),--邮箱
	Userid int references Users(Userid)--用户ID
)
go
--收货表
create table Receiving 
(
	ReceivingID int primary key identity(1,1),--收货ID
	Consignee varchar(50),--收货人
	ShippingAddress varchar(50),--收货地址
	Mobile varchar(50),--收货手机号
	Userid int references Users(Userid)--用户ID
)
go

create table Sproduct--卖家商品表
(
    Sproductid int primary key identity(1,1),--卖家商品id
	Sproductname varchar(50)not null,        --卖家商品名称
	Sproductcontent varchar(100) not null,   --卖家商品简介
	Sproductprice money default(0),     --卖家商品价格
	Sproductimg varchar(100) not null,       --卖家商品图片
	--Userid int references Users(Userid)--用户ID
)
go

create table List--订单表
(
   
	Listid int primary key identity(1,1),--订单id
	Sproductid int references Sproduct(Sproductid),--对应卖家商品表的商品id（外键）
	Liststate int default(1) check(Liststate=1 or Liststate=2 or Liststate=3 or Liststate=4),--(默认值为1，1=未发货，2是已发货，3是已完成，4是退换)订单状态
	Userid int references Users (Userid)--对应用户表的用户id（外键）
)
go

--create table Talk--交流表
--(
--  	Talkid int primary key identity(1,1),     --交流id
--	--Sellerid int references Sproduct(Sellerid), --对应卖家表（卖家id）（外键）
--	--Buyerid int references  Buyer(Buyerid),   --对应买家表（买家id）（外键）	
--	Talkcontent varchar(50) not null,         --交流内容
--	Talktime time not null,                   --交流时间
--)
--go

create table ProviderProduct--供应商商品表
(
Productid int primary key identity(1,1),--商品ID
Productname varchar(50) not null,--商品名
Productcontent varchar(50) not null,--商品简介
Productprice money default(0) not null,--商品价格	
Productimg varchar(50) not null,--商品图片
Userid int references Users (Userid)--用户ID
)
go


create table comment--买家评论表
(
commentid int primary key identity(1,1),--评论ID
commentcontent varchar(50),--评价
commenttime datetime default(getdate()),--评价时间
 Sproductid int references Sproduct(Sproductid)--卖家商品id 外键
)
go

--公告表
create table Notice
(
	NoticeID int primary key identity(1,1),--公告ID
	NoticeTitle varchar(50) not null,--公告标题
	NoticeContent varchar(200) not null,--公告内容
	NoticeTime datetime default(getdate()),--公告时间
	Userid int references Users(Userid) --公告发布人
)
go

--审批表
create table Approve
(
	ApproveID int primary key identity(1,1),--审批ID
	ApproveLevel int not null,--审批级别
	ApproveContent varchar(200),--审批内容
	ApproveTime datetime default(getdate()),--审批时间
	Userid int references Users(Userid) --申请人
)
go



--登记表数据插入
insert grade values('买家')
insert grade values('卖家')
insert grade values('供应商')
insert grade values('平台管理')
--	select* from grade


--用户表数据插入
insert Users values('张三','123456',default,1,default)
insert Users values('李四','123456',1324,2,default)
insert Users values('王五','123456',1324,1,1)
insert Users values('麻六','123456',10000,3,default)
insert Users values('赵涵','123456',10000,3,default)
insert Users values('侯珂','123456',10000,2,default)
insert Users values('刘翔荣','123456',10000,3,default)
insert Users values('卢起家','123456',10000,2,default)
insert Users values('郭丙远','123456',10000,2,default)
insert Users values('王洋','123456',10000,4,default)
--查询
--	select * from Users

--个人信息
insert information values('12345678910','123456@qq.com',1)
insert information values('12345678910','123456@qq.com',2)
insert information values('12345678910','123456@qq.com',3)
insert information values('12345678910','123456@qq.com',4)
insert information values('12345678910','123456@qq.com',5)
insert information values('12345678910','123456@qq.com',6)
insert information values('12345678910','123456@qq.com',7)
insert information values('12345678910','123456@qq.com',8)
insert information values('12345678910','123456@qq.com',9)
insert information values('12345678910','123456@qq.com',10)
--	select * from information


--收货表信息插入
insert Receiving values('张三','河南省郑州市金水区花园路136号','12345678911',1)
insert Receiving values('张三','河南省郑州市管城回族区1号','12345678912',2)
insert Receiving values('张三','河南省郑州市经开区136号','12345678913',3)
insert Receiving values('张三','河南省郑州市金水区136号','12345678914',4)
insert Receiving values('张三','河南省郑州市金水区文化路136号','12345678915',5)
insert Receiving values('张三','河南省郑州市二七区136号','12345678916',6)
insert Receiving values('张三','河南省郑州市二七区XX路130号','12345678917',7)
insert Receiving values('张三','河南省郑州市经开区XX路16号','12345678918',8)
insert Receiving values('张三','河南省郑州市管城回族区XX路16号','12345678919',9)
insert Receiving values('张三','河南省郑州市二七区XX路136号','12345678920',10)
--select * from Receiving


--卖家商品信息
insert Sproduct values('卡西欧','简约奢华','5300','../img/kxo/14.gif')
insert Sproduct values('卡西欧','简约奢华','5200','../img/kxo/13.gif')
insert Sproduct values('卡西欧','简约奢华','5400','../img/kxo/5.gif')
insert Sproduct values('阿玛尼','简约奢华','5800','../img/amn/6.gif')
insert Sproduct values('阿玛尼','简约奢华','5800','../img/amn/7.gif')
insert Sproduct values('阿玛尼','简约奢华','5800','../img/amn/1.gif')
insert Sproduct values('浪琴','简约奢华','3300','../img/lq/4.gif')
insert Sproduct values('浪琴','简约奢华','3900','../img/lq/5.gif')
insert Sproduct values('劳力士','简约奢华','15300','../img/lls/5.gif')
insert Sproduct values('劳力士','简约奢华','35300','../img/lls/6.gif')
--select * from Sproduct

--订单信息
insert List values(1,2,1)
insert List values(2,3,2)
insert List values(3,1,3)
insert List values(4,2,4)
insert List values(5,1,5)
insert List values(6,3,6)
insert List values(7,2,7)
insert List values(8,1,8)
insert List values(9,2,9)
insert List values(10,3,10)
--select * from List
--公告表插入
insert into Notice values('管理员公告','每时每刻网站正式上线',default,10)
insert into Notice values('管理员公告','请各位买家卖家供货商遵守平台规则',default,10)
insert into Notice values('供货商公告','货源上新，多多关注',default,4)
insert into Notice values('供货商公告','货源又上新，多多留意',default,5)
insert into Notice values('供货商公告','货源又又上新，多多注意',default,7)
insert into Notice values('卖家公告','店铺上新，欢迎选购',default,2)
insert into Notice values('卖家公告','店铺上新，欢迎选购',default,6)
insert into Notice values('卖家公告','店铺上新，欢迎选购',default,6)
insert into Notice values('卖家公告','店铺上新，欢迎选购',default,8)
insert into Notice values('卖家公告','店铺上新，欢迎选购',default,9)
--select * from Notice


--审批表插入
insert into Approve values(2,'申请成为卖家',default,1)
insert into Approve values(2,'申请成为卖家',default,1)
insert into Approve values(2,'申请成为卖家',default,3)
insert into Approve values(2,'申请成为卖家',default,3)
insert into Approve values(2,'申请成为卖家',default,3)
insert into Approve values(3,'申请成为供货商',default,2)
insert into Approve values(3,'申请成为供货商',default,6)
insert into Approve values(3,'申请成为供货商',default,6)
insert into Approve values(3,'申请成为供货商',default,8)
insert into Approve values(3,'申请成为供货商',default,9)
--select * from Approve


--评论信息
insert comment values('美观大方',default,2) 
insert comment values('美观大方',default,4) 
insert comment values('美观大方',default,5) 
insert comment values('美观大方',default,6) 
insert comment values('美观大方',default,3) 
insert comment values('美观大方',default,7)  
insert comment values('美观大方',default,9) 
insert comment values('美观大方',default,8) 
insert comment values('美观大方',default,1) 
insert comment values('美观大方',default,10) 
--select * from comment

--供应商商品表插入
insert into ProviderProduct values('卡西欧-白金款','高端大气，你值得拥有','2499','../img/kxo/1.gif',4)
insert into ProviderProduct values('卡西欧-黑金款','高端大气，你值得拥有','2699','../img/kxo/2.gif',4)
insert into ProviderProduct values('卡西欧-紫金款','高端大气，你值得拥有','2899','../img/kxo/3.gif',4)
insert into ProviderProduct values('卡西欧-时尚款','高端大气，你值得拥有','2799','../img/kxo/5.gif',5)
insert into ProviderProduct values('卡西欧-复古款','高端大气，你值得拥有','2599','../img/kxo/6.gif',5)
insert into ProviderProduct values('卡西欧-大气款','高端大气，你值得拥有','2399','../img/kxo/7.gif',5)
insert into ProviderProduct values('卡西欧-奢华款','高端大气，你值得拥有','2199','../img/kxo/8.gif',7)
insert into ProviderProduct values('卡西欧-风尚款','高端大气，你值得拥有','3199','../img/kxo/9.gif',7)
insert into ProviderProduct values('卡西欧-情侣款','高端大气，你值得拥有','3399','../img/kxo/10.gif',7)
insert into ProviderProduct values('卡西欧-悦动款','高端大气，你值得拥有','3599','../img/kxo/11.gif',7)
--select * from ProviderProduct