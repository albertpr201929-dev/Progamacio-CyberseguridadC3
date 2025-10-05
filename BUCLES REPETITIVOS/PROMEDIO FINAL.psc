Algoritmo PROMEDIO_FINAL
    DEFINIR SumaTotal COMO REAL;   
    DEFINIR PromedioFinal COMO REAL;
    DEFINIR Contador COMO ENTERO;    
    DEFINIR NotaIngresada COMO REAL; 
	
	SumaTotal = 0; 
	
    PARA Contador DESDE 1 HASTA 5 CON PASO 1 HACER
        
        ESCRIBIR "Ingresa la nota #", Contador, " de 5:";
        
        LEER NotaIngresada;
        
        SumaTotal = SumaTotal + NotaIngresada;
        
    FinPara
	
  
    PromedioFinal = SumaTotal / 5;
	
    
    ESCRIBIR "==================================";
    ESCRIBIR "Proceso finalizado.";
    ESCRIBIR "La Suma total de las 5 notas es: ", SumaTotal;
    ESCRIBIR "El Promedio final de las notas es: ", PromedioFinal;





FinAlgoritmo
