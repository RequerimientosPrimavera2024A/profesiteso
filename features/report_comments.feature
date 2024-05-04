Feature: Como usuario de la plataforma, quiero poder reportar comentarios inapropiados para mantener un entorno seguro y respetuoso
	Requerimiento como usuario de la plataforma, quiero poder reportar comentarios inapropiados para que el administrador pueda revisarlos

	Example: Como usuario, debo poder encontrar fácilmente la opción para reportar un comentario.
		Given que soy un usuario de la plataforma
		When veo un comentario inapropiado
		Then debo poder encontrar fácilmente la opción para reportar un comentario.

	Example: Debo poder seleccionar una o varias razones predefinidas para el reporte o proporcionar mi propia explicación.
		Given que soy un usuario de la plataforma
		When reporto un comentario inapropiado
		Then debo poder seleccionar una o varias razones predefinidas para el reporte o proporcionar mi propia explicación.

	Example: Después de realizar el reporte, debo recibir una confirmación de que mi reporte ha sido registrado correctamente.
		Given que soy un usuario de la plataforma
		When reporto un comentario inapropiado
		Then debo recibir una confirmación de que mi reporte ha sido registrado correctamente.

	Example: El sistema debe marcar el comentario reportado para revisión por parte de los moderadores.
		Given que soy un usuario de la plataforma
		When reporto un comentario inapropiado
		Then el sistema debe marcar el comentario reportado para revisión por parte de los moderadores.

	Example: Si un comentario ha sido reportado múltiples veces, los moderadores deben ser notificados para una revisión prioritaria.
		Given que soy un usuario de la plataforma
		When reporto un comentario inapropiado
		And el comentario ha sido reportado múltiples veces
		Then los moderadores deben ser notificados para una revisión prioritaria.

	Example: Los usuarios que abusen de la función de reporte deben recibir advertencias o sanciones.
		Given que soy un usuario de la plataforma
		When reporto un comentario inapropiado
		And reporto comentarios de forma abusiva
		Then debo recibir advertencias o sanciones.

