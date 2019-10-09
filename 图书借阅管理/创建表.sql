use 图书借阅管理
create table 借阅人
(姓名 char(9)not null,
证件号 char(15)primary key,
年龄  int,
院系 char(15)
);

create table 图书
(图书编号 char(10) primary key,
数量 int,
位置 char(15),
类别 char(10)
);

create table 借阅登记
(姓名 char(9)not null,
证件号 char(15),
图书编号 char(10),
借书日期 date,
还书日期 date,
--primary key(证件号,图书编号),
--foreign key(证件号)references 借阅人(证件号),
primary key(图书编号),
foreign key(图书编号)references 图书(图书编号)
);
go