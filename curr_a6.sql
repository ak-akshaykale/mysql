use ak10;

select * from employee;

delimiter //
create procedure showRecord(in sal int)
begin
	declare err int default 0;
    declare nm varchar(30) default '';
    declare sall int default 0;
    
	declare curr cursor for select name, salary from employee where salary<sal;
    declare exit handler for not found set err=-1;
    open curr;
    repeat
		fetch curr into nm,sall;
        select nm,sall;
    until err=-1
    end repeat;
end;//

call showRecord(50000);