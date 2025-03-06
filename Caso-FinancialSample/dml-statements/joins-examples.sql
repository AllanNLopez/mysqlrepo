/*
	Ejemplos de clausula UNION
*/
SELECT Segment, Country, Product FROM db_demo.financialsample 
where product = ' Amarilla ' and Segment = 'Channel Partners' and country in ( 'Mexico', 'France')

union all

SELECT Segment, Country, Product FROM db_demo.financialsample 
where product = ' Amarilla ' and Segment = 'Channel Partners' and country = 'Mexico';
;
 
#--------------------------------------------------------------------------------------------

/*
	Ejemplo de consulta con clausula Right JOIN
*/
SELECT 
	t1.country, t1.Product, t1.Sales, t1.date, t2.exchange_rate 
FROM db_demo.financialsample as t1 
right join db_demo.currencies as t2
on t1.country = t2.country 
where 
	#product = ' Amarilla ' and Segment = 'Channel Partners' and 
    t2.country = 'Honduras' and 
    t1.MonthNumber in (1); 
    
#--------------------------------------------------------------------------------------------

/*
	Ejemplo de consulta con clausula Group By
*/ 

Select 
	Segment, Country, 
    sum(unitssold) as unitssold,
    avg(Discounts) as promedio_descuentos
from db_demo.financialsample
where product = ' Amarilla ' #and country = 'Mexico'
group by Segment, Country
;

#--------------------------------------------------------------------------------------------
# Subconsultas 
/*  Promedio de ganancia (profit) por producto */
select country, max(totalprofit) from (
	select  
		country, sum( Sales) as totalprofit 
	from db_demo.financialsample
	group by country 
) t group by country  
; 


select * from (
	SELECT distinct Country, Product , SalePrice
	FROM db_demo.financialsample A 
	where a.product = ' Amarilla ' and a.Segment = 'Channel Partners' and a.country in ( 'Mexico', 'France')
) a ;
 

#Tabla A 
SELECT distinct Country, Product , SalePrice
FROM db_demo.financialsample A 
where a.product = ' Amarilla ' and a.Segment = 'Channel Partners' and a.country in ( 'Mexico', 'France');

#Tabla B 
select * from db_demo.currencies b; 

SELECT distinct a.Country, Product , SalePrice, b.currency_name, b.exchange_rate 
FROM db_demo.financialsample A 
left join db_demo.currencies b
on a.country = b.country
where 
	a.product = ' Amarilla ' and 
    a.Segment = 'Channel Partners' and 
    a.country in ( 'Mexico', 'France')
	and b.currency_name is null 
;
 