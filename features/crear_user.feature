Feature: Como usuario de la plataforma ProfesITESO, quiero poder seleccionar un nombre de usuario único, para identificarme de manera exclusiva en el sistema.
	Requerimiento que un usuario se quiere regristrar a la plataforma de ProfesITESO

	Example: En el que solo se podrá tener un usuario si este no existe
		Given que el usuario se encuentra en la pantalla de registro
		When el usuario ingresa un nombre de usuario que ya existe
		Then el sistema le mostrará un mensaje de error indicando que el nombre de usuario ya existe

	Example: En el que se le pedira al usuario que cambie de nombre si este esta intentando usar uno que ya exista
		Given que el usuario se encuentra en la pantalla de registro
		When el usuario ingresa un nombre de usuario que ya existe
		Then el sistema le mostrará un mensaje de error indicando que el nombre de usuario ya existe y le pedirá que ingrese otro nombre de usuario

	Example: En el que habrá una opción de modificación de perfil para realizar esto
		Given que el usuario se encuentra en la pantalla de perfil
		When el usuario selecciona la opción de modificar perfil
		Then el sistema le mostrará un campo para modificar el nombre de usuario

	Example: En el que se le pedira alusuario que cambie de nombre si este esta intentando usar uno que ya exista
		Given que el usuario se encuentra en la pantalla de perfil
		When el usuario selecciona la opción de modificar perfil
		Then el sistema le mostrará un campo para modificar el nombre de usuario y le pedirá que ingrese otro nombre de usuario

	Example: En el que se realizará un chequeo cuando un usuario quiera registrar un usuario o cambiar de nombre
		Given que el usuario se encuentra en la pantalla de registro o perfil
		When el usuario ingresa un nombre de usuario
		Then el sistema verificará si el nombre de usuario ya existe en la base de datos	