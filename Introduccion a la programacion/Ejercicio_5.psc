Algoritmo inicio
	Definir NUMERO, RESULTADO Como Entero
	Definir CONTADOR Como Entero
	Escribir 'Ingrese el número del cual desea la tabla de multiplicar:'
	Leer NUMERO
	Para CONTADOR<-1 Hasta 10 Con Paso 1 Hacer
		RESULTADO <- NUMERO*CONTADOR
		Escribir NUMERO, ' x ', CONTADOR, ' = ', RESULTADO
	FinPara
FinAlgoritmo
