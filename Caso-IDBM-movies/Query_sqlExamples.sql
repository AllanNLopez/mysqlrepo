
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