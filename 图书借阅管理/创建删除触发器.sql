create trigger de��Ա
on ������
for delete
as

declare @ͼ���� char(10)
select @ͼ����=ͼ���� 
from ���ĵǼ� b,deleted d 
where b.֤����=d.֤����

update ͼ��
set ����=����+1
where ͼ����=@ͼ����


delete ���ĵǼ�
from ���ĵǼ� br,deleted d
where br.֤����=d.֤����

go