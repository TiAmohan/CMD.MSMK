use EveryTime
go
--查询账号密码  根据账号密码进行登录
if exists(select * from sys.procedures where name='Userslogin')
drop proc Userslogin
go
create proc Userslogin(@Username varchar(50),@Userpassword varchar(50))
as
	select * from Users where Username=@Username and Userpassword=@Userpassword
go

--	exec Userslgoin '张三','123456'
--根据ID查询
if exists(select * from sys.procedures where name='UsersloginID')
drop proc UsersloginID
go
create proc UsersloginID(@Userid int)
as
	select * from Users where Userid=@Userid
go
--	exec UsersloginID 1