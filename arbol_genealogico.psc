Algoritmo arbol_genealogico
	Definir opcion, totalPersonas Como Entero
	Definir i, idBuscar Como Entero
	Definir encontrado Como Logico
	Definir hombres, mujeres Como Entero
	Definir vivos, fallecidos Como Entero
	Dimension id[100]
	Dimension nombre[100]
	Dimension parentesco[100]
	Dimension padre[100]
	Dimension madre[100]
	Dimension fechaNacimiento[100]
	Dimension estado[100]
	totalPersonas <- 0
	//--------------------------------------//
	//--|menu_principal_arbol_genealogico|--//
	//--------------------------------------//
	Repetir
		Escribir "menu principal arbol genealogico"
		Escribir "1) registrar persona"
		Escribir "2) editar persona"
		Escribir "3) eliminar persona"
		Escribir "4) buscar persona"
		Escribir "5) listar personas"
		Escribir "6) ver detalles de la persona"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------//
			//--|registrar_persona|--//
			//-----------------------//
			1:
				Si totalPersonas < 100 Entonces
					totalPersonas <- totalPersonas + 1
					id[totalPersonas] <- totalPersonas
					Escribir "ingrese el nombre:"
					Leer nombre[totalPersonas]
					Escribir "ingrese el parentesco:"
					Leer parentesco[totalPersonas]
					Escribir "ingrese el nombre del padre:"
					Leer padre[totalPersonas]
					Escribir "ingrese el nombre de la madre:"
					Leer madre[totalPersonas]
					Escribir "ingrese la fecha de nacimiento:"
					Leer fechaNacimiento[totalPersonas]
					Escribir "ingrese el estado (vivo/fallecido):"
					Leer estado[totalPersonas]
					Escribir "persona registrada correctamente."
				SiNo
					Escribir "no hay espacio para registrar mas personas."
				FinSi
			//--------------------//
			//--|editar_persona|--//
			//--------------------//
			2:
				Escribir "editar persona"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalPersonas Hacer
						Escribir id[i], " | ", nombre[i], " | ", parentesco[i], " | ", padre[i], " | ", madre[i], " | ", fechaNacimiento[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la persona:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPersonas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre:"
							Leer nombre[i]
							Escribir "ingrese el nuevo parentesco:"
							Leer parentesco[i]
							Escribir "ingrese el nuevo padre:"
							Leer padre[i]
							Escribir "ingrese la nueva madre:"
							Leer madre[i]
							Escribir "ingrese la nueva fecha de nacimiento:"
							Leer fechaNacimiento[i]
							Escribir "ingrese el nuevo estado (vivo/fallecido):"
							Leer estado[i]
							Escribir "persona editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una persona con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|eliminar_persona|--//
			//----------------------//
			3:
				Escribir "eliminar persona"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalPersonas Hacer
						Escribir id[i], " | ", nombre[i], " | ", parentesco[i], " | ", padre[i], " | ", madre[i], " | ", fechaNacimiento[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la persona:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPersonas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalPersonas Entonces
								Para j <- i Hasta totalPersonas - 1 Hacer
									id[j] <- id[j+1]
									nombre[j] <- nombre[j+1]
									parentesco[j] <- parentesco[j+1]
									padre[j] <- padre[j+1]
									madre[j] <- madre[j+1]
									fechaNacimiento[j] <- fechaNacimiento[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalPersonas <- totalPersonas - 1
							Escribir "persona eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una persona con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|buscar_persona|--//
			//--------------------//
			4:
				Escribir "buscar persona"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "ingrese el id de la persona:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPersonas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", nombre[i], " | ", parentesco[i], " | ", padre[i], " | ", madre[i], " | ", fechaNacimiento[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una persona con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|listar_personas|--//
			//---------------------//
			5:
				Escribir "listar personas"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalPersonas Hacer
						Escribir id[i], " | ", nombre[i], " | ", parentesco[i], " | ", padre[i], " | ", madre[i], " | ", fechaNacimiento[i], " | ", estado[i]
					FinPara
				FinSi
			//--------------------------------//
			//--|ver_detalles_de_la_persona|--//
			//--------------------------------//
			6:
				Escribir "ver detalles de la persona"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "ingrese el id de la persona:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPersonas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la persona"
							Escribir "id: ", id[i]
							Escribir "nombre: ", nombre[i]
							Escribir "parentesco: ", parentesco[i]
							Escribir "padre: ", padre[i]
							Escribir "madre: ", madre[i]
							Escribir "fecha de nacimiento: ", fechaNacimiento[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una persona con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					vivos <- 0
					fallecidos <- 0
					Para i <- 1 Hasta totalPersonas Hacer
						Si estado[i] = "vivo" Entonces
							vivos <- vivos + 1
						SiNo
							Si estado[i] = "fallecido" Entonces
								fallecidos <- fallecidos + 1
							FinSi
						FinSi
					FinPara
					Escribir "estadistica general"
					Escribir "total de personas: ", totalPersonas
					Escribir "personas vivas: ", vivos
					Escribir "personas fallecidas: ", fallecidos
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar arbol genealogico."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo