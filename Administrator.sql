use EveryTime
go
--����Ա���ݴ洢

--������ѯ
--������ѯ
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

--��������ѯ
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

--Ӫ�����ѯ
create proc Listsale(@num int=0)
as
	declare @sql varchar(max)
	 set @sql='
SELECT   SUM( dbo.Sproduct.Sproductprice)
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

--top5����
create proc ListTop
as
	select Sproductname,COUNT(Sproductname) as value from List left join Sproduct on List.Sproductid=Sproduct.Sproductid group by Sproductname
go
--	exec ListTop
--������ѯ�б�����	
--	����	���֡��ȼ���״̬
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


--��ѯ��������
create proc gradeList
as
	select * from grade
go
--	exec gradeList

--�޸��û�״̬
create proc UsersStateupdate(@UsersState int,@Userid int)
as
	update Users set UsersState=@UsersState where Userid=@Userid
go
--	exec UsersStateupdate 1,1
--	select * from Users

--��ҳ��ѯ
create procedure Userspaging 
(@pagesize int,
@pageindex int,
@docount bit,@Username varchar(50)='',@Usergrade int=0,@UsersState int=-1)
as
declare @sql varchar(max)

if(@docount=1)
select count(*) from Users,grade where usergrade=gradeid
else
begin
 set @sql='with temptbl as (
SELECT ROW_NUMBER() OVER (ORDER BY Userid asc)AS Row, * from Users,grade O  where usergrade=gradeid)
 SELECT * FROM temptbl where Row between '+CONVERT(varchar,(@pageindex-1)*@pagesize+1)+' and '+CONVERT(varchar,(@pageindex-1)*@pagesize+@pagesize)+' and Username like ''%'+@Username+'%'''
 if @Usergrade<>0
		set @sql+=' and Usergrade ='+CONVERT(varchar,@Usergrade)
	 if @UsersState<>-1
		set @sql+=' and UsersState ='+CONVERT(varchar,@UsersState)
	 prInt (@sql)
	 exec (@sql)
end
go

--	exec Userspaging 5,1,1