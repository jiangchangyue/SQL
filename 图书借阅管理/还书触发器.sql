create trigger re还书记录
on 借阅登记
for delete 
as
begin
declare @图书编号 char(10)
select @图书编号=图书编号 from deleted
update 图书
set 数量=数量+1
where 图书编号=@图书编号
end
go 
