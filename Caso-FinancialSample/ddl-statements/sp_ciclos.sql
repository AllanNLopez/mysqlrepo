/*
	
*/
delimiter //
drop PROCEDURE  sp_ciclos_ejemplo;

delimiter //
CREATE  PROCEDURE  sp_ciclos_ejemplo( in p_max int )
BEGIN
    declare vContador1 int default 2;		#contador1  
    declare vsecuencia varchar(120) default ""; 
     
    /* Ciclo Loop leave: Evalúa una condición que si se cumple entonces el  ciclo se detiene.  */
	/*ciclo1: LOOP 
		set vContador1 = vContador1 + 1; 
        set vsecuencia = concat(vsecuencia ," ", vContador1) ;  #1 2 3 4
        
        if vContador1 = p_max then   leave ciclo1; end if;              
    END LOOP;     
    select vsecuencia ;
    */
    /*
    ciclo2: LOOP 		
        set vsecuencia = concat(vsecuencia ," ", vContador1) ;        
        set vContador1 = vContador1 + 1; 
        if vContador1 < p_max then  
			iterate ciclo2;
        end if;          
        leave ciclo2;
    END LOOP;      
    select vsecuencia ;
    */
    
    WHILE vContador1 < p_max DO 		
        set vsecuencia = concat(vsecuencia ," ", vContador1) ;        
        set vContador1 = vContador1 + 1;   
    END WHILE;      
    select vsecuencia ;
        
END; 


call sp_ciclos_ejemplo(20); 



