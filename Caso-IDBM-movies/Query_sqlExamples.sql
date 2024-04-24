
/*
	Esxribir una consulta SQL para obtener las peliculas del año 2001. 
    Se requiere mostrar el titulo, año, director, duracion, rating, y el campo gross (recaudacion) en formato numerico. 
    y calificacion de la siguiente manera: Todo Publico, Adultos, Mayores de 12, guia parental. 
    ordernar de acuerdo al rating obtenido, de mayor a menor. 
    Mostrar los encabezados en español . 
*/

-- select convert('256', decimal ) + 1 f 

Select 
	  t.title titulo
    , t.year anio
    , t.director
    , t.certificate clasificacion
    , t.runtime duracion 
    , t.rating 
    , convert(
		replace (
		replace( t.gross ,'M', '') , 
        '$', ''
		), 
        decimal(12,2)
    )    recaudacion  
from recuperacion.movies t 
where t.year = 2001
order by rating desc ;

/*
    Funciones de agregado
*/





select 
	y.director, count(y.title), sum(y.recaudacion) 
from ( 
		Select  
			  t.director  
			, t.title 
			, t.rating 
			, convert(
				replace ( replace( t.gross ,'M', '') ,  '$', '' ),  decimal(12,2)
			)    recaudacion  
		from recuperacion.movies t 
		where t.year > 1999
) y group by y.director ;


select count(*) t, count(distinct title) titulos, count(distinct director) directores from recuperacion.movies;
------

select
	sub.director ,
	count( sub.titulo ) titulos ,
    sum( sub.recaudacion ) recaudacion , 
    round( avg( sub.recaudacion ), 2 )recaudacion_promedio, 
    avg(sub.rating) rating_promedio
 from (
		Select 
			  t.title titulo
			, t.year anio
			, t.director
			, t.certificate clasificacion
			, t.runtime duracion 
			, t.rating 
			, convert(
				replace (
				replace( t.gross ,'M', '') ,  '$', '' ), 
				decimal(12,2)
			)    recaudacion  
		from recuperacion.movies t 
		where t.year between 1990 and 2000	 
) sub 
group by sub.director 
order by avg( sub.recaudacion ) desc 
;



/*

	SQL JOINS
*/



select
	t1.Rank,
	t1.Name titulo, 
    t2.YearRelease estreno, 
    t1.IMDBRating,
    -- t2.certificate, 
    case 
		when t2.certificate = 'U' then 'TP' 
        when t2.certificate = 'A' or t2.certificate = 'R' then '18+'
        when t2.certificate = 'UA' then '12+' 
        when t2.certificate = 'PG' then 'GP' 
        else 'Otro'
	end clasificion, 
    t2.genre,
    t2.director 
from recuperacion.topmovies t1 
inner join (
	select a.*, a.year yearrelease from recuperacion.movies a 
) t2
on ( replace( lower(t1.name), ' ','') = replace( lower(t2.title), ' ', ''))
 