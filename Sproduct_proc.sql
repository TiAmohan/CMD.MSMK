use EveryTime
go

--ģ����ѯ
if exists(select * from sys.procedures where name='Sproduct_sel')
drop proc Sproduct_sel
go
create proc Sproduct_sel(@Sproductname varchar(50)='',@Sproductcontent varchar(100)='')
as
declare @sql varchar(max)
 set  @sql='select * from Sproduct where Sproductname like ''%'+@Sproductname+'%'''
 if(@Sproductcontent!='')
 set @sql+=' and Sproductcontent like ''%'+@Sproductcontent+'%'''
 exec(@sql)
go

--exec Sproduct_sel '','�ݻ�'

--���
if exists(select * from sys.procedures where name='Sproduct_ins')
drop proc Sproduct_ins
go
create proc Sproduct_ins @Sproductname varchar(50)='',@Sproductcontent varchar(100)='',@Sproductprice money='',@Sproductimg varchar(100)=''
as
insert into Sproduct values(@Sproductname,@Sproductcontent,@Sproductprice,@Sproductimg)
go

exec Sproduct_ins '����ŷ_�ƽ��','������Ϣ','13245','~/img/kxo/7.gif'

--�޸�
if exists(select * from sys.procedures where name='Sproduct_upt')
drop proc Sproduct_upt
go
create proc Sproduct_upt @Sproductcontent varchar(100)='',@Sproductprice money='',@Sproductid int
as
 update Sproduct set Sproductcontent=@Sproductcontent,Sproductprice=@Sproductprice where Sproductid=@Sproductid
go
exec Sproduct_upt '��Լ�ݻ�','1200',4

--ɾ��
--if exists(select * from sys.procedures where name='Sproduct_del')
--drop proc Sproduct_del
--go
--create proc Sproduct_del @Sproductid int
--as
--delete  from Sproduct where Sproductid=@Sproductid
--go

--exec Sproduct_del 1