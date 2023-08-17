/*
	Cada programa almacenado contiene un cuerpo que consiste en una instrucción SQL. 
    Esta declaración puede ser un declaración compuesta por varias declaraciones separadas por punto y coma (;). 
    
    A continuacion un ejemplo de un procedimiento almacenado para agregar automaticamente un detalle 
    si el libro aun no ha sido entregado, si si el ibro esta a tiempo o con retraso en el mes de marzo. 
*/

# Crear un nuevo procedimiento almacenado
delimiter //
CREATE PROCEDURE sp_check_entrega() 
BEGIN 
	
    update bd_biblios.tblcontroluso set detalles = "ENTREGA ANTICIPADA" 
	where   date_format(fechasalida, '%Y%m') = '202303'  
	and fechaentrega < fechaEntrada; 
    
    commit; 
END; 

#----------------------------------------------------------------------------------

# Ejecutar procedimiento almacenado
call bd_biblios.sp_check_entrega(); 

#----------------------------------------------------------------------------------

# Eliminar un proceso almacenado
DROP PROCEDURE IF EXISTS bd_biblios.sp_check_entrega; 

#----------------------------------------------------------------------------------
/*
	variables en procedimientos almacenados. 
*/


delimiter //
CREATE PROCEDURE sp_check_entrega() 
BEGIN 
	#declarar variable para calcular el mes anterior. 
    declare v_mes_anterior datetime default null; 
    declare v_cant_antes int default 0; 
    declare v_cant_despues int default 0; 
    
    #Calcular fecha del mes anterior
    set v_mes_anterior = date_add(curdate() , interval -3 month );    
    
    #obtener la cantidad de casos antes de la ejecucion
    select count(*)  
		into v_cant_antes 
	from bd_biblios.tblcontroluso 
    where date_format(fechasalida, '%Y%m') = date_format(v_mes_anterior, '%Y%m')
    and detalles like "%ENTREGA ANTICIPADA%";
    
    #Actualizar el campo de detalles
    update bd_biblios.tblcontroluso set detalles = "ENTREGA ANTICIPADA" 
	where   date_format(fechasalida, '%Y%m') = date_format(v_mes_anterior, '%Y%m')
	and fechaentrega < fechaEntrada; 
    
    commit; 
    
    #Obtener la cantidad de casos despues de la ejecucion
    select count(*)  
		into v_cantidad_despues 
	from bd_biblios.tblcontroluso 
    where date_format(fechasalida, '%Y%m') = date_format(v_mes_anterior, '%Y%m')
    and detalles like "%ENTREGA ANTICIPADA%";
    
    select v_cantidad_antes antes, v_cantidad_despues despues;     
END; 


/*
    Procedimientos almacenados con parametros
*/

delimiter //
CREATE PROCEDURE sp_check_entrega(
	in p_fecha datetime, 
    p_n_meses int  
) 
BEGIN 
	#declarar variable para calcular el mes anterior. 
    declare v_mes_anterior datetime default null; 
    declare v_fecha datetime; 
    set v_fecha = p_fecha; 
    
    #Calcular fecha del mes anterior
    set v_mes_anterior = date_add( v_fecha , interval -p_n_meses month );    
    
    update bd_biblios.tblcontroluso set detalles = "ENTREGA ANTICIPADA" 
	where   date_format(fechasalida, '%Y%m') = date_format(v_mes_anterior, '%Y%m')
	and fechaentrega < fechaEntrada; 
    
    select p_fecha fecha_parametro, v_mes_anterior fecha_cal;
    
    commit;
END; 

/*
    Ejecutar
*/

call bd_biblios.sp_check_entrega( 
	str_to_date("2023-06-01","%Y-%m-%d")  
); 


