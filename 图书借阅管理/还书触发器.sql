create trigger re�����¼
on ���ĵǼ�
for delete 
as
begin
declare @ͼ���� char(10)
select @ͼ����=ͼ���� from deleted
update ͼ��
set ����=����+1
where ͼ����=@ͼ����
end
go 
