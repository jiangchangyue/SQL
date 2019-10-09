create trigger de人员
on 借阅人
for delete
as

declare @图书编号 char(10)
select @图书编号=图书编号 
from 借阅登记 b,deleted d 
where b.证件号=d.证件号

update 图书
set 数量=数量+1
where 图书编号=@图书编号


delete 借阅登记
from 借阅登记 br,deleted d
where br.证件号=d.证件号

go