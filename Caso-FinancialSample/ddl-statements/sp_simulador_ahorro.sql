/*
	Calculador de ahorro mensual. 
*/
drop table if exists db_demo.transacciones; 

/*	Crear una tabla para crear registros */
CREATE TABLE if not exists db_demo.transacciones (
    numTransaccion INT AUTO_INCREMENT PRIMARY KEY,
    Monto DECIMAL(10, 2),
    Saldo DECIMAL(10, 2),
    Promedio DECIMAL(10, 2),
    Devengado DECIMAL(10, 2),
    Total DECIMAL(10, 2)
);

delimiter //
drop procedure if exists db_demo.sp_simulador_ahorro; 

/*	Crear procedimiento almacenado	*/
delimiter //
create procedure db_demo.sp_simulador_ahorro(
	in p_monto decimal(10,2),
    in p_meses int ,
    in p_tasa_interes decimal(10,2)
)
begin 
	#Declaracion de variables 
    declare v_meses int default 0;  
    declare v_contr int default 1; 
    declare v_monto decimal(10,2) default 0;
    declare v_tasa_interes decimal(10,2) default 0;
    declare v_saldo 	 decimal(10,2) default 0;
    declare v_promedio 	 decimal(10,2) default 0; 
    declare v_devengado  decimal(10,2) default 0; 
    declare v_total 	 decimal(10,2) default 0; 
    declare v_acumulador decimal(10,2) default 0;
    
    set v_meses = p_meses; #Cantidad de meses = cantidad de repeticiones
    set v_monto = p_monto; #
    set v_tasa_interes = p_tasa_interes;  
    #Limpia la tabla de transacciones para no duplicar datos. 
    truncate table db_demo.transacciones; 
    
    #ciclo de repeticion 
    WHILE v_contr <= v_meses DO  
		set v_saldo = v_saldo + v_monto;  
        set v_total = v_total + v_monto;  
        set v_acumulador = v_acumulador + v_total; 
        set v_promedio = v_acumulador/v_contr+1;   
        
        #Calcular un valor de interes devengado trimestral
        if mod(v_contr,3) = 0 then   set v_devengado = v_promedio * v_tasa_interes;
		else  set v_devengado = 0; 
        end if;  
        
        set v_total = v_total + v_devengado; 
        
        #crear registro
        insert into db_demo.transacciones ( Monto,	Saldo,  Promedio,	Devengado,	Total)
        values(v_monto, v_saldo, v_promedio, v_devengado, v_total);
        
        #variable de control
        set v_contr = v_contr + 1; 
    END WHILE;  
end;

#Ejecutar el procedimiento almacenado
call db_demo.sp_simulador_ahorro( 100, 6 , 0.05);  				 
 
select  * from db_demo.transacciones;  
/* Resultado
	numTransaccion, Monto, Saldo, Promedio, Devengado, Total 
	1	100.00	100.00	101.00	0.00	100.00
	2	100.00	200.00	151.00	0.00	200.00
	3	100.00	300.00	201.00	10.05	310.05
	4	100.00	400.00	253.51	0.00	410.05
	5	100.00	500.00	305.02	0.00	510.05
	6	100.00	600.00	356.03	17.80	627.85
*/					




