use 图书借阅管理

insert into 图书 values('0001',5,'一楼2室','教育');
insert into 图书 values('0002',2,'二楼3室','科技');
insert into 图书 values('0003',1,'一楼4室','金融');
insert into 图书 values('0004',0,'二楼2室','军事');
insert into 图书 values('0005',3,'一楼2室','小说');
insert into 图书 values('0006',0,'一楼1室','文学');


insert into 借阅人 values('张三','2012001',19,'CS');
insert into 借阅人 values('李勇','2012002',20,'CS');
insert into 借阅人 values('刘晨','2012003',21,'MA');
insert into 借阅人 values('王敏','2012004',20,'MA');
insert into 借阅人 values('张立','2012005',18,'IS');

insert into 借阅登记 values('张三','2012001','0002','20190108','20190308');
insert into 借阅登记 values('李勇','2012002','0003','20190507','20190707');
insert into 借阅登记 values('王敏','2012004','0004','20190415','20190615');

go