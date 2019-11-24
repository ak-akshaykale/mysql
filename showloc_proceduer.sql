delimiter //
create procedure showloc(INOUT locn char(50))
begin
	select concat(dname," department is located at ",loc) into locn from department where dname=locn; 
end;//

set @loc="Research";
call showloc(@loc);
select @loc;