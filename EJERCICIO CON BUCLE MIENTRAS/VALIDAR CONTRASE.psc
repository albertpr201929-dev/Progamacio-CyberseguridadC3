Algoritmo Validar_Contrasena
    DEFINIR ContrasenaIngresada COMO CARACTER;
    
    ContrasenaIngresada = ""; 
    
    
    DEFINIR ContrasenaSecreta COMO CARACTER;
    ContrasenaSecreta = "1234";
	
    ESCRIBIR "--- Validaci�n de Contrase�a ---";
    
   
    MIENTRAS ContrasenaIngresada <> ContrasenaSecreta HACER
        
        ESCRIBIR "Por favor, ingrese la contrase�a:";
        
        LEER ContrasenaIngresada;
        
        SI ContrasenaIngresada <> ContrasenaSecreta ENTONCES
            ESCRIBIR "? Contrase�a incorrecta. Int�ntalo de nuevo.";
        FinSi
        
    FinMientras
    
    ESCRIBIR "? �Contrase�a correcta! Acceso concedido.";




FinAlgoritmo
