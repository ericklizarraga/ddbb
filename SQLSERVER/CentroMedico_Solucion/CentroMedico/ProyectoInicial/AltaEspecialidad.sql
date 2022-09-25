---  select * from  Especialidad
SP_HELPTEXT ALTA_ESPECIALIDAD

ALTER PROCEDURE ALTA_ESPECIALIDAD(
	@especialidad varchar(300)
)

AS
	IF NOT EXISTS( SELECT  * FROM Especialidad WHERE especialidad = @especialidad  )
		BEGIN
			INSERT INTO Especialidad (especialidad ) VALUES( @especialidad )
			PRINT 'SE AGREGO UNA ESPECIALIDAD'
		END
	ELSE
		BEGIN
			PRINT 'LA ESPECIALIDAD YA EXISTE'
		END
GO

EXEC ALTA_ESPECIALIDAD 'LECHE'