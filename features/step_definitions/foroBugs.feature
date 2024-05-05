Feature: Foro para avisar sobre bugs

Example: En el caso de no estar en la interfaz de usuario, no se podra acceder al foro de bugs
    Given no estoy en la interfaz de usuario en ProfesITESO
    When quiero acceder al foro de bugs
    Then no se podra acceder al foro de bugs

Example: En el caso de estar en la interfaz de usuario se podra acceder al foro de bugs
    Given estoy en la interfaz de usuario en ProfesITESO
    When quiero acceder al foro de bugs
    Then se podra acceder al foro de bugs

Example: En el caso de encontrar un bug
    Given encontre un bug
    When quiero reportar con una publicacion
    Then se debera hacer una nueva publicacion

Example: En el caso de encontrar un bug
    Given encontre un bug
    When quiero reportar con una publicacion
    Then no se debera hacer en una vieja publicacion

Example: En el caso de no completar los campos obligatorios
    Given estoy creando una nueva publicacion sobre el bug
    When no lleno todos los campos obligatorios
    Then no se guardara la publicacion y me pedira que llene los campos que faltan

Example: En el caso de completar los campos obligatorios
    Given estoy creando una nueva publicacion sobre el bug
    When lleno todos los campos obligatorios
    Then se guardara la publicacion

Example: En el caso que una publicacion de bug no exista, no se podra comentar en ella
    Given estoy buscando la publicacion de algun
    When no encuentro alguna publicacion
    Then no podre comentar 

Example: En el caso que una publicacion de bug exista, se podra comentar en ella
    Given estoy buscando la publicacion de algun
    When encuentro alguna publicacion del bug
    Then podre comentar en dicha publicacion


Example: En el En el caso que no haya nuevas publicaciones o comentarios sobre algun bug el equipo de desarrollo no recibira notificaciones sobre bugs.
    Given no hay nuevas publicaciones o comentarios sobre algun bug
    When cuando el equipo revisa sus notificaciones
    Then No deberian tener notificaciones sobre bugs

Example: En el En el caso que haya nuevas publicaciones o comentarios sobre algun bug el equipo de desarrollo recibira notificaciones sobre bugs.
    Given hay nuevas publicaciones o comentarios sobre algun bug
    When cuando el equipo revisa sus notificaciones
    Then deberian tener notificaciones sobre bugs

Example: En el caso que no haya nuevas publicaciones o comentarios sobre bugs, no hay necesidad de arreglar el codebase.
    Given no hay nada nuevo sobre bugs
    When el equipo revise sus bandeja
    Then no hay necesidad de arreglar el codebase

Example: En el caso que haya nuevas publicaciones o comentarios sobre bugs, el equipo de desarrollo debera corregirlo lo mas pronto posible
    Given hay nuevas publicaciones sobre bugs
    When el equipo revise sus bandeja
    Then deberan corregirlo lo mas pronto posible
