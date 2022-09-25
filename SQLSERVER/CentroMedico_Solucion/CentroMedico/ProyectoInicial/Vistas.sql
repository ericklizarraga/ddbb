-------------------SELECT A LAS VISTAS------------
-- SELECT * FROM PacienteTurnoPendiente
-- SELECT * FROM VistaPrueba

ALTER VIEW  PacienteTurnoPendiente
AS
	SELECT P.idPaciente,CONCAT( P.nombre,' ', P.apellido ) AS CLIENTE, T.idTurno,T.estado
	FROM Paciente P
	INNER JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente
	INNER JOIN TURNO T
	ON T.idTurno = TP.idTurno
	WHERE ISNULL( T.estado, 1 ) = 1 --- SI EL ESTADO ES NULL POR DEFECTO LE PONE 1
GO

-- los nombre de las columnas no debe ser repetidos en las vistas