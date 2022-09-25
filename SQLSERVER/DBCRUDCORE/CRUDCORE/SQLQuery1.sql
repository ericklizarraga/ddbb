
--create database DBCrudCore

use DBCrudCore

CREATE TABLE CONTACTO(
	IdContacto int identity(1,1) primary key,
	Nombre varchar(50) not null,
	Telefono varchar(12) null,
	Correo varchar(50) null
)


-----------------------------------------------------------------------


alter procedure sp_Listar
as
	begin
		select * from CONTACTO
	end
go

-----------------------------------------------------------------------


alter proc sp_Obtener( @IdContacto int )
as
	begin
		select * from CONTACTO where IdContacto = @IdContacto
	end
go

-----------------------------------------------------------------------

alter procedure sp_Guardar( @Nombre varchar(50), @Telefono varchar(12), @Correo varchar(50) )
as
	begin
		insert into CONTACTO( Nombre, Telefono, Correo ) values( @Nombre, @Telefono, @Correo )
	end
go

-----------------------------------------------------------------------

ALTER procedure sp_Editar( @IdContacto int ,@Nombre varchar(50), @Telefono varchar(12), @Correo varchar(50) )
as
	begin
		update  CONTACTO set Nombre = @Nombre, Telefono = @Telefono, Correo = @Correo WHERE IdContacto = @IdContacto
	end
go


-----------------------------------------------------------------------

ALTER PROC sp_Eliminar( @IdContacto int )
as
	begin
		DELETE FROM CONTACTO WHERE IdContacto = @IdContacto
	end
go