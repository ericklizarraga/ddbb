
create proc SELECT_EspecialidadesMedicas
as
	set nocount on
	IF EXISTS(SELECT * FROM Especialidad )
		SELECT * FROM Especialidad
	ELSE
		SELECT 0 AS resultado
go

-- exec SELECT_EspecialidadesMedicas