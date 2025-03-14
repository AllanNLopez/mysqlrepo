/*
	Un trigger es un objeto de base de datos con nombre que está asociado 
    con una tabla y que se activa cuando ocurre un evento particular para la tabla.
*/

#Crear una tabla de historial de cambios 
create table curr_hist (
	er_old double, 
    er_new double, 
    curr_id int, 
    update_date datetime);

    
delimiter //
drop if exists TRIGGER tgr_checkupd ;

delimiter //
CREATE TRIGGER tgr_checkupd AFTER UPDATE ON currencies
FOR EACH ROW
BEGIN 
	insert into curr_hist(
		er_old, 
        er_new, 
        curr_id, 
        update_Date
	)
	values( 
		OLD.exchange_rate, 
        NEW.exchange_rate, 
        NEW.currency_id, 
        now() 
	) ;
END;
//

/*
	
*/
select * from curr_hist;
select * from currencies where currency_id = 1;

update currencies set exchange_rate = 1 where currency_id = 3; 


