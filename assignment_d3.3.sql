use ak10;
delimiter //
create procedure create_table()
begin
	create table emp_test(e_id integer(10),e_name varchar(10),e_joining_date date);
    select "empt_test created";
end;//

call create_table();
desc emp_test;