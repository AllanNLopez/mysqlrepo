/*
	Variables de usuario: 
    
    Con MySQL se puede almacenar un valor en una variable definida por el usuario en una sentencia y 
    consultarlo más adelante en otra sentencia. Las variables de usuario se escriben como @var_name, 
    donde el nombre de la variable consta de caracteres alfanuméricos. 
    El nombre de una variable de usuario puede contener otros caracteres si lo cita como una cadena o
    un identificador (ejemplo, @'my-var').  

*/

set @variable = "Esto es mi variable";
set @num1 = 2;
set @num2 = 4;
set @valor = True;

select 
	@variable, @num1, @num2, 
	@num1 + @num2 suma, 
    @valor ; 


/*
	Definiendo y usando variables con instrucciones DML
    Secuencia de intrsucciones dml para crear un registro de un nuevo libro. 

*/

#Variables para registrar un editorial
set @v_codEditorial = 200; 
set @v_editorial = "Editorial Ramon Amaya Amador"; 
set @v_pais = "";
set @v_ciudad = "";

# Crear un registro en la tabla editoriales
select * from tbleditoriales 
where nombre like concat( "%", @v_editorial ,"%" ) ;

insert into tbleditoriales (
	codEditorial,  	 nombre,  		pais,  		ciudad
) values(
	@v_codEditorial, @v_editorial, 	@v_pais, 	@v_ciudad
); 

#Variables  para registrar generos 
set @v_codgenero = 20020; 
set @v_genero 	 = "NOVELA"; 

#crear un registro en la tabla generos 
select * from tblgeneros where nombre = @v_genero;

insert into tblgeneros ( codgenero, 	nombre 		) 
			     values( @v_codgenero, 	@v_genero 	);

#Variables para registrar un autor 
set @v_codAutor 	= 100; 
set @v_nombres 		= "Ramon"; 
set @v_apellidos	= "Amaya Amador";
set @v_pseudonimo	= "Ramon Amaya Amador";
set @v_nacionalidad = "Hondureña";
set @v_lugarnacimiento 	= "Olanchito, Yoro";
set @v_fechanacimiento	= str_to_date("2010-01-01","%Y-%m-%d");

#crear un registro en la tabla autores
select * from tblautores where nombres like "%Ramon%";

insert into tblautores (
	codautor,
    nombres, 
    apellidos, 
    pseudonimo, 
    nacionalidad, 
    lugarnacimiento, 
    fechanacimiento
) values (
	@v_codautor, 
    @v_nombres,
    @v_apellidos, 
    @v_pseudonimo, 
    @v_nacionalidad, 
    @v_lugarnacimiento, 
    @v_fechanacimiento
);

#Variables para registrar un libro 
set @v_codlibro		= 1000;
set @v_titulo		= ""; 
set @v_isbn 		= ""; 
set @v_numpaginas	= "";
set @v_categoria	= "";
set @v_idiomaorigen = ""; 
set @v_idiomapublicacion = "";
set @v_lugarpublicacion  = ""; 
set @v_fechapublicacion  = str_to_date("2010-01-01","%Y-%m-%d"); 
set @v_codeditorial  	 = "";
set @v_codgenero		 = "";

#crear el registro del libro
select * from tbllibros where codLibro = 1000; 

insert into tbllibros (
	codlibro, titulo, isbn, numpaginas, categoria, idiomaorigen, idiomapublicacion, lugarpublicacion, fechapublicacion, codeditorial, codgenero
) values (
	@v_codlibro, @v_titulo, @v_isbn, @v_numpaginas, @v_categoria, @v_idiomaorigen, @v_idiomapublicacion, @v_lugarpublicacion, @v_fechapublicacion, @v_codeditorial, @v_codgenero
);
 
#Variables para regustrar autores y libros
set @v_codautor	= 100; 
set @v_codlibro = 1000; 

#crear registro en la tabla autores por libro
select * from tblautoresxlibro where codAutor = 100;

insert into tblautoresxlibro (codautor, codlibro) 
					  values (@v_codautor, @v_codlibro);

commit;

