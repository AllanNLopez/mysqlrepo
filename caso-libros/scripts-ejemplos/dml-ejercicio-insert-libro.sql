/*
	Secuencia de instrucciones para registrar un nuevo registro
    Titulo	:		Prision Verde
	ISBN	:		9789992663387
	Autor	:		Ramon Amaya Amador
	Editorial	:	Editorial Ramon Amaya Amador
	publicado	:	2010
	paginas		:	300
	Idioma		:	Español
	Genero		:	Novela
	Categoria	:	Literatura
*/
 

set @nom_editorail = "Editorial Ramon Amaya Amador"; 

# Crear un registro en la tabla editoriales
select * from tbleditoriales where nombre like "%Ramon Amaya%";

insert into tbleditoriales (codEditorial, nombre, pais, ciudad)
values(200, @nom_editorail, "Honduras", "El Progreso"); 

#crear un registro en la tabla generos 
select * from tblgeneros where nombre like "%novela%";

insert into tblgeneros (codgenero, nombre ) 
values(20020, "NOVELA");

#crear un registro en la tabla autores
select * from tblautores where nombres like "%Ramon%";

insert into tblautores (
	codautor, nombres, apellidos, pseudonimo, nacionalidad, lugarnacimiento, fechanacimiento
) values (
	100, "Ramon", "Amaya Amador", "Ramon Amaya Amador", "Hondureña", "Olanchito, Yoro", "1916-04-29"
);

#crear el registro del libro
select * from tbllibros where codLibro = 1000; 

insert into tbllibros (
	codlibro, titulo, isbn, numpaginas, categoria, idiomaorigen, idiomapublicacion, lugarpublicacion, fechapublicacion, codeditorial, codgenero
) values (
	1000, "Prision Verde", "9789992663387", 300, "Literatura", "español", "español", "Yoro", 
    str_to_date("2010-01-01","%Y-%m-%d"), 200 ,20020
);

/*
select str_to_date("2010-01-01","%Y-%m-%d") fecha ; 
select date_format(curdate(), "%Y-%m-%d") f ;
*/

#crear registro en la tabla autores por libro
select * from tblautoresxlibro where codAutor = 100;

insert into tblautoresxlibro (codautor, codlibro) values (100,1000);


commit;
