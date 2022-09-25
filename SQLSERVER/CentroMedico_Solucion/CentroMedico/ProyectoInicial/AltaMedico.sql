-- SELECT * FROM medico
-- select * from MedicoEspecialidad
-- select * from Especialidad

alter proc ALTA_MEDICO(
	@nombre varchar(50),
	@apellido varchar(50),
	@idEspecialidad int ,
	@descripcion varchar(50)
	
)
AS
	IF NOT EXISTS(SELECT * FROM Medico where nombre= @nombre and apellido=@apellido)
	BEGIN
		INSERT INTO Medico( nombre, apellido )
		VALUES( @nombre, @apellido )
		PRINT 'El medico Se Agrego Ok'

		declare @auxIdMedico int
		set @auxIdMedico = @@IDENTITY

		insert into MedicoEspecialidad( idMedico, idEspecialidad, descripcion )
		values( @auxIdMedico, @idEspecialidad, @descripcion )

		PRINT 'se agrego un medicoEspecialidad'
		RETURN
	END
	ELSE
	BEGIN
		PRINT 'El medico Ya Existe'
		RETURN
	END
GO

--- exec ALTA_MEDICO 'PEDRO','RAMOS',2,'ES UNA VERGA'