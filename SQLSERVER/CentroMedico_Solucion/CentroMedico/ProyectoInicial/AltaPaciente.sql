--SELECT * FROM PACIENTE
create proc ALTA_PACINETE(
	@dni varchar(20),
	@nombre varchar(50),
	@apellido varchar(50),
	@fnacimiento varchar(8),
	@domicilio varchar(50),
	@idpais char(3),
	@telefono varchar(20)='',
	@email varchar(30),
	@observacion varchar(100)=''
)
AS
	IF NOT EXISTS(SELECT * FROM Paciente WHERE Paciente.dni=@dni)
	BEGIN
		INSERT INTO Paciente(dni, nombre, apellido, fNacimiento, domicilio, idPais, telefono, email, observacion)
		VALUES(@dni, @nombre, @apellido, @fnacimiento, @domicilio, @idpais, @telefono, @email, @observacion)
		PRINT 'El Paciente Se Agrego Ok'
		RETURN
	END
	ELSE
	BEGIN
		PRINT 'El Paciente Ya Existe'
		RETURN
	END
GO

exec ALTA_PACINETE '12445657245','erick','ramos','20220211','calle 1','MX','1234567890','erick@correo.com','no se'