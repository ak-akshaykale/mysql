use ak10;
delimiter //
create procedure count_vc(in str char(50),OUT res char(30))
begin
	declare cv int default 0;
    declare cc int default 0;
    declare i int default 0;
    while i<=length(str) do
     if strcmp(substring(str,i,1),"a")=0 or strcmp(substring(str,i,1),"e")=0 or strcmp(substring(str,i,1),"i")=0 or strcmp(substring(str,i,1),"o")=0 or strcmp(substring(str,i,1),"u")=0 then
		set cv=cv+1;
	else
		set cc=cc+1;
     end if;
     set i=i+1;
    end while;
    set res=concat(concat("Vowels: ",cv),"
    Consonants: ",cc);
end;//

call count_vc("akshaye",@rs);
select @rs;
select substring("sassdasfd",3,1);