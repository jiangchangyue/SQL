use ͼ����Ĺ���
create table ������
(���� char(9)not null,
֤���� char(15)primary key,
����  int,
Ժϵ char(15)
);

create table ͼ��
(ͼ���� char(10) primary key,
���� int,
λ�� char(15),
��� char(10)
);

create table ���ĵǼ�
(���� char(9)not null,
֤���� char(15),
ͼ���� char(10),
�������� date,
�������� date,
--primary key(֤����,ͼ����),
--foreign key(֤����)references ������(֤����),
primary key(ͼ����),
foreign key(ͼ����)references ͼ��(ͼ����)
);
go