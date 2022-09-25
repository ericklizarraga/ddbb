--drop table tipo

--create table estado(
--	         idEstado int not null identity(1,1),
--			 nombre varchar(70) not null,
--			 CONSTRAINT PK_idEstado PRIMARY KEY (idEstado)
--)


--create table tipo(
--	idTipo int not null identity(1,1) constraint PK_idTipo Primary key,
--	nombre varchar(70) not null	
--)


--CREATE table categoria(
--	idCategoria int not null identity(1,1) constraint PK_idCategoria primary key,
--	nombre varchar(70) not null,
--	img varchar(30),
--	usuario int not null,
--	"state" tinyint default 1
--)

--ALTER TABLE categoria ADD  img varchar(150)
--Alter table categoria ADD constraint FK_usuario foreign key(usuario) references usuario(idUsuario)

--create table usuario(
--	idUsuario int not null identity(1,1) constraint PK_idUsuario Primary key,
--	nombre varchar(70) not null,
--	apellido varchar(70) not null,
--	email varchar(80) not null,
--	password varchar(70) not null,
--	img varchar null,
--	rol int not null constraint FK_rol Foreign key references rol(idRole),
--	"state" tinyint default 1,
--	google tinyint default 0
--)


--create table propiedad(
--	idPropiedad int not null identity(1,1) constraint PK_idPropiedad primary key,
--	titulo varchar(70) not null,
--	precio decimal(10,2) not null,
--	urlvideo varchar(150) null,
--	descripcion text not null,
--	habitaciones int null,
--	wc int null,
--	estacionamiento int null,
--	ubicacion text not null,
--	"state" tinyint default 1,
--	coordenadas varchar(150) null,
--	tipo int not null constraint FK_pTipo FOREIGN key REFERENCES tipo(idTipo),
--	estado int not null constraint FK_pEstado FOREIGN key REFERENCES estado(idEstado),
--	categoria int not null constraint FK_pCategoria FOREIGN key REFERENCES categoria(idCategoria),
--)


--create table hotelCondominio(
--	idHotelCondominio int not null identity(1,1) constraint PK_idHotelCondominio primary key,
--	titulo varchar(200) not null,
--	departamentos int not null,
--	ubicacion text not null,
--	"state" tinyint default 1,
--	coordenadas varchar(150) null,
--	categoria int not null constraint FK_categoria FOREIGN key REFERENCES categoria(idCategoria),
--)

--create table propiedadHotelCondominio(
--	idHotelCondominio int not null constraint FK_idHotelCondominio foreign key REFERENCES hotelCondominio(idHotelCondominio),
--	idPropiedad int not null constraint FK_idPropiedad foreign key REFERENCES propiedad(idPropiedad),
--	constraint PK_propiedadHotelCondominio primary key ( idHotelCondominio, idPropiedad )
--)

--create table imagenPropiedad(
--	idImagen int not null identity(1,1) constraint PK_idImagen primary key,
--	img varchar(80) not null,
--	propiedad int not null constraint FK_propiedad FOREIGN key REFERENCES propiedad(idPropiedad),
--	"state" tinyint default 1,
--)


create table cliente(
	idCliente int not null identity(1,1) constraint PK_idCliente primary key,
	nombre varchar(40) not null,
	apellido varchar(40) not null,
	telefono varchar(12) not null,
	"state" tinyint default 1,
)

create table renta(
	idRenta int not null identity(1,1) constraint PK_idRenta primary key,
	--propiedad int not null constraint FK_idPropiedad foreign key REFERENCES propiedad(idPropiedad),
	cliente int not null constraint FK_idCliente foreign key references cliente(idCliente),
	fechaInicio date not null,
	fechafin date not null,
	adelanto decimal(6,2) null,
	totalPagar decimal(7,2) not null
)
--rentapropiedades

 create table rentaPropiedad(
	idRenta int not null constraint FK_idRenta foreign key references renta(idRenta),
	idPropiedad int not null constraint FK_idPropiedad foreign key references propiedad(idPropiedad),
	constraint PK_rentaPropioedad primary key ( idRenta, idPropiedad )
 )
-- tabla rol

--create table rol(
--	idRole int not null identity(1,1) constraint PK_idRole primary key ,
--	rol varchar(30) not null,
--)

--tabla reservacion
create table reservacion(
	idReservacion int not null identity(1,1) constraint PK_idResevacion primary key,
	cliente int not null constraint FK_idCliente foreign key references cliente(idCliente),
	propiedad int not null constraint FK_idPropiedad foreign key references propiedad(idPropiedad),
	fechaInicio date not null,
	fechaFin date not null,
	adelanto decimal(6,2) null,
	totalPagar decimal(7,2) not null
)

--reservacionPropiedad falta