/*
	Funcion que recibe dos parametros y devuele 
    como resultado el producto de ambos.
*/

delimiter //
drop function fn_get_producto;
delimiter //
create function fn_get_producto( p_valor1 double, p_valor2 double)
returns double deterministic 
begin 
	declare producto double; 
    
	set producto = p_valor1 * p_valor2; 
	return producto;
end;



  


