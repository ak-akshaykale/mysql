delimiter //
create procedure qb(in no int,out qbis int)
begin
	set qbis=no*no*no;
end;//
call qb(3,@ans);
select @ans;