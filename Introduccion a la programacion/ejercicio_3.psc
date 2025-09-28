Algoritmo ejercicio_3
	Escribir "favor ingresar el numero para determinar si es par o inpar: "
	Leer Numero
	divicion = numero/2
	Mientras divicion>0.5 Hacer
		divicion = divicion - 1
	FinMientras
	Si divicion == 0 Entonces
		Escribir "es par"
	SiNo
		Escribir "es impar"
	FinSi
FinAlgoritmo
