declare @var1 varchar (19) = 'Ramiro'
declare @var2 varchar (19) = 'Jotill@'
declare @var3 varchar (19) = '  perrillo  '

print RIGHT( @VAR1, 3)
print LEFT( @VAR1, 3)
print LEN( @VAR1 )
print LOWER( @VAR1 )
print UPPER( @VAR1 )

DECLARE @result varchar(20) = REPLACE( @VAR2, '@', 'o' )
PRINT( @result ) 

print replicate('2', 3)

select @var2  + RTRIM( @var3 ) as resultado

declare @concatenar varchar(200) = CONCAT( @var1,' ', @var2 ) 
print @concatenar

select GETDATE()
select GETUTCDATE()

select DATEADD( day, 3, GETDATE() )
select DATEADD( HOUR, 5, GETDATE() )
select DATEDIFF( YEAR, '20190223', GETDATE() )
SELECT DATEPART( DAY, GETDATE() )--TRAE LA FECHA QUE LE PONGAS POR PARTES
SELECT DATEPART( MONTH, GETDATE() )

PRINT ISDATE('20190102')
PRINT ISDATE('20190132') --verificar la fecha

DECLARE @NUMERO MONEY
SET @NUMERO = 500.40

print CAST( @NUMERO AS INT )
SELECT CAST( idPaciente as money ) from Paciente

SELECT CONVERT( INT, @NUMERO )

DECLARE @FECHA DATETIME
SET  @FECHA = GETDATE()
PRINT @FECHA

PRINT CONVERT( CHAR(20), @FECHA, 112 )
--FORMATOS FECHA
--112
--104