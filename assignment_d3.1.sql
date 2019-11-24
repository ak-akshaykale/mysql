delimiter .
create procedure cal_asmd(IN a int, in b int, inout op int)
begin
	case op
    when 1 then set op=(a+b);
    when 2 then set op=(a-b);
    when 3 then set op=(a*b);
    when 4 then set op=(a/b);
    else set op=0;
    end case;
end;.

#asmd - 1234
set @result=1;
call cal_asmd(12,13,@result);
select @result;