Feature: Recibir un codigo de verificacion en mi correo institucional durante el proceso de registro


Example: En el caso que no sea un correo institucional.
	Given estoy en la pagina de iniciar sesion.
	When ingreso un correo que no sea del iteso.
	Then no deberia recibir un codigo de verificacion.

Example: En el caso que si sea un correo institucional.
	Given estoy en la pagina de iniciar sesion.
	When ingreso un correo que si pertenezca al iteso.
	Then Debo recibir un codigo de verificacion a mi correo.

Example: En el caso que el codigo unico no se envie al correo el usuario no podra continuar.
	Given reviso mi bandeja de entrada
	When no vea el codigo unico enviado a mi correo
	Then no puedo continuar con mi proceso de registro.

Example: En el caso que si se envie el codigo unico, el usuario debera continuar su proceso de registro.
	Given reviso mi bandeja de entrada
	When encuentre el codigo unico enviado a mi correo
	Then Puedo continuar con el proceso de registro.

Example: En el caso que el limite de tiempo se expire, no se podra usar ese codigo para el resgitro.
	Given que el tiempo limite ya se expiro
	When quiero ingresar el codigo
	Then No podre continuar y tendre que recibir otro para continuar

Example: En el caso que el codigo fue introducido dentro dl limite del tiempo, se puede continuar el proceso.
	Given que el tiempo limite todavia no expira
	When ingreso el codigo
	Then Puedo continuar el proceso de registro.

Example: En el caso que el codigo fue confirmado pero el correo no es autentico no se puede continuar con el registro.
	Given Ya confirme el codigo de verificacion
	When Se revisa la autenticidad del correo
	Then No se completara el proceso de registro

Example: En el caso que el codigo fue confirmado y el correo si es autentico, se puede continuar con el registro.
	Given Ya confirme el codigo de verificacion
	When Se revisa la autenticidad del correo
	Then Se completara el registro y quedara como nuevo usuario.
