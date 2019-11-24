use ak10;

delimiter //
create procedure display()
begin
	declare err int default 0;
    declare ename varchar(30);
    declare esal int(12);
	declare cur_dis cursor for select name, salary from employee where job="Clerk";
    declare exit handler for not found set err=1;
    open cur_dis;
    #create temporary table temp as select name, salary from employee where 1=2;
    repeat
    fetch cur_dis into ename,esal;
		#insert into temp values(ename,esal);
        select ename,esal;
    until err=1
    end repeat;
    #select * from temp;
end;//

create temporary table temp as select name, salary from employee where 1=2;
insert into temp values("adad",32265);
drop table temp;
select * from temp;

select name, salary from employee where job="Clerk";


call display();