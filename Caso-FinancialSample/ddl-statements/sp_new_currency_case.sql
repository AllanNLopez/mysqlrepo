DELIMITER //
CREATE procedure sp_new_currency_case(
	in p_currency_name varchar(45),
    in p_currency_symbol varchar(45), 
    in p_exchange_rate decimal(15,2), 
    in p_country varchar(45) ,
    in p_iso_code varchar(45)
) 
BEGIN  
	DECLARE v_currency_name 	varchar(45);
	DECLARE v_currency_symbol	varchar(45);
	DECLARE v_exchange_rate		decimal(15,2);
	Declare v_country 			varchar(45);
    declare v_iso_code 			varchar(45);

	set v_currency_name = p_currency_name; 
	set v_currency_symbol = p_currency_symbol;
	set v_exchange_rate = p_exchange_rate;
	set v_country = p_country;
    set v_iso_code = p_iso_code;
    
    /*	Case statement	*/
	CASE 
		WHEN v_currency_name LIKE '%dollar%' THEN 
			set v_currency_symbol = "$";
		WHEN v_currency_name LIKE '%peso%' THEN 
			set v_currency_symbol = "$";
		WHEN v_currency_name LIKE '%yen%' THEN 
			set v_currency_symbol = "¥";
		WHEN v_currency_name LIKE '%euro%' THEN 
			set v_currency_symbol = "€";
        ELSE 
			set v_currency_symbol = p_currency_symbol;
	END CASE;

	INSERT INTO currencies (
		currency_name, currency_symbol, exchange_rate, country, ISO_CODE
	)
	VALUES (v_currency_name, v_currency_symbol, v_exchange_rate,  v_country, v_iso_code);
	commit;  
END;