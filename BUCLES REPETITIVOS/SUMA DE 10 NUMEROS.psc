Algoritmo SUMA_10_NUMEROS
	
    DEFINIR SumaTotal COMO REAL;  
    DEFINIR Contador COMO ENTERO;  
    DEFINIR NumeroIngresado COMO REAL; 
	
    SumaTotal = 0; 
	
    
    PARA Contador DESDE 1 HASTA 10 CON PASO 1 HACER
        
        ESCRIBIR "Ingresa el n�mero #", Contador, " de 10:";
        
        LEER NumeroIngresado;
        
        SumaTotal = SumaTotal + NumeroIngresado;
        
    FinPara
	
    ESCRIBIR "==================================";
    ESCRIBIR "Fin del ingreso de datos.";
    ESCRIBIR "La suma total de los 10 n�meros ingresados es: ", SumaTotal;



FinAlgoritmo
