use ak10;
delimiter //
create procedure addRow()
begin
	declare maxx int default 0;
    select MAX(dnumber) into maxx from department;
    set maxx=maxx+1;
    insert into department values(maxx,"Education",NULL);
end;//

call addRow();
select * from department;