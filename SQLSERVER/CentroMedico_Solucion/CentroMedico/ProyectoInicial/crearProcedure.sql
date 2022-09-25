create procedure S_paciente(
	@idpaciente int
)
as 

--SET ANSI_NULLS ON--si hay registro null no los trae
 
--SET QUOTED_IDENTIFIER OFF --evita que uses palabras reservadas como campo,nombre de tabla valiable etc
select * from Paciente where idPaciente = @idpaciente

go

