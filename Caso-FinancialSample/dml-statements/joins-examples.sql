
/**********************************************************************  
    Union Clause
*/

SELECT Segment, Country, Product FROM db_demo.financialsample 
where product = ' Amarilla ' and Segment = 'Channel Partners' and country in ( 'Mexico', 'France')

union all

SELECT Segment, Country, Product FROM db_demo.financialsample 
where product = ' Amarilla ' and Segment = 'Channel Partners' and country = 'Mexico';
;

/*********************************************************************
    Inner Join Clause
*/

SELECT 
	t1.country, t1.Product, t1.Sales, 
    t2.exchange_rate 
FROM db_demo.financialsample as t1
inner join db_demo.currencies as t2
on t1.country = t2.country 
where 
	product = ' Amarilla ' and Segment = 'Channel Partners' 
    and t1.country in ( 'Mexico', 'France');









