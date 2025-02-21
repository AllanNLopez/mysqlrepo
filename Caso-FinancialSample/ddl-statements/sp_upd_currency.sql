
delimiter // 
drop procedure sp_upd_currency; 

DELIMITER //
CREATE procedure sp_upd_currency(
	in p_tasa decimal(15,6) ,
    in p_currency_id int 
)
BEGIN	
    UPDATE db_demo.currencies set exchange_rate = p_tasa 
    where currency_id = p_currency_id;
    commit;
END;

/* 1 USD = 149.86Y  */

Call db_demo.sp_upd_currency(149.40, 9)