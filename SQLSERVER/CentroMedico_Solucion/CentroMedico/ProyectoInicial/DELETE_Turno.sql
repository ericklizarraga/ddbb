/*
	select * from turno
	select * from turnoPaciente
*/

-- EXEC DELETE_Turno 36

ALTER PROC DELETE_Turno(
				@idTurno turno)

AS
set nocount on

if exists(SELECT * from Turno
			WHERE idTurno = @idTurno )
	BEGIN
		DELETE FROM TurnoPaciente WHERE idTurno = @idTurno
		DELETE FROM Turno WHERE idTurno = @idTurno
	END
ELSE
	SELECT 0 as resultado
