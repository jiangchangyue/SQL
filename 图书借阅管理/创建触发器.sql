Create Trigger tru借阅
On 借阅人
for Update
As
if Update(证件号)
begin
Update 借阅登记
Set 证件号=i.证件号
From 借阅登记 br , Deleted   d ,Inserted i
Where br.证件号=d.证件号
end