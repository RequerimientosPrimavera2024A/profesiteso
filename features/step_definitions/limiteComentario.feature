Feature: Comentarios de las reseñas solo seran de un maximo de 1000 caracteres

Example: En el caso que no sea ex-alumno del profesor
    Given estoy en una reseña de un profesor
    When quiero agregar un comentarios
    Then no se podra agregar comentarios a esta reseña

Example: En el caso que sea ex-alumno del profesor
    Given estoy en una reseña de un profesor
    When quiero agregar un comentarios
    Then se podra agregar comentarios a esta reseña

Example: En el caso que el comentario no exceda el maximo de caracteres
    Given estoy comentando en alguna reseña
    When doy click en publicar
    Then no se mostrara un mensaje de error

Example: En el caso que el comentario exceda el maximo de caracteres
    Given estoy comentando en alguna reseña
    When doy click en publicar
    Then se mostrara un mensaje de error

Example: En el caso que el comentario no se haya enviado correctamente por limites de caracteres
    Given di click en publicar comentario
    When reviso los comentarios
    Then no se mostrara este comentario

Example: En el caso que el comentario se haya enviado correctamente por limites de caracteres
    Given di click en publicar comentario
    When reviso los comentarios
    Then se mostrara este comentario

Example: En el caso de exceder el limite de caracteres el frontend enviara un mensaje al igual que el backend
    Given doy click en publicar comentario
    When reciba un mensaje de error en el navegador
    Then el backend recibe este error y regresa error de HTTP 500

Example: En el caso de no exceder el limite de caracteres el frontend enviara un mensaje al igual que el backend
    Given doy click en publicar comentario
    When reciba un mensaje de exito en el navegador
    Then el backend recibe este mensaje y regresa un HTTP 200
