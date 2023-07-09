/*


*/

SELECT 
	cod_cliente, 
    numeroDNI,
    concat(nombres, " ", apellidos) nombrecompleto, 
    edad 
FROM bd_recu.tbl_clientes
where substr(numerodni,5,4) between 1985 and 1995;