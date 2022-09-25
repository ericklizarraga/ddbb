
create view View_MedicosEspecialidades
as
	select	M.idMedico,M.nombre,M.apellido,ME.idEspecialidad,ME.descripcion from medico M
	INNER JOIN MedicoEspecialidad ME
	on ME.idMedico = M.idMedico
go

--
--- SELECT * FROM View_MedicosEspecialidades