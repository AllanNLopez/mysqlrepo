/*
    Sentencias de repeticion, ciclos
*/


CREATE  PROCEDURE `sp_ciclos_ejemplo`(
    in p_max int 
)
BEGIN
    declare vContador1 int default 0;		#contador1
    declare vContador2 int default 0;		#contador2
    declare vContador3 int default 0;		#contador3
    declare vMaximo	   int default 0;
    
    set vMaximo = p_max; 
    
    /*
		Ciclo Loop leave
        Evalue una condicion que si se cimple entonces el ciclo se detiene. 
    */
	ciclo1: LOOP 
		set vContador1 = vContador1 + 1; 
        if vContador1 = vMaximo then 
			leave ciclo1;
        end if; 
    END LOOP;  
    
    select vContador1 ;
    
    /*
		Ciclo Loop Iterate, 
        Evalua una condicion que si es verdadera el ciclo se repite una vez mas, si la condicion es falsa
        entonces se termina el ciclo. 
    */
	ciclo2: loop 
		set vContador2 = vContador2 + 1; 
        if vContador2 < vMaximo then 
			iterate ciclo2;
        end if;
        leave ciclo2;
    end loop;  
    
    select vContador2 ;    
    
    /*
		Ciclo while do
    
    */
    while vContador3 < vMaximo do 
		set vContador3 = vContador3 +1;  
    end while;
    
    select vContador3;     
 
END

