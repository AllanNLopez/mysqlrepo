/*
	Calculador de ahorro mensual. 
*/
drop table db_demo.transacciones; 

/*	Crear una tabla para crear registros */
CREATE TABLE db_demo.transacciones (
    numTransaccion INT AUTO_INCREMENT PRIMARY KEY,
    Monto DECIMAL(10, 2),
    Saldo DECIMAL(10, 2),
    Promedio DECIMAL(10, 2),
    Devengado DECIMAL(10, 2),
    Total DECIMAL(10, 2)
);

select * from db_demo.transacciones;

delimiter //
drop procedure db_demo.sp_simulador_ahorro;

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
    declare v_contr int default 0; 
    declare v_monto decimal(10,2) default 0;
    declare v_tasa_interes decimal(10,2) default 0;
    declare v_saldo 	 decimal(10,2) default 0;
    declare v_promedio 	 decimal(10,2) default 0; 
    declare v_devengado  decimal(10,2) default 0; 
    declare v_total 	 decimal(10,2) default 0; 
    declare v_acumulador decimal(10,2) default 0;
    
    set v_meses = p_meses; #Cantidad de meses = cantidad de repeticiones
    set v_monto = p_monto; #
    
    #ciclo de repeticion 
    WHILE v_contr < v_meses DO  
        set v_saldo = v_saldo + v_monto;       
        
         #crear registro
        insert into db_demo.transacciones ( Monto,	Saldo,  Promedio,	Devengado,	Total)
        values(v_monto, v_saldo, v_promedio, v_devengado, v_total);
        
        #variable de control
        set v_contr = v_contr + 1; 
    END WHILE; 
     
end;


call db_demo.sp_simulador_ahorro( 350, 5 , 0); 
 
select  * from db_demo.transacciones; 







