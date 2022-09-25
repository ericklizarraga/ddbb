

--- tabla temporal en memoria solo existe durante la execucion del script
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
declare @mitabla Table( id int identity(1,1),  pais varchar(50) )

insert into @mitabla( pais ) values( 'mexico')
insert into @mitabla( pais ) values( 'cuba')
insert into @mitabla( pais ) values( 'chille')
insert into @mitabla( pais ) values( 'eua')
insert into @mitabla( pais ) values( 'canada')

select * from @mitabla

-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------

-- tabla temporal fisica solo va a existir mientra el servidor este corriendo
-- si se reinica el server la tabla se elimina

create table #mitablaTemFisica ( id int identity(1,1), nombre varchar(29), apellido varchar(49) )

insert into #mitablaTemFisica values('pedro','lopez')
insert into #mitablaTemFisica values('erick','ramirez')
insert into #mitablaTemFisica values('tian','ramos')
insert into #mitablaTemFisica values('varo','tirado')

select * from #mitablaTemFisica

drop table #mitablaTemFisica

-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
--SCRIPT

DECLARE @Turnos TABLE( id INT IDENTITY(1,1), idTurno turno, idPaciente paciente ) 
DECLARE @idPaciente paciente = 4

INSERT INTO @Turnos (idTurno, idPaciente)
	SELECT TurnoPaciente.idTurno, Paciente.idPaciente from Paciente
	INNER JOIN TurnoPaciente
	ON  TurnoPaciente.idPaciente = Paciente.idPaciente


DECLARE @i INT, @total int
SET @i = 1
SET @total = ( SELECT COUNT(*) FROM @Turnos )

WHILE @i <= @total
BEGIN
	IF (SELECT idPaciente FROM @Turnos WHERE id = @i) <> @idPaciente
		DELETE FROM @Turnos WHERE ID = @i

	SET @i += 1 
END

select * from Paciente p
	INNER JOIN @Turnos T
	ON T.idPaciente = P.idPaciente