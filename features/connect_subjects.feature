Feature: Como administrador de la plataforma ProfesITESO, quiero poder conectar materias a uno o más profesores, para que los profesores puedan tener acceso a la información de las materias que imparten.
	Requerimiento que un administrador pueda conectar materias a uno o más profesores.

	Example: En el que verificamos en la base de datos los datos de profesores que se pueden asociar a que materias
		Given Un administrador que quiere conectar materias a uno o más profesores
		When Selecciona la opción de conectar materias a profesores
		Then Se muestra una lista de profesores que se pueden asociar a materias

	Example: En el que verificaremos en la base de datos los datos de estos
		Given Un administrador que quiere conectar materias a uno o más profesores
		When Selecciona la opción de conectar materias a profesores
		Then Se muestra una lista de profesores que se pueden asociar a materias
		And Selecciona un profesor
		Then Se muestra una lista de materias que se pueden asociar a ese profesor

	Example: En el que habrá un modal que saldrá para avisar que se realizo
		Given Un administrador que quiere conectar materias a uno o más profesores
		When Selecciona la opción de conectar materias a profesores
		And Selecciona un profesor
		And Selecciona una materia
		And Da clic en el botón de conectar
		Then Se muestra un modal que indica que se realizó la conexión

	Example: En el que habrá un botón a un lado del profesor asociado para eliminarlo
		Given Un administrador que quiere conectar materias a uno o más profesores
		When Selecciona la opción de conectar materias a profesores
		And Selecciona un profesor
		And Selecciona una materia
		And Da clic en el botón de conectar
		Then Se muestra un modal que indica que se realizó la conexión
		And Se muestra un botón a un lado del profesor asociado para eliminarlo

	Example: En el que aparecerá un modal que avisará sobre el intento de asociación
		Given Un administrador que quiere conectar materias a uno o más profesores
		When Selecciona la opción de conectar materias a profesores
		And Selecciona un profesor
		And Selecciona una materia
		And Da clic en el botón de conectar
		Then Se muestra un modal que indica que se realizó la conexión
		And Se muestra un botón a un lado del profesor asociado para eliminarlo
		And Selecciona el botón de eliminar
		Then Se muestra un modal que indica que se eliminó la conexión

	Example: En el que harán por medio del back-end para realizar las asignaciones
		Given Un administrador que quiere conectar materias a uno o más profesores
		When Selecciona la opción de conectar materias a profesores
		And Selecciona un profesor
		And Selecciona una materia
		And Da clic en el botón de conectar
		Then Se muestra un modal que indica que se realizó la conexión
		And Se muestra un botón a un lado del profesor asociado para eliminarlo
		And Selecciona el botón de eliminar
		Then Se muestra un modal que indica que se eliminó la conexión
		And Se realiza la eliminación de la conexión en la base de datos