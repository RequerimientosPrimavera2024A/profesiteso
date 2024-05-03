Feature: Como usuario nuevo de ProfesITESO, quiero recibir un código de verificación en mi correo institucional para completar mi registro en la plataforma.
    Requerimiento para saber si el usuario recibió el código de verificación en su correo institucional.

    Example: En el que un usuario nuevo está completando el formulario de registro y proporciona su correo electrónico institucional "@iteso.mx" en el campo correspondiente.+
        Given El usuario ha proporcionado su correo institucional "@iteso.mx" en el campo correspondiente.
        When El usuario completa el formulario de registro y hace clic en el botón "Registrarse".
        Then El sistema envía un código de verificación al correo institucional del usuario.

    Example: En el que un usuario completa el campo de correo electrónico durante el registro y el sistema genera automáticamente un código de verificación, enviándolo al correo institucional proporcionado por el usuario.
        Given El usuario ha proporcionado su correo institucional "@iteso.mx" en el campo correspondiente.
        When El usuario completa el formulario de registro y hace clic en el botón "Registrarse".
        Then El sistema envía un código de verificación al correo institucional del usuario.

    Example: En el que un usuario ha completado el registro y proporcionado su correo electrónico institucional, recibe un correo electrónico con el código de verificación en su bandeja de entrada de su cuenta de correo institucional.
        Given El usuario ha proporcionado su correo institucional "@iteso.mx" en el campo correspondiente.
        When El usuario completa el formulario de registro y hace clic en el botón "Registrarse".
        Then El sistema envía un código de verificación al correo institucional del usuario.
        And El usuario recibe un correo electrónico con el código de verificación en su bandeja de entrada de su cuenta de correo institucional.

    Example: En el que un usuario recibe el correo electrónico con el código de verificación, y el correo electrónico contiene instrucciones claras y detalladas sobre cómo utilizar el código de verificación para completar el proceso de registro en ProfesITESO, incluyendo los pasos a seguir y el enlace correspondiente.
        Given El usuario ha proporcionado su correo institucional "@iteso.mx" en el campo correspondiente.
        When El usuario completa el formulario de registro y hace clic en el botón "Registrarse".
        Then El sistema envía un código de verificación al correo institucional del usuario.
        And El usuario recibe un correo electrónico con el código de verificación en su bandeja de entrada de su cuenta de correo institucional.
        And El correo electrónico contiene instrucciones claras y detalladas sobre cómo utilizar el código de verificación para completar el proceso de registro en ProfesITESO, incluyendo los pasos a seguir y el enlace correspondiente.