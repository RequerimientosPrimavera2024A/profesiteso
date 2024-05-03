Feature: Como estudiante de ProfesITESO, no puedo calificar mis propias reseñas sobre otros profesores.
    Requerimiento para prohibir que un estudiante califique sus propias reseñas.

    Example: En el que un estudiante intenta calificar una reseña que ha escrito previamente sobre un profesor en la plataforma, el sistema verifica automáticamente si el autor de la reseña y el estudiante son la misma persona antes de permitir la calificación.
        Given El estudiante intenta calificar una reseña que ha escrito previamente sobre un profesor en la plataforma
        When El sistema verifica automáticamente si el autor de la reseña y el estudiante son la misma persona
        Then El sistema no permite que el estudiante califique la reseña

    Example: En el que el autor de una reseña sobre un profesor intenta calificar su propia reseña, el sistema detecta que son la misma persona y muestra un mensaje de error que indica que no se puede calificar la propia reseña.
        Given El autor de una reseña sobre un profesor intenta calificar su propia reseña
        When El sistema detecta que son la misma persona
        Then El sistema muestra un mensaje de error que indica que no se puede calificar la propia reseña

    Example: En el que un estudiante intenta modificar o eliminar una reseña que ha escrito sobre un profesor en la plataforma, el sistema no permite realizar ninguna modificación ni eliminación en la reseña.
        Given El estudiante intenta modificar o eliminar una reseña que ha escrito sobre un profesor en la plataforma
        When El sistema verifica automáticamente si el autor de la reseña y el estudiante son la misma persona
        Then El sistema no permite realizar ninguna modificación ni eliminación en la reseña

    Example: En el que un estudiante intenta calificar su propia reseña sobre un profesor en la plataforma, el sistema registra automáticamente este intento junto con la fecha, la reseña afectada y el resultado obtenido (éxito o error), y muestra este historial al usuario.
        Given El estudiante intenta calificar su propia reseña sobre un profesor en la plataforma
        When El sistema registra automáticamente este intento junto con la fecha, la reseña afectada y el resultado obtenido (éxito o error)
        Then El sistema muestra este historial al usuario

    Example: En el que un administrador de la plataforma accede al panel de administración, encuentra un caso excepcional en el que un estudiante ha necesitado calificar su propia reseña y revisa los detalles para determinar si se trata de un error o una situación especial justificada, tomando las acciones necesarias según corresponda.
        Given Un administrador de la plataforma accede al panel de administración
        When Encuentra un caso excepcional en el que un estudiante ha necesitado calificar su propia reseña y revisa los detalles
        Then Determina si se trata de un error o una situación especial justificada, tomando las acciones necesarias según corresponda