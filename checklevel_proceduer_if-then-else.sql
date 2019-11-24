use ak10;

delimiter //
create procedure checkLevel(IN emp_id int,OUT emp_lv char(30))
begin
	declare sal int(15) default 0;
    select salary into sal from  employee where id=emp_id;
    if  sal>100000 then set emp_lv="Level 1";
    elseif sal>=50000 then set emp_lv="Level 2";
    else set emp_lv="Level  3";
    end if;
end;//

call checkLevel(51,@lv);
select @lv;