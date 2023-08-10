/*
	Sentencias DML
*/
-- Buscamos el registro con codeditorial = 100 para verificar
select * from bd_biblios.tbleditoriales  
where codEditorial = 100;

-- Eliminamos registros con codeditorial = 100
delete from bd_biblios.tbleditoriales  where codEditorial = 100; 
commit; 

--Insercion de un nuevo registro
insert into bd_biblios.tbleditoriales 
		( codeditorial, nombre, pais, ciudad) 
values  (100, 'Editorial Guaymuras','Honduras','Tegucigalpa');

--Actualizacion de un registro
update bd_biblios.tbleditoriales set pais = "Inglaterra" where codEditorial = 100201; 


/*
	Consultas sql

	Consulta SQL para obtener los libros de la categoria Literatura y que su idioma de origen
	es distinto de ingles.
*/

select * from bd_biblios.tbllibros
where 	categoria = 'literatura'
	AND idiomaOrigen != 'INGLES';

/*
	Funciones matematicas de agregacion
    count, sum, avg, max, min 

	Ejemplo: consulta para realizar un conteo de libros agrupados por categoria e idiomaorigen
	ordenados descendentemente por categoria. 
*/

select categoria, idiomaOrigen,  count(*) 
from bd_biblios.tbllibros
group by categoria, idiomaOrigen
order by categoria desc;


 /*
	Controles de flujo 
 */
 
 select *  from bd_biblios.tblusuarios ; 
 
 
 /*
	Grupos segun edad
    00 - 19		ADOLESCENTE
    20 - 30		JOVEN
    31 - 45		ADULTO JOVEN
    46 - 60		ADULTO 
    61 - 100	ADULTO MAYOR 
 */
  
 
 select 
	codUsuario, nombrecompleto, fechanacimiento, ocupacion, 
    case 
		when EDAD between 0 and 19  then "ADOLESCENTE" 
		when EDAD between 20 and 30  then "JOVEN"
        when EDAD between 31 and 45  then "ADULTO JOVEN"
		else "NO DETERMINADO"
	end as grupo, 
    case
		when lugarOcupacion is null then "no determinado" else lugarocupacion 
	end lugarocupacion , 
    ifnull(lugarocupacion, "indefinido") c 
 from (
	SELECT 
	codUsuario, nombrecompleto, fechanacimiento, ocupacion, null lugarocupacion ,  
     date_format(curdate(),'%Y') - date_format(fechanacimiento,'%Y')  edad
	FROM bd_biblios.tblusuarios  
 ) A;



/*
	3. Análisis de datos con SQL
    
    3.1 Exits y Not Exits 
*/

select * 
from bd_biblios.tbllibros   
where codEditorial in (
	select codEditorial from bd_biblios.tbleditoriales where codEditorial = 100 
);


select * 
from bd_biblios.tbllibros e
where  exists (
	select * from bd_biblios.tbleditoriales i
    where e.codEditorial = i.codEditorial
    and i.codEditorial = 100
);





/*
	Funciones analiticas

*/

select categoria, count(*) from bd_biblios.tbllibros group by categoria; 


select 
	codLibro, titulo, categoria, 
    count(*) over(partition by categoria order by categoria ) conteo_categoria, 
    count(*) over(partition by codlibro order by codlibro) cnt_cod, 
    count(*) over() total , 
    (count(*) over(partition by categoria order by categoria ) / count(*) over() )*100 prop
from bd_biblios.tbllibros;


/*
	Escriba una consulta sql para crear un reporte historico de control de uso de libros. 
    se requiere ver la cantidad de solicitudes realizadas en el mes anterio, 
    tambien incluir la cantidad de usuarios distintos que usaron el libro. 

*/


#create table tblreporteuso as 

insert into tblreporteuso
	select  
		a.aniomes, a.codlibro, b.titulo, b.isbn, a.cant_solicitudes, a.cant_usuarios  
	from ( 
		select 
			 date_format(fechasalida, '%Y%m') aniomes, 
			 codLibro, 
			 count(codlibro) cant_solicitudes, 
			 count(distinct codUsuario) cant_usuarios  
		from tblcontroluso
		where date_format(fechasalida, '%Y%m') = '202304' 
		group by date_format(fechasalida, '%Y%m'), codLibro
		order by count(codlibro) desc 
	) a 
	left join tbllibros b 
	on a.codLibro = b.codLibro 
	ON DUPLICATE KEY UPDATE codlibro = a.codlibro, cant_solicitudes = a.cant_solicitudes; 
 



