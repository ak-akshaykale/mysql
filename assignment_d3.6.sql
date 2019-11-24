use ak10;
select * from employee;

delimiter //
create procedure insert_emp(in eid int, in ename char(30), in sid int,in sal int,in bd date,in dptno int)
begin
	declare log varchar(50) default '';
	insert into employee values(eid,ename,sid,sal,bd,dptno);
    set log="New record Inserted\n\n";
    select * from employee where id=eid;
    update employee set salary=1000 where name=ename;
    select * from employee where id=eid;
   # delete from employee where id=eid;
   #set log=concat(log,"\n\n\nrecord is deleted");
  #  select log;
end;//

select * from employee;
call insert_emp(6,"Anil",3,4500,"2011-07-08",1);