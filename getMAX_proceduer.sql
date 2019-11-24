use ak10;

delimiter //
create procedure getMAX(OUT maxx int)
begin
	select MAX(salary) into maxx from employee;
end;//

call getMAX(@max);
select @max;