IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'trabalho_1')
BEGIN
	CREATE DATABASE trabalho_1
END ELSE
BEGIN
	PRINT 'Base de Dados trabalho_1 já existe'
END



/*
DROP DATABASE trabalho_1
*/