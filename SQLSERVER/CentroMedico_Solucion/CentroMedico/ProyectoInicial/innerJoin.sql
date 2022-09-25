
select * from Paciente
select * from TurnoPaciente

SELECT * FROM Paciente P
INNER JOIN TurnoPaciente T
ON P.idPaciente = T.idPaciente

SELECT * FROM Paciente P
LEFT JOIN TurnoPaciente T
ON P.idPaciente = T.idPaciente

SELECT * FROM Paciente P
RIGHT JOIN TurnoPaciente T
ON P.idPaciente = T.idPaciente


--PARA QUE FUNCIONE LA UNION LAS TABLAS DEBEN DE TENER LA MISMA CANTIDAD DE CAMPOS Y SER DEL MISMO TIPO O
-- LA CONSULTA DEBE DE RETORNAR LA MISMA CANTDAD DE CAMPOS Y EL MISMO TIPO DE DATOS 
-- UNION TRAE LOS REGISTRO SIN REPETICIONES
--UNION ALL TRE REGISTROS REPETIDOS

SELECT * FROM Turno WHERE estado = 3
UNION
SELECT * FROM Turno WHERE estado = 1

SELECT idTurno as ids FROM Turno WHERE estado = 3
UNION
SELECT idPaciente FROM Paciente

SELECT * FROM Turno
UNION ALL
SELECT * FROM Turno