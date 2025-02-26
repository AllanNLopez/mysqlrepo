
/*
	Actualizar la tasa solo si, el valor de tasa de cambio
    es no nulo y es mayor que cero. De lo contrario no hacer cambios. 
*/

delimiter // 
drop procedure sp_upd_currency; 

DELIMITER //
CREATE procedure sp_upd_currency(
	in p_tasa decimal(15,6) ,
    in p_currency_id int 
)
BEGIN	
	IF p_tasa > 0 and p_tasa is not null THEN
		UPDATE db_demo.currencies set exchange_rate = p_tasa  
        where currency_id = p_currency_id;
		commit;
	ELSE
		select "No se puede actualizar";
	END IF;
END;

Call db_demo.sp_upd_currency(149.40, 9)