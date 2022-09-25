ALTER PROCEDURE SELECT_TurnosPacientes(
											@idPaciente paciente
										)
AS
	SET NOCOUNT ON --para que no cuente los registros
	-- select * from Paciente
	-- select * from TurnoPaciente
	-- select * from Turno
	-- SELECT * FROM MedicoEspecialidad


	SELECT * FROM Paciente P
	INNER JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente
	INNER JOIN Turno T
	ON T.idTurno = TP.idTurno
	INNER JOIN MedicoEspecialidad M
	ON M.idMedico = TP.idMedico
	WHERE P.idPaciente = @idPaciente
GO

-- EXEC SELECT_TurnosPacientes 2