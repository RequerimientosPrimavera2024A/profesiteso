Feature: Quiero que se implemente un filtro de profanidades en las reseñas y comentarios
    Requerimiento donde se solicita que se implemente un filtro de profanidades en las reseñas y comentarios de los profesores

    Example: Se detectan las palabras obscenas y no se dejará comentar
        Given que el usuario quiere comentar una reseña
        When el usuario escribe una palabra obscena
        Then el sistema no permitirá que se publique el comentario
    
    Example: En caso de que no haya palabras obscenas en el chat no se bloqueará
        Given que el usuario quiere comentar una reseña
        When el usuario escribe una palabra que no es obscena
        Then el sistema permitirá que se publique el comentario
    
    Example: En caso d eque se encuentre con una mala palabra no dejará al usuario seguir escribiendo
        Given que el usuario quiere comentar una reseña
        When el usuario escribe una palabra obscena
        Then el sistema no permitirá que se siga escribiendo
    
    Example: En caso de que no haya mala palabra se permitirá seguir escribiendo
        Given que el usuario quiere comentar una reseña
        When el usuario escribe una palabra que no es obscena
        Then el sistema permitirá que se siga escribiendo
    
    Example: El filtro detecta profanidades hasta en 20 idiomas
        Given que el usuario quiere comentar una reseña
        When el usuario escribe una palabra obscena en otro idioma
        Then el sistema no permitirá que se publique el comentario
    
    Example: En caso de que el texto esté en otro idioma pero las profanidades esten en otro de igual manera se anula el comentario
        Given que el usuario escriba una reseña en español
        When el usuario escribe una palabra obscena en otro idioma
        Then el sistema no permitirá que se publique el comentario
    
    Example: En caso de escribir profanidades se le dirá al usuario que recuerde que no se permiten
        Given que el usuario quiere comentar una reseña
        When el usuario escribe una palabra obscena
        Then el sistema le recordará al usuario que no se permiten palabras obscenas
    
    Example: En caso de poner tres o mas palabras obscenas se bloqueará el comentario por 30 minutos
        Given que el usuario quiere comentar una reseña
        When el usuario escribe tres o mas palabras obscenas
        Then el sistema bloqueará el comentario por 30 minutos