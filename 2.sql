use ak10;

delimiter //
create procedure cur_hold()
begin
	declare n_dn int default 0;
    declare err int default 0;
    declare cur_nm cursor for select dno from employee;
    declare exit handler for not found set err=1;
    
    open cur_nm;
    repeat
    fetch cur_nm into n_dn;
		insert into dept_emp select * from employee where dno=n_dn;
    until err=1
    end repeat;
end;//

create table dept_emp as select * from employee where 1=2;
select count(*) from employee;

call cur_hold();
select * from dept_emp;
select * from employee where dno=(select dno from employee);