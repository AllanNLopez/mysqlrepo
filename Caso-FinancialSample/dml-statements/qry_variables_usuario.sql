/*
    Ejemplo de declaracion y uso de variables de usuario.
*/

set @numero = 1;
select *  from db_demo.currencies ; 
DELETE FROM DB_DEMO.CURRENCIES WHERE CURRENCY_ID = 7;


set @currency_name = "QUETZAL"; 
set @currency_symbol = "Q";
set @exchange_rate = "0";
set @country = "GUATEMALA";

INSERT INTO currencies (
	currency_name, currency_symbol, exchange_rate, country, ISO_CODE
)
VALUES (@currency_name, @currency_symbol, @exchange_rate,  @country, "GTQ");
commit; 
