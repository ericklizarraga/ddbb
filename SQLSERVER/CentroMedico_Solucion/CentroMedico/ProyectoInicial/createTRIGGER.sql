
ALTER TRIGGER PacientesCreados	ON	Paciente
AFTER INSERT
AS
	IF( SELECT idPais FROM inserted ) = 'MX' --- trae el ultimom registro insertado
	BEGIN
		INSERT INTO PacienteLog ( idPaciente, idPais, fechaAlta)
				SELECT Inserted.idPaciente,Inserted.idPais, GETDATE() FROM Inserted
	END
GO

---		select * from Paciente
--		select * from PacienteLog