
use ak10
delimiter //
create procedure checkShipchanges(IN no_days int ,OUT cost  int)
begin
	case no_days
    when 1 then set  cost=20;
    when 2 then set cost=15;
    when 3 then  set cost=10;
    else set cost=5;
    end case;
end;//

call checkShipchanges(2,@Shipping_cost);
select @Shipping_cost;