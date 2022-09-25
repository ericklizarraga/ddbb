



--select
create type pais  from char(3)

select * from Paciente
select top 3 * from Paciente
select top 1  * from Turno order by fechaTurno desc
select * from Turno 
select distinct(apellido) from Paciente 
select apellido from Paciente group by apellido

--funciones de gregado
select apellido,MAX(idPaciente) as ids from Paciente group by apellido
select sum(idPaciente) from paciente
select sum(idPaciente),apellido from paciente group by apellido
select avg(idPaciente) as promedio from paciente
select COUNT(*) from Paciente--cuenta los rows
select COUNT(apellido) from Paciente where apellido ='lizarraga'
select estado from Turno group by estado having COUNT(estado) = 3 --el having siempre va con el group by--el estado tiene que estar 3 veces

--operadores logicos
select * from Paciente where apellido = 'lizarraga' and nombre = 'pedro'
select * from Paciente where apellido = 'lizarraga' or nombre = 'pedro'
select * from Turno where estado in(1,3)--trae los estado que tengan como estado 1 o 3
select * from Paciente where apellido in('lizarraga','ramirez')
select * from Paciente where apellido like '%lizarr%'
select * from Paciente where apellido not like '%lizarr%'--el not lo podemos apollicar casi en todo como: in,having etc
select * from Turno where fechaTurno between '2020-03-02' and '2020-12-30'--tambien toma en cuenta la hora y segundo 
select * from Paciente where apellido = 'lizarraga' and (nombre = 'pedro' or idPais = 'MX') and idPaciente in(4,3)--si y solo si el apellido es lizarraga me debuelve registros


--insert
insert into Paciente values('pedro','lizarraga','2010-12-09','calle 14','MX','1234567890','pedro@pedro.com','rey de las pavas')

--delete 
delete from Paciente where nombre='pedro'

--udate
update Paciente  set observacion='esta de la verga' where idPaciente=5


------------------------------------------------procedures----------------
exec S_paciente 4--si hay mas parametros los separamos por coma ejemlo: 4,3,'data','esto',1

ALTER TABLE Paciente ADD estado smallint
ALTER TABLE Paciente ALTER COLUMN estado bit
ALTER TABLE Paciente DROP COLUMN estado
-- drop table ejemplo
-- drop database dataEjemplo 
-- truncate table ejemplo -- reinicia la tabla borra todos los registros