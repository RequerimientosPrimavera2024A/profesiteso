Feature: Como usuario de ProfesITESO, quiero tener la opción de dejar una reseña después de calificar a un profesor, para compartir mi experiencia y opiniones de manera opcional.
    Requerimiento para dejar reseñas de manera opcional después de calificar a un profesor.

    Example: En el que un usuario finaliza de calificar a un profesor en la plataforma ProfesITESO, se le presenta la opción de dejar una reseña sobre la experiencia con ese profesor.
        Given que un usuario ha calificado a un profesor en la plataforma ProfesITESO
        When finaliza de calificar al profesor
        Then se le presenta la opción de dejar una reseña sobre la experiencia con ese profesor

    Example: En el que un usuario elige dejar una reseña después de calificar a un profesor, se le presenta un campo de texto en el que puede ingresar su reseña sobre la experiencia con ese profesor.
        Given que un usuario ha calificado a un profesor en la plataforma ProfesITESO
        When elige dejar una reseña
        Then se le presenta un campo de texto en el que puede ingresar su reseña sobre la experiencia con ese profesor

    Example: En el que un usuario finaliza de calificar a un profesor en la plataforma ProfesITESO y se le presenta la opción de dejar una reseña, el usuario tiene la libertad de decidir no dejar ninguna reseña y simplemente finalizar el proceso de calificación.
        Given que un usuario ha calificado a un profesor en la plataforma ProfesITESO
        When finaliza de calificar al profesor y se le presenta la opción de dejar una reseña
        Then el usuario tiene la libertad de decidir no dejar ninguna reseña y simplemente finalizar el proceso de calificación

    Example: En el que un usuario decide dejar una reseña después de calificar a un profesor, la reseña que ingresa se registra en la plataforma y se muestra públicamente junto con la calificación del profesor correspondiente.
        Given que un usuario ha calificado a un profesor en la plataforma ProfesITESO y decide dejar una reseña
        When ingresa su reseña
        Then la reseña se registra en la plataforma y se muestra públicamente junto con la calificación del profesor correspondiente

    Example: En el que un usuario opta por no dejar una reseña después de calificar a un profesor, el proceso de calificación finaliza sin que se registre ninguna reseña en la plataforma ProfesITESO.
        Given que un usuario ha calificado a un profesor en la plataforma ProfesITESO y decide no dejar una reseña
        When finaliza el proceso de calificación
        Then no se registra ninguna reseña en la plataforma ProfesITESO