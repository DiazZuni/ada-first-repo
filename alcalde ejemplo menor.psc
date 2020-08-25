Algoritmo alumnos
//comienzo algortimo

	Mostrar 'Bienvenido/a'
	Mostrar '------------------'
	
	Dimension Nombres[10]
	Definir Nombres Como Caracter
	
	Dimension edades[10]
	definir edades Como Entero
	
	para i <- 0 hasta 10-1 con paso 1 hacer 
		Escribir 'Ingrese nombre del alumno' i+1
		leer Nombres[i]
		Escribir 'Ingrese edad del alumno' i+1
		leer edades[i]
	FinPara
		// se comparan los dos primeros y se toman como may1 (el mayor de los
		// dos) y may2 (el segundo mayor).
		Si edades[0]>edades[1] Entonces
			may1<-edades[0]
			may2<-edades[1]
		SiNo
			may1<-edades[1]
			may2<-edades[0]
		FinSi
		// se recorren los demas elementos buscan si hay alguno mayor que may1 o may2
		Para i<-2 Hasta 10-1 Hacer
			Si edades[i]>may1 Entonces // si hay un valor mayor que may1
				may2<-may1 // como may1 era el más grande, pasa a estar en segundo lugar
				may1<-edades[i] // y el nuevo dato toma el primer puesto (mayor de todos)
			SiNo // si no era mas grande que may1, todavia puede ser mas grande que may2
				Si edades[i]>may2 Entonces // si supera al segundo mayor que teniamos
					may2<-edades[i] // se lo guarda como segundo mayor
				FinSi
			FinSi
		FinPara
		
		// se muestran los resultados
		Escribir "El alumno de mayor edad es ', Nombres[i], ' y tiene ', may1, 'años'	
FinAlgoritmo
