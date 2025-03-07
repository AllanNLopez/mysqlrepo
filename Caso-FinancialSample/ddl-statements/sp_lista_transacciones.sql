/*
	Procedimiento almacenado que implementa un cursor para crear un reporte html
    con las transacciones de una tabla.
*/
delimiter //
drop procedure sp_lista_transacciones; 

Delimiter //
CREATE PROCEDURE sp_lista_transacciones( in pcant int)
BEGIN #Inicio de procedimiento
    declare v_records int default 0; 
    declare v_max int default 100; 
    declare v_text varchar(4000) default "";
    #Variables de la consulta.
	declare v_transaccion 	int default 1; 
    declare v_monto 		decimal(10,2) default 0;
    declare v_saldo 	 	decimal(10,2) default 0;
    declare v_promedio 	 	decimal(10,2) default 0; 
    declare v_devengado  	decimal(10,2) default 0;
    declare v_total 	 	decimal(10,2) default 0;    
    #Declarar Cursor    
	DECLARE c_transacciones CURSOR FOR
		SELECT numTransaccion, Monto, Saldo, Promedio, Devengado, Total from db_demo.transacciones LIMIT 12;
    
    SELECT count(*) into v_records from db_demo.transacciones;  
    
    OPEN c_transacciones;
		WHILE v_records > 0 DO 
			fetch c_transacciones 
				into v_transaccion, v_monto, v_saldo, v_promedio, v_devengado, v_total ;
			
            set v_text = concat(v_text, 
									"<tr>", 
										"<td>", v_transaccion, "</td>",
										"<td>", v_monto, "</td>", 
										"<td>", v_saldo, "</td>",
										"<td>", v_promedio, "</td>",
										"<td>", v_devengado, "</td>",
										"<td>", v_total, "</td>",
                                    "</tr>");
			#Variable de control del ciclo
			set v_records = v_records - 1;
		END WHILE; 
    CLOSE c_transacciones;
    select v_text lista ; 
END; #Fin de procedimiento


call sp_lista_transacciones(4);
