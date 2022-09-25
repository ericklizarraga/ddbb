
-- select * from TurnoEstado
/*
select * from Turno where CONVERT( char(8), fechaTurno, 112 )  < CONVERT( char(8), GETDATE(), 112 )
and estado = 1
*/
use centroMedico
go --tambien se usa para separar las sentencias parece como el await primero ejecuta el use centromedico y despues lo de abajo el update
update Turno set estado = 3 where CONVERT( char(8), fechaTurno, 112 )  < CONVERT( char(8), GETDATE(), 112 )
and estado = 1