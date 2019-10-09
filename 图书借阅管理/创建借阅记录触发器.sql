create trigger tr借阅记录
on 借阅登记
after insert 
as
begin transaction 

if not exists ( 
select 数量 
from 图书 
where 图书编号 in (select 图书编号 from inserted) 
) 
begin 
raiserror('该书不存在，不能借阅！',16,1) 
rollback
return
end  

if exists ( 
select 数量 
from 图书
where 图书编号 in (select 图书编号 from inserted) and
数量 <= 0

) 
begin
raiserror('该书已被借完，不能再借！',16,1) 
rollback
return
end

declare @借书日期 datetime
select @借书日期=借书日期 from inserted
update 借阅登记
set 还书日期=dateadd("m",2,@借书日期);

declare @图书编号 char(10)
select @图书编号=图书编号 from inserted
update 图书
set 数量=数量-1
where 图书编号=@图书编号
commit transaction
go

--drop trigger tr借阅记录