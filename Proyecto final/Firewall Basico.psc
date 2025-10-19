Algoritmo Firewall

    Definir IPsBloqueadas Como Caracter;
    Dimensionar IPsBloqueadas[3]; 

    Definir Registros Como Caracter;
    Dimensionar Registros[10, 4]; 
    
    Definir ContadorR Como Entero;
    
    IPsBloqueadas[0] <- "192.168.1.100";
    IPsBloqueadas[1] <- "10.0.0.5";
    IPsBloqueadas[2] <- "172.16.0.1";
    ContadorR <- 0;
	
    Escribir "--- INICIO SIMULADOR ---";
	
    RegistrarPaquete("192.168.1.1", "80", "TCP", IPsBloqueadas, Registros, ContadorR);
    ContadorR <- ContadorR + 1;
    
    RegistrarPaquete("10.0.0.5", "22", "SSH", IPsBloqueadas, Registros, ContadorR);
    ContadorR <- ContadorR + 1;
	
    RegistrarPaquete("192.168.1.100", "21", "FTP", IPsBloqueadas, Registros, ContadorR);
    ContadorR <- ContadorR + 1;
	
    MostrarRegistros(Registros, ContadorR);
	
    Escribir "--- FIN SIMULADOR ---";
	
FinAlgoritmo

 

SubProceso Alerta(ip_origen)
    Escribir "?? ALERTA: BLOQUEADO -> ", ip_origen;
FinSubProceso



SubProceso RegistrarPaquete(ip_origen, puerto, protocolo, IPsBloqueadas, Registros Por Referencia, ContadorR)
    Definir estado Como Caracter;
    Definir i Como Entero;
    Definir Encontrado Como Logico;
    Definir ContinuarBusqueda Como Logico; 
	
    Encontrado <- Falso;
    ContinuarBusqueda <- Verdadero; 
    i <- 0; 
    Mientras (i < 3) Y ContinuarBusqueda Hacer 
        Si ip_origen = IPsBloqueadas[i] Entonces
            Encontrado <- Verdadero;
            ContinuarBusqueda <- Falso; 
        Fin Si
        i <- i + 1; 
    Fin Mientras
	
    
    Si Encontrado Entonces
        estado <- "BLOQUEADO";
        Alerta(ip_origen);
    Sino
        estado <- "ACEPTADO";
        Escribir "? ACEPTADO -> ", ip_origen;
    Fin Si
	
   
    Registros[ContadorR, 0] <- ip_origen;   
    Registros[ContadorR, 1] <- puerto;      
    Registros[ContadorR, 2] <- protocolo;  
    Registros[ContadorR, 3] <- estado;      
    
FinSubProceso



SubProceso MostrarRegistros(Registros, ContadorR)
    Definir i Como Entero;
	
    Escribir "";
    Escribir "=== HISTORIAL DE REGISTROS ===";
    
    
    Para i <- 0 Hasta ContadorR - 1 Con Paso 1 Hacer
       
        Escribir i + 1, ": IP:", Registros[i, 0], " | Puerto:", Registros[i, 1], " | Proto:", Registros[i, 2], " | Estado:", Registros[i, 3];
    Fin Para
    Escribir "==============================";
FinSubProceso