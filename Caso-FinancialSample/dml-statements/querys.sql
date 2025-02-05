SELECT * 
FROM db_demo.financialsample;
/*
	Sentencia para agregar un campo.
*/
ALTER TABLE db_demo.financialsample 
ADD transactionID int primary key auto_increment;

/*
	Consultas

    STR_TO_DATE()  / DATE_FORMAT()
*/
 


SELECT date , str_to_date(date, '%d/%m/%Y') fecha , 
DATE_FORMAT(str_to_date(date, '%d/%m/%Y'), '%m') mes
FROM db_demo.financialsample
where 
	UPPER(Country) = 'CANADA'
    AND Discounts > 0
    AND TRIM(DiscountBand) = 'High'; 


delete from db_demo.currencies where currency_id = 2;
/*
select * from db_demo.currencies;
update db_demo.currencies set exchange_rate = 20.48 where currency_id = 5;
commit;
*/