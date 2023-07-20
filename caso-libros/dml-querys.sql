/*
	Sentencias DML
*/

select * from bd_biblios.tbleditoriales  where codEditorial = 100201 limit 500;

delete from bd_biblios.tbleditoriales  where codEditorial = 100; 
commit; 

insert into bd_biblios.tbleditoriales 
		( codeditorial, nombre, pais, ciudad) 
values  (100, 'Editorial Guaymuras','Honduras','Tegucigalpa');


update bd_biblios.tbleditoriales set pais = "Inglaterra" where codEditorial = 100201; 


/*
	Consultas SQL
*/

select * from bd_biblios.tbllibros
where 	categoria = 'literatura'
	AND idiomaOrigen != 'INGLES';

/*
	Funciones matematicas de agregacion
    count, sum, avg, max, min 
*/

select categoria, idiomaOrigen,  count(*) 
from bd_biblios.tbllibros
group by categoria, idiomaOrigen
order by categoria desc;
