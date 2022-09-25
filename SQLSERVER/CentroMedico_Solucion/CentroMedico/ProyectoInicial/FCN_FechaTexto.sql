

alter function FCN_FechaTexto( @fecha datetime ) returns varchar (99)
BEGIN
	DECLARE @dia varchar(20)
	DECLARE @mes varchar(20)

	SET @dia = (CASE	
					WHEN DATEPART( DW, @fecha ) = 1 THEN 'Domingo'+' '+CONVERT( char(2), DATEPART( dd, @fecha ) )
					WHEN DATEPART( DW, @fecha ) = 2 THEN 'Lunes'+' '+CONVERT( char(2), DATEPART( dd, @fecha ) )
					WHEN DATEPART( DW, @fecha ) = 3 THEN 'Martes'+' '+CONVERT( char(2), DATEPART( dd, @fecha ) )
					WHEN DATEPART( DW, @fecha ) = 4 THEN 'Miercoles'+' '+CONVERT( char(2), DATEPART( dd, @fecha ) )
					WHEN DATEPART( DW, @fecha ) = 5 THEN 'Jueves'+' '+CONVERT( char(2), DATEPART( dd, @fecha ) )
					WHEN DATEPART( DW, @fecha ) = 6 THEN 'Viernes'+' '+CONVERT( char(2), DATEPART( dd, @fecha ) )
					WHEN DATEPART( DW, @fecha ) = 7 THEN 'Sabado'+' '+CONVERT( char(2), DATEPART( dd, @fecha ) )
				END)
	
	SET @mes  = (CASE
					WHEN DATEPART( MM, @fecha ) = 1 THEN 'Enero'
					WHEN DATEPART( MM, @fecha ) = 2 THEN 'Febrero'
					WHEN DATEPART( MM, @fecha ) = 3 THEN 'Marzo'
					WHEN DATEPART( MM, @fecha ) = 4 THEN 'Abril'
					WHEN DATEPART( MM, @fecha ) = 5 THEN 'Mayo'
					WHEN DATEPART( MM, @fecha ) = 6 THEN 'Junio'
					WHEN DATEPART( MM, @fecha ) = 7 THEN 'Julio'
					WHEN DATEPART( MM, @fecha ) = 8 THEN 'Agosto'
					WHEN DATEPART( MM, @fecha ) = 9 THEN 'Septiembre'
					WHEN DATEPART( MM, @fecha ) = 10 THEN 'Octubre'
					WHEN DATEPART( MM, @fecha ) = 11 THEN 'Noviembre'
					WHEN DATEPART( MM, @fecha ) = 12 THEN 'Diciembre'
				END)

	return @dia+' de '+@mes+' '+convert( char(4), Datepart( YEAR, @fecha ) )
END

-- select dbo.FCN_FechaTexto( GETDATE() ) as resultado
 
-- print dbo.FCN_FechaTexto( '20200521' )