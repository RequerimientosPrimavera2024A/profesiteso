Feature: Como profesor, quiero poder ver mis calificaciones y reseñas de los estudiantes, pero no quiero poder calificarme a mí mismo.
	Requerimiento que un profesor pueda ver sus calificaciones y reseñas de los estudiantes, pero no pueda calificarse a sí mismo.

	Example: Como profesor, debo poder acceder a mis calificaciones y reseñas desde mi perfil en la plataforma.
		Given que soy un profesor
		When accedo a mi perfil
		Then puedo ver mis calificaciones y reseñas de los estudiantes

	Example: No debo ver ninguna opción que me permita calificarme a mí mismo.
		Given que soy un profesor
		When accedo a mi perfil
		Then no puedo ver ninguna opción que me permita calificarme a mí mismo

	Example: Las calificaciones y reseñas deben mostrarse de manera clara y legible en mi perfil.
		Given que soy un profesor
		When accedo a mi perfil
		Then las calificaciones y reseñas deben mostrarse de manera clara y legible en mi perfil

	Example: Si intento calificarme a mí mismo, debo recibir un mensaje de advertencia indicando que no es posible.
		Given que soy un profesor
		When intento calificarme a mí mismo
		Then debo recibir un mensaje de advertencia indicando que no es posible

	Example: Las calificaciones y reseñas deben estar actualizadas y reflejar con precisión el feedback de los estudiantes.
		Given que soy un profesor
		When accedo a mi perfil
		Then las calificaciones y reseñas deben estar actualizadas y reflejar con precisión el feedback de los estudiantes
