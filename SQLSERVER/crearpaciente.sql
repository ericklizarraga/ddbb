CREATE TABLE Paciente1(
	idPaciente int Not Null,
	nombre varchar(50) Not Null,
	apellido varchar(50) Null,
	fNacimiento date Null,
	domicilio varchar(50) Null,
	idPais char(3) Null,
	telefono varchar(20) Null,
	email varchar(30) Null,
	obsevacion varchar(1000) Null,
	fechaAlta datetime Not Null,
	CONSTRAINT PK_idPaciente PRIMARY KEY (idPaciente)
)