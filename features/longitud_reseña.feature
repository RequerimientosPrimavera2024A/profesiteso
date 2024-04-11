Feature: Como estudiante del ITESO quiero asegurarme que mi reseña dentro de la plataforma respete el límite de 2000 caracteres.
    Requerimiento para saber la longitud de la reseña.

    Example: En el que un usuario quiere escribir una reseña a un profesor
        Given Un usuario quiere escribir una reseña a un profesor
        When El usuario escribe la reseña
        Then El sistema verifica que la reseña no exceda los 2000 caracteres

    Example: En el que la reseña no debe superar los 2000 caracteres
        Given Un usuario quiere escribir una reseña a un profesor
        When El usuario escribe la reseña
        Then El sistema verifica que la reseña no exceda los 2000 caracteres

    Example: En el que la reseña supere los 2000 caracteres permitidos
        Given Un usuario quiere escribir una reseña a un profesor
        When El usuario escribe la reseña que sobrepasa el límite
        Then El sistema verifica que la reseña excede los 2000 caracteres y avisa al usuario

    Example: En el que un usuario quiera explicar muchas cosas pero deba ser más conciso
        Given Un usuario quiere escribir una reseña a un profesor
        When El usuario escribe la reseña
        Then El sistema verifica que la reseña no exceda los 2000 caracteres y avisa al usuario que debe ser más conciso

    Example: En el que un usuario quiera editar una reseña ya existente
        Given Un usuario quiere editar una reseña a un profesor
        When El usuario edita la reseña
        Then El sistema verifica que la reseña no exceda los 2000 caracteres

    Example: En el que la reseña sea corregida a los caracteres permitidos
        Given Un usuario quiere editar una reseña a un profesor
        When El usuario edita la reseña
        Then El sistema verifica que la reseña no exceda los 2000 caracteres
