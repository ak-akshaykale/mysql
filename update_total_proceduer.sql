use ak10;
delimiter ..
create procedure update_total(IN dnno int)
begin
	update dept_sal set totalsalary=(select sum(salary) from employee where dno=dnno) where dnumber=dnno;
end; ..
UPDATE dept_sal 
SET 
    totalsalary = 0
WHERE
    dnumber = 2;
call update_total(3);
SELECT 
    *
FROM
    employee;
SELECT 
    *
FROM
    dept_sal;	

UPDATE dept_sal 
SET 
    totalsalary = 0