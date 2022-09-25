
-------------------------------------------------------------------------------------
--------------------------------------FUNCIONES ESCALARES-----------------------------------------------
-------------------------------------------------------------------------------------

alter function nombreFuncion  ( @var int)
returns int
as
	begin
		set @var = @var * 5
		return @var
	end
go


-- select dbo.nombreFuncion(10) as resultado
--una funcion siempre returna algo
----------------------------------------------------------------------------------

ALTER FUNCTION concatenar( @apellido varchar(40), @nombre varchar(40) ) returns varchar(80)
as	
	BEGIN
		declare @resultado varchar(80)
		set @resultado = CONCAT( @nombre,' ', @apellido )
		return @resultado;
	END
go

-- SELECT dbo.concatenar('lizarraga','erick') as NombreCompleto


ALTER FUNCTION GetPaisPaciente( @idPaciente paciente) RETURNS VARCHAR(50)
AS
	BEGIN
		DECLARE @pais varchar(50)
		SET @pais = ( SELECT facturacion.Pais.pais FROM Paciente P
							INNER JOIN facturacion.Pais 
							ON facturacion.Pais.idPais = P.idPais
							WHERE idPaciente = @idPaciente )
		RETURN @pais
	END
GO

--- SELECT dbo.GetPaisPaciente(2) AS PAISID

-------------------------------------------------------------------------------------
--------------------------------------FUNCIONES TIPO TABLA-----------------------------------------------
-------------------------------------------------------------------------------------

ALTER FUNCTION listaPaises() RETURNS @paises TABLE( idPais char(3), pais varchar(50) )
AS
	BEGIN
		INSERT INTO @paises VALUES('esp','españa')
		INSERT INTO @paises VALUES('mx','tiramierdas')
		INSERT INTO @paises VALUES('chi','chile')
		INSERT INTO @paises VALUES('eua','estado desunidos')

		RETURN
	END
GO

-- SELECT * FROM dbo.listaPaises()