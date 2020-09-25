USE trabalho_1


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.sysusers WHERE name = 'ro_vendas')
BEGIN
	CREATE ROLE ro_vendas AUTHORIZATION dbo
END ELSE
BEGIN
	PRINT 'A role ro_vendas já existe'
END


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.sysusers WHERE name = 'ro_gerentes')
BEGIN
	CREATE ROLE ro_gerentes AUTHORIZATION dbo
END ELSE
BEGIN
	PRINT 'A role ro_gerentes já existe'
END


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.sysusers WHERE name = 'ro_clientes')
BEGIN
	CREATE ROLE ro_clientes AUTHORIZATION dbo
END ELSE
BEGIN
	PRINT 'A role ro_clientes já existe'
END



GRANT SELECT ON funcionarios TO ro_vendas
GRANT SELECT, INSERT, UPDATE ON marcas TO ro_vendas
GRANT SELECT, UPDATE ON clientes TO ro_vendas
GRANT SELECT, INSERT, UPDATE ON carros TO ro_vendas
GRANT SELECT, UPDATE ON locacoes TO ro_vendas

GRANT SELECT ON funcionarios TO ro_clientes
GRANT SELECT ON marcas TO ro_clientes
GRANT SELECT, INSERT, UPDATE ON clientes TO ro_clientes
GRANT SELECT ON carros TO ro_clientes
GRANT SELECT, INSERT, UPDATE ON locacoes TO ro_clientes

GRANT SELECT, INSERT, UPDATE, DELETE ON funcionarios TO ro_gerentes
GRANT SELECT, INSERT, UPDATE, DELETE ON marcas TO ro_gerentes
GRANT SELECT, INSERT, UPDATE, DELETE ON clientes TO ro_gerentes
GRANT SELECT, INSERT, UPDATE, DELETE ON carros TO ro_gerentes
GRANT SELECT, INSERT, UPDATE, DELETE ON locacoes TO ro_gerentes



IF NOT EXISTS (SELECT name FROM trabalho_1.sys.syslogins WHERE name = 'venda' AND dbname = 'trabalho_1')
BEGIN
	CREATE LOGIN venda WITH PASSWORD = '123', DEFAULT_DATABASE = trabalho_1
END ELSE
BEGIN
	PRINT 'O login venda já existe'
END

IF NOT EXISTS (SELECT name FROM trabalho_1.sys.sysusers WHERE name = 'venda')
BEGIN
	CREATE USER venda FROM LOGIN venda
END ELSE
BEGIN
	PRINT 'O usuário venda já existe'
END



IF NOT EXISTS (SELECT name FROM trabalho_1.sys.syslogins WHERE name = 'cliente' AND dbname = 'trabalho_1')
BEGIN
	CREATE LOGIN cliente WITH PASSWORD = '123', DEFAULT_DATABASE = trabalho_1
END ELSE
BEGIN
	PRINT 'O login venda já existe'
END

IF NOT EXISTS (SELECT name FROM trabalho_1.sys.sysusers WHERE name = 'cliente')
BEGIN
	CREATE USER cliente FROM LOGIN cliente
END ELSE
BEGIN
	PRINT 'O usuário cliente já existe'
END



IF NOT EXISTS (SELECT name FROM trabalho_1.sys.syslogins WHERE name = 'gerente' AND dbname = 'trabalho_1')
BEGIN
	CREATE LOGIN gerente WITH PASSWORD = '123', DEFAULT_DATABASE = trabalho_1
END ELSE
BEGIN
	PRINT 'O login gerente já existe'
END

IF NOT EXISTS (SELECT name FROM trabalho_1.sys.sysusers WHERE name = 'gerente')
BEGIN
	CREATE USER gerente FROM LOGIN gerente
END ELSE
BEGIN
	PRINT 'O usuário gerente já existe'
END



IF EXISTS (SELECT name FROM trabalho_1.sys.sysusers WHERE name = 'ro_vendas')
BEGIN
	IF EXISTS (SELECT name FROM trabalho_1.sys.sysusers WHERE name = 'venda')
	BEGIN
		ALTER ROLE ro_vendas ADD MEMBER venda
	END ELSE
	BEGIN
		PRINT 'O usuário venda não existe'
	END
END ELSE
BEGIN
	PRINT 'A role ro_vendas não existe'
END



IF EXISTS (SELECT name FROM trabalho_1.sys.sysusers WHERE name = 'ro_clientes')
BEGIN
	IF EXISTS (SELECT name FROM trabalho_1.sys.sysusers WHERE name = 'cliente')
	BEGIN
		ALTER ROLE ro_clientes ADD MEMBER cliente
	END ELSE
	BEGIN
		PRINT 'O usuário cliente não existe'
	END
END ELSE
BEGIN
	PRINT 'A role ro_clientes não existe'
END



IF EXISTS (SELECT name FROM trabalho_1.sys.sysusers WHERE name = 'ro_gerentes')
BEGIN
	IF EXISTS (SELECT name FROM trabalho_1.sys.sysusers WHERE name = 'gerente')
	BEGIN
		ALTER ROLE ro_gerentes ADD MEMBER gerente
	END ELSE
	BEGIN
		PRINT 'O usuário gerente não existe'
	END
END ELSE
BEGIN
	PRINT 'A role ro_gerentes não existe'
END



/*
DROP ROLE ro_vendas
DROP ROLE ro_gerente
DROP ROLE ro_cliente
DROP LOGIN gerente
DROP LOGIN cliente
DROP LOGIN venda
*/