use ak10;

delimiter //
create function user_annual_comp(p_no int) returns int
begin
	declare annual_comp int default 0;
    declare sal int default 0;
    declare ecom int default 0;
	select salary, comp into sal, ecom from employee where id=p_no;
    set annual_comp=(sal+ecom)*12;
    return annual_comp;
end;//

select user_annual_comp(2);

select * from employee;

alter table employee add column job char(20);

update employee set join_date="1999-09-08" where id =1
SET GLOBAL log_bin_trust_function_creators = 1;