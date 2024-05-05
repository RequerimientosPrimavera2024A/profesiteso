Feature: Profesores conectados a codigo de materia, para mostrar materias que imparte en su perfil

Example: En el caso de no tener codigos asociados con el profesor
    Given estoy en la pagina principal
    When quiero acceder a la seccion de configuracion de perfil
    Then no deberia configurar materias con codigos asociados al profesor

Example: En el caso de si tener codigos asociados con el profesor
    Given estoy en la pagina principal
    When quiero acceder a la seccion de configuracion de perfil
    Then deberia configurar materias con codigos asociados al profesor

Example: En el caso que el profesor no tenga materias asociadas
    Given estoy en configuracion de perfil
    When quiero seleccionar y asociar codigos de materia al perfil
    Then no podra asociar codigos de materias a su perfil

Example: En el caso que el profesor tenga materias asociadas
    Given estoy en configuracion de perfil
    When quiero seleccionar y asociar codigos de materia al perfil
    Then se podra asociar codigos de materias a su perfil

Example: En el caso de hacer cambios y no dar cick en boton de guardar
    Given estoy en configuracion de perfil
    When hago cambios a mi perfil
    Then no se van a reflejar los cambios hechos

Example: En el caso de hacer cambios y dar cick en boton de guardar
    Given estoy en configuracion de perfil
    When hago cambios a mi perfil
    Then se van a reflejar los cambios hechos

Example: En el caso de no tener materias asociados
    Given estoy en vista publica del perfil
    When reviso materias seleccionadas
    Then No se mostrara una comprension detallada acerca de la materia


Example: En el caso de tener materias asociados
    Given estoy en vista publica del perfil
    When reviso materias seleccionadas
    Then se mostrara una comprension detallada acerca de la materia