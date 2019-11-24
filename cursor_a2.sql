use ak10;

delimiter //
create procedure cur_hold()
begin
	declare n_dn int default 0;
    declare err int default 0;
    declare cur_nm cursor for select dnumber from department;
    declare exit handler for not found set err=1;
    
    open cur_nm;
    repeat
    fetch cur_nm into n_dn;
		select count(*) into @ns from employee where dno=n_dn;
		if @ns>1 then
        insert into dept_emp select * from employee where dno=n_dn; 
        end if;
    until err=1
    end repeat;
end;//

select name from employee group by dno;

create table dept_emp as select * from employee where 1=2;
select *from employee;
desc employee;
call cur_hold();
select * from dept_emp;
alter table dept_emp
add column ann_salary int(12);
truncate table dept_emp;
insert into employee values(10,"Sanju",6,9876,"2019-06-06",4,0,"2019-01-04","Worker",NULL);