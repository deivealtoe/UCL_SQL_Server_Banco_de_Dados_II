IF NOT EXISTS (SELECT name FROM trabalho_1.sys.tables WHERE name = 'marcas')
BEGIN
	CREATE TABLE trabalho_1.dbo.marcas (
		id_marca INTEGER NOT NULL,
		nome VARCHAR(100) NOT NULL
	)
END ELSE
BEGIN
	PRINT 'O objeto "trabalho_1.dbo.marcas" já existe'
END



IF NOT EXISTS (SELECT name FROM trabalho_1.sys.tables WHERE name = 'funcionarios')
BEGIN
	CREATE TABLE trabalho_1.dbo.funcionarios (
		id_funcionario INTEGER NOT NULL,
		nome VARCHAR(100) NOT NULL,
		senha VARCHAR(44) NOT NULL
	)
END ELSE
BEGIN
	PRINT 'O objeto "trabalho_1.dbo.funcionarios" já existe'
END



IF NOT EXISTS (SELECT name FROM trabalho_1.sys.tables WHERE name = 'clientes')
BEGIN
	CREATE TABLE trabalho_1.dbo.clientes (
		cpf_cliente VARCHAR(11) NOT NULL,
		nome VARCHAR(100) NOT NULL,
		senha VARCHAR(44) NOT NULL,
		data_nasc DATE NOT NULL,
		telefone VARCHAR(18),
		email VARCHAR(100) NOT NULL,
		cep VARCHAR(8),
		endereco VARCHAR(255),
		numero_cnh VARCHAR(30) NOT NULL,
		categoria_cnh CHAR(1) NOT NULL
	)
END ELSE
BEGIN
	PRINT 'O objeto "trabalho_1.dbo.clientes" já existe'
END



IF NOT EXISTS (SELECT name FROM trabalho_1.sys.tables WHERE name = 'carros')
BEGIN
	CREATE TABLE trabalho_1.dbo.carros (
		id_carro INTEGER NOT NULL,
		id_marca INTEGER,
		placa VARCHAR(8) NOT NULL,
		ano INTEGER,
		num_portas INTEGER,
		cor VARCHAR(30),
		moto NUMERIC(3, 1) NOT NULL,
		valor_diaria NUMERIC(10, 2) NOT NULL
	)
END ELSE
BEGIN
	PRINT 'O objeto "trabalho_1.dbo.carros" já existe'
END



IF NOT EXISTS (SELECT name FROM trabalho_1.sys.tables WHERE name = 'locacoes')
BEGIN
	CREATE TABLE trabalho_1.dbo.locacoes (
		id_locacao INTEGER NOT NULL,
		id_funcionario INTEGER,
		id_carro INTEGER,
		cpf_cliente VARCHAR(11),
		data_locacao DATETIME NOT NULL,
		data_devolucao_prev DATETIME NOT NULL,
		data_devolucao_real DATETIME,
		valor_locacao NUMERIC(10, 2),
		desconto NUMERIC(10, 2),
		acrescimo NUMERIC(10, 2)
	)
END ELSE
BEGIN
	PRINT 'O objeto "trabalho_1.dbo.locacoes" já existe'
END



/*
DROP TABLE trabalho_1.dbo.marcas
DROP TABLE trabalho_1.dbo.funcionarios
DROP TABLE trabalho_1.dbo.clientes
DROP TABLE trabalho_1.dbo.carros
DROP TABLE trabalho_1.dbo.locacoes
*/

-- SELECT * FROM trabalho_1.sys.columns