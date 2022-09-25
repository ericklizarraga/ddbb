

-- SELECT * FROM Turno
-- SELECT * FROM TurnoPaciente
 -- exec UPD_Turno 11,2,'el adan es joto'

alter PROCEDURE UPD_Turno( @idTurno turno,
							@estado tinyint,
							@observacion observacion)
AS
	SET NOCOUNT ON
	if exists( SELECT * FROM Turno WHERE idTurno = @idTurno )
		UPDATE Turno SET estado = @estado, observacion= @observacion where idTurno  = @idTurno
	ELSE
		SELECT CONCAT('no Existe un Turno con ese id:',@idTurno) as Resultado
GO 