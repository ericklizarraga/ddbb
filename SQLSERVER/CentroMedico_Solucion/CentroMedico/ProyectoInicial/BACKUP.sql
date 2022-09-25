
--104
--106
--107
--108
--112

-- print CONVERT( char(8), GETDATE(), 112)
-- print CONVERT( char(8), GETDATE(), 108)

declare @fecha char(12) = CONVERT( char(8), GETDATE(), 112) + replace( CONVERT( char(5), GETDATE(), 108), ':', '' )
DECLARE @path varchar(100) = 'C:\backupSQL\CentroMedico'+@fecha+'.bak'
DECLARE @name varchar(20) = 'CentroMedico'+@fecha

BACKUP DATABASE	centroMedico
TO DISK = @path --nombre del archivo donde se guarda el backup
WITH NO_COMPRESSION, NAME = @name --nombre de el backup