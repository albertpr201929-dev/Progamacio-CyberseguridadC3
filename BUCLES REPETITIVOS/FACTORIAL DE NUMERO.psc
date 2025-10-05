Algoritmo FACTORIA_DE_NUMERO
	
	
    DEFINIR Numero COMO ENTERO;
    DEFINIR Factorial COMO REAL; 
    DEFINIR Contador COMO ENTERO; 
	
    Factorial = 1; 
	
    ESCRIBIR "Por favor, ingresa un número entero no negativo (0 o mayor) para calcular su factorial:";
    LEER Numero;
	
    SI Numero < 0 ENTONCES
        
        ESCRIBIR "Error: El factorial solo está definido para números enteros no negativos.";
	FinSi
	
		SI Numero = 0 ENTONCES
       
        ESCRIBIR "El factorial de 0 es: 1";
    SINO
       
        PARA Contador DESDE Numero HASTA 1 CON PASO -1 HACER
          
            Factorial = Factorial * Contador;
            
        FinPara
		
        ESCRIBIR "==================================";
        ESCRIBIR "El factorial de ", Numero, " es: ", Factorial;
    FinSi




FinAlgoritmo
