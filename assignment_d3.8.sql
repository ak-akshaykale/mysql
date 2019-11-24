use ak10;

delimiter ..
create procedure displayTop5()
begin
	select id as employee_number, name as employee_name, salary from employee order by salary desc limit 5; 
end;..

call displayTop5();
select * from employee;