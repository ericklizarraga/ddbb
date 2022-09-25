--SELECT * FROM Turno
--select * from TurnoPaciente
--select * from TurnoEstado
--select * from Medico
-- select * from Paciente
/*
estado = 1 (pendiente)
esatdo = 2 (realizado)
esatdo = 3 (cancelado)
*/

alter proc ALTA_TURNO(
	@fecha char(14),
	@idPaciente paciente,
	@idmedico medico,
	@observacion observacion = ''
)
AS


	IF NOT EXISTS(SELECT top 1 idTurno FROM Turno where fechaTurno = @fecha )
		BEGIN
		
			insert into Turno ( fechaTurno, estado, observacion )
			values( @fecha, 1, @observacion )
			PRINT 'El turno Se Agrego Ok'
			print concat(@fecha,' ',@idmedico,' ', @idPaciente,' ',@observacion )

			declare @auxIdTurno turno
			set @auxIdTurno = @@IDENTITY--sabe el ultimo registro que se inserto

			insert into TurnoPaciente ( idTurno, idPaciente, idMedico )
			values( @auxIdTurno, @idPaciente, @idmedico )
			PRINT 'El turnoPaciente Se Agrego Ok'

			RETURN
		END
	ELSE
		BEGIN
			PRINT 'El turbo Ya Existe'
			RETURN
		END
GO

exec ALTA_TURNO '20601211 09:34',4,3,'el paciente tiene que estar cagado'