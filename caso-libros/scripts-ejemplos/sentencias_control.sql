
delimiter // 
create procedure sp_setgroup(p_edad int)
begin 
	declare v_grupo varchar(45) default null; 
    
    if p_edad < 15 then 
		set v_grupo = 'NINO'; 
	elseif p_edad between 15 and 25 then
		set v_grupo = 'JOVEN'; 
	elseif  p_edad between 26 and 60 then
		set v_grupo = 'ADULTO';
	elseif p_edad > 60 then 
		set v_grupo = 'VEJEZ';
	else 
		set v_grupo = 'OTRO'; 
	end if;
	
    /*case 
		when edad < 15 then
			set v_grupo = 'NINO'; 
		WHEN edad between 15 and 25 then
			set v_grupo = 'JOVEN'; 
		WHEN edad between 26 and 60 then
			set v_grupo = 'ADULTO';
		WHEN edad > 60 THEN
			set v_grupo = "VEJEZ";
		ELSE set v_grupo = 'OTRO'; 
	end case;*/
end; 


/*
	Procedimiento almacenado para guardar un nuevo editorial
    Uso de sentencias if	
*/

call bd_biblios.sp_insr_editorial(
	1000, "Editorial Libritos", "Honduras", "Tegucigalpa"
)

drop procedure bd_biblios.sp_insr_editorial;

delimiter //
create procedure bd_biblios.sp_insr_editorial(
	in p_codEditorial int, 
	in p_editorial    varchar(45), 
	in p_pais		  varchar(45),
	in p_ciudad		  varchar(45) 
)
begin 
	declare v_conteo int default 0; 
    
	#validar si existe el registro con codigo de editorial 
    select count(*)  into v_conteo
    from tbleditoriales where codeditorial = p_codEditorial;
    
    if v_conteo = 0 then  
		insert into tbleditoriales (
			codEditorial,  	 nombre,  		pais,  		ciudad
		) values(
			p_codEditorial, p_editorial, 	p_pais, 	p_ciudad
		);  
	end if; 
end; 