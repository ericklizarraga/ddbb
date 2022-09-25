ALTER PROCEDURE SELECT_HistoriaPAcinete(
				@idPacinete paciente
			)
AS
	SET NOCOUNT ON--para que no cuente los registros

	/*
		select * from historia
		select * from HistoriaPaciente
		select * from Paciente
		select * from MedicoEspecialidad
		select * from Medico
	*/

	IF EXISTS(	SELECT * FROM Paciente P
				INNER JOIN HistoriaPaciente HP
				ON HP.idPaciente = P.idPaciente
				INNER JOIN Historia H
				ON H.idHistoria = HP.idHistoria
				INNER JOIN MedicoEspecialidad ME
				ON ME.idMedico = HP.idMedico
				INNER JOIN Medico M
				ON M.idMedico = ME.idMedico
				WHERE P.idPaciente = @idPacinete)

		SELECT * FROM Paciente P
		INNER JOIN HistoriaPaciente HP
		ON HP.idPaciente = P.idPaciente
		INNER JOIN Historia H
		ON H.idHistoria = HP.idHistoria
		INNER JOIN MedicoEspecialidad ME
		ON ME.idMedico = HP.idMedico
		INNER JOIN Medico M
		ON M.idMedico = ME.idMedico
		WHERE P.idPaciente = @idPacinete

	ELSE
		--PRINT '	NO EXISTEN HISTORIAS CLINICAS PARA EL PACIENTE'
		SELECT 0 AS RESULTADO

GO


-- EXEC SELECT_HistoriaPAcinete 1