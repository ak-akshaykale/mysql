use ak10;

select * from employee;
alter table employee add column ann_sal int(12) default 0;

delimiter //
create procedure save_annsal()
begin
	declare err int default 0;
	declare eid int default 0;
    declare esal int default 0;
    declare ann int default 0;
    declare enm varchar(30) default '';
    declare curr cursor for select id,name,salary from employee;
    declare exit handler for not found set err=1;
    open curr;
    repeat
    fetch curr into eid,enm,esal;
		set ann=esal*12;
        update employee set ann_sal=ann where id=eid and name=enm;
    until err=1
    end repeat;
end;//

call save_annsal();
select * from employee;