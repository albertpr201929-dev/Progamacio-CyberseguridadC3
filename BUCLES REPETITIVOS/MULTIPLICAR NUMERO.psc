Algoritmo TABLA_MULTIPLICAR
    DEFINIR NumeroTabla COMO ENTERO;
    DEFINIR Multiplicador COMO ENTERO;
    DEFINIR Resultado COMO ENTERO;
	
    ESCRIBIR "Por favor, ingresa el número del cual deseas ver la tabla de multiplicar:";
    LEER NumeroTabla;
	
    ESCRIBIR "----------------------------------";
    ESCRIBIR "Tabla de multiplicar del", NumeroTabla;
    ESCRIBIR "----------------------------------";
	
   
    PARA Multiplicador DESDE 1 HASTA 12 CON PASO 1 HACER
        
        Resultado = NumeroTabla * Multiplicador;
        
        ESCRIBIR NumeroTabla, " x ", Multiplicador, " = ", Resultado;
        
    FinPara



FinAlgoritmo
