declare @ordenamiento char(1) = 'A'
declare @valor2 char(1)

set @ordenamiento = ISNULL(@valor2,'A')

print @ordenamiento
