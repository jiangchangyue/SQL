create trigger tr���ļ�¼
on ���ĵǼ�
after insert 
as
begin transaction 

if not exists ( 
select ���� 
from ͼ�� 
where ͼ���� in (select ͼ���� from inserted) 
) 
begin 
raiserror('���鲻���ڣ����ܽ��ģ�',16,1) 
rollback
return
end  

if exists ( 
select ���� 
from ͼ��
where ͼ���� in (select ͼ���� from inserted) and
���� <= 0

) 
begin
raiserror('�����ѱ����꣬�����ٽ裡',16,1) 
rollback
return
end

declare @�������� datetime
select @��������=�������� from inserted
update ���ĵǼ�
set ��������=dateadd("m",2,@��������);

declare @ͼ���� char(10)
select @ͼ����=ͼ���� from inserted
update ͼ��
set ����=����-1
where ͼ����=@ͼ����
commit transaction
go

--drop trigger tr���ļ�¼