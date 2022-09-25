--------------------IF ELSE-------------------------------------------

declare @idPaciente int
declare @idTurno int

set @idPaciente = 4

IF @idPaciente = 4
BEGIN
	set @idTurno = 20
	select * from Paciente where idPaciente = @idPaciente
	print CONCAT('IDTURNO ', @idTurno)

	IF EXISTS(select * from Paciente where idPaciente = 4)
		print 'si existe'
END

ELSE
BEGIN
	print 'no se cumplio la condicion'
END

---WHILE LOOP---------------------------------------------------------
declare @contador int = 0
WHILE @contador <=10
BEGIN
	print @contador
	set @contador = @contador + 1
END


------CASE---------------------------------------------------------------------
declare @valor int
declare @resultado char(10) = ''
set @valor =   40

set @resultado = (CASE 
						WHEN @VALOR = 10 THEN 'ROJO'
						WHEN @VALOR = 20 THEN 'VERDE'
						WHEN @VALOR = 30 THEN 'AZUL'
					ELSE 'GRIS'
				  END)

PRINT @resultado

----case
select *,( CASE
				WHEN  estado = 1 THEN 'ROJO'
				WHEN  estado = 2 THEN 'VERDE'
				WHEN  estado = 3 THEN 'AZUL'
			ELSE 'GRIS'
		END) as color  from Turno

------------------------return------------------------------------
declare @cont int = 10
WHILE @cont !=0
BEGIN
	print @cont
	set @cont -= 1 
		IF @cont = 3
			break--return
END
print 'continua...'

--------------------------------try catch---------------------------

declare @variable int 
BEGIN TRY
	set @variable = 'NO'
	print CONCAT('TODO BIEN: ',@variable)
END TRY
BEGIN CATCH
	print 'error en los tipos'
END CATCH