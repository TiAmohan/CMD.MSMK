use master
go
use EveryTime
go
--管理员数据存储

--流量查询
--人数查询
create proc selectnumber(@num int=0)
as
	declare @sql varchar(max)
	 set @sql='select COUNT(*) from Users where 1=1' 
	if @num<>0
	begin
			set @sql+=' and Usergrade='+CONVERT(varchar, @num)
		exec (@sql)
	end
	else
		exec (@sql)
go
--	exec selectnumber 0

--订单数查询
create proc Listnumber(@num int=0)
as
	declare @sql varchar(max)
	 set @sql='select COUNT(*) from List where 1=1' 
	if @num<>0
	begin
			set @sql+=' and Liststate='+CONVERT(varchar, @num)
		exec (@sql)
	end
	else
		exec (@sql)
go
--	exec Listnumber 

--营销额查询
create proc Listsale(@num int=0)
as
	declare @sql varchar(max)
	 set @sql='
SELECT   cast(SUM( dbo.Sproduct.Sproductprice) as decimal(9,2))
FROM      dbo.List INNER JOIN
                dbo.Users ON dbo.List.Userid = dbo.Users.Userid INNER JOIN
                dbo.Sproduct ON dbo.List.Sproductid = dbo.Sproduct.Sproductid where 1=1' 
	if @num<>0
	begin
			set @sql+=' and Usergrade ='+CONVERT(varchar, @num)
		exec (@sql)
	end
	else
		exec (@sql)
go
--	exec Listsale 1
--select cast(SUM( dbo.Sproduct.Sproductprice) as decimal(9,2)) FROM      dbo.List INNER JOIN
--                dbo.Users ON dbo.List.Userid = dbo.Users.Userid INNER JOIN
--                dbo.Sproduct ON dbo.List.Sproductid = dbo.Sproduct.Sproductid where 1=1
--top5销量
create proc ListTop
as
	select Sproductname,COUNT(Sproductname) as value from List left join Sproduct on List.Sproductid=Sproduct.Sproductid group by Sproductname
go
--	exec ListTop
--条件查询列表内容	
--	根据	名字、等级、状态
create proc UsersList(@Username varchar(50)='',@Usergrade int=0,@UsersState int=-1)
as
	declare @sql varchar(max)
	 set @sql='select * from Users,grade where Usergrade=gradeId and Username like ''%'+@Username+'%'''
	 if @Usergrade<>0
		set @sql+=' and Usergrade ='+CONVERT(varchar,@Usergrade)
	 if @UsersState<>-1
		set @sql+=' and UsersState ='+CONVERT(varchar,@UsersState)
	 prInt (@sql)
	 exec (@sql)
go
--	exec UsersList '',0,-1


--查询级别类型
create proc gradeList
as
	select * from grade
go
--	exec gradeList

--修改用户状态
create proc UsersStateupdate(@UsersState int,@Userid int)
as
	update Users set UsersState=@UsersState where Userid=@Userid
go
--	exec UsersStateupdate 1,1
--	select * from Users

--分页查询
create procedure Userspaging 
(@pagesize int,
@pageindex int,
 @docount bit )
as
if(@docount=1)
	select count(*) from Users,grade where usergrade=gradeid
else
begin
with temptbl as (
	SELECT ROW_NUMBER() OVER (ORDER BY Userid asc)AS Row, * from Users,grade O  where usergrade=gradeid)
	 SELECT * FROM temptbl where Row between ((@pageindex-1)*@pagesize+1) and ((@pageindex-1)*@pagesize+@pagesize)
end
go

--	exec Userspaging 5,1,0

--公告查询
create proc NoticeList(@NoticeState int=0)
as
	if @NoticeState<>0
		select * from Notice where NoticeState=1  order by NoticeID desc 
	else
		select * from Notice where NoticeState=0  order by NoticeID desc 
go
--	exec NoticeList

--添加公告
create proc NoticeInsert(@NoticeTitle varchar(50),@NoticeContent varchar(200))
as
	insert  Notice values(@NoticeTitle,@NoticeContent,default,4,default)
go
--	exec NoticeInsert '测试','内容'

--删除公告软删除
create proc NoticeDeleteState(@NoticeID int)
as
	update Notice set NoticeState=1 where NoticeID=@NoticeID 
	--delete Notice where NoticeID=@NoticeID
go
--	exec NoticeDelete 1

--删除公告删除数据
create proc NoticeDel(@NoticeID int)
as
	delete Notice where NoticeID=@NoticeID
go
--	exec NoticeDel 1

--审批表
--审批查询
create proc ApproveList(@ApproveState int=0)
as
if	@ApproveState<>0
	SELECT   dbo.Approve.*, dbo.Users.*, dbo.grade.*
FROM      dbo.Approve INNER JOIN
                dbo.Users ON dbo.Approve.Userid = dbo.Users.Userid INNER JOIN
                dbo.grade ON dbo.Users.Usergrade = dbo.grade.gradeId where ApproveState=1
else
SELECT   dbo.Approve.*, dbo.Users.*, dbo.grade.*
FROM      dbo.Approve INNER JOIN
                dbo.Users ON dbo.Approve.Userid = dbo.Users.Userid INNER JOIN
                dbo.grade ON dbo.Users.Usergrade = dbo.grade.gradeId where ApproveState=0
go
--	exec ApproveList

--级别修改
create proc ApproveUpdate(@ApproveID int,@ApproveLevel int,@Userid int)
as
	update Users set Usergrade=@ApproveLevel where Userid=@Userid
	update Approve set ApproveState=1,processingtime=getdate() where ApproveID=@ApproveID
go
--	exec ApproveUpdates 
