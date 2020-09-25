IF NOT EXISTS (SELECT name FROM trabalho_1.sys.indexes WHERE name = 'PK_MARCAS_ID_MARCA')
BEGIN
	ALTER TABLE trabalho_1.dbo.marcas ADD CONSTRAINT PK_MARCAS_ID_MARCA PRIMARY KEY (id_marca)
END ELSE
BEGIN
	PRINT 'A constraint PK_MARCAS_ID_MARCA já existe'
END


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.indexes WHERE name = 'PK_FUNCIONARIOS_ID_FUNCIONARIO')
BEGIN
	ALTER TABLE trabalho_1.dbo.funcionarios ADD CONSTRAINT PK_FUNCIONARIOS_ID_FUNCIONARIO PRIMARY KEY (id_funcionario)
END ELSE
BEGIN
	PRINT 'A constraint PK_FUNCIONARIOS_ID_FUNCIONARIO já existe'
END


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.indexes WHERE name = 'PK_CLIENTES_CPF_CLIENTE')
BEGIN
	ALTER TABLE trabalho_1.dbo.clientes ADD CONSTRAINT PK_CLIENTES_CPF_CLIENTE PRIMARY KEY NONCLUSTERED (cpf_cliente)
END ELSE
BEGIN
	PRINT 'A constraint PK_CLIENTES_CPF_CLIENTE já existe'
END


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.indexes WHERE name = 'UN_CLIENTES_EMAIL')
BEGIN
	ALTER TABLE trabalho_1.dbo.clientes ADD CONSTRAINT UN_CLIENTES_EMAIL UNIQUE CLUSTERED (email)
END ELSE
BEGIN
	PRINT 'A constraint UN_CLIENTES_EMAIL já existe'
END


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.check_constraints WHERE name = 'CK_CLIENTES_CATEGORIA_CNH')
BEGIN
	ALTER TABLE trabalho_1.dbo.clientes ADD CONSTRAINT CK_CLIENTES_CATEGORIA_CNH CHECK (categoria_cnh LIKE '[A, B, C, D, E]')
END ELSE
BEGIN
	PRINT 'A constraint CK_CLIENTES_CATEGORIA_CNH já existe'
END


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.indexes WHERE name = 'PK_CARROS_ID_CARRO')
BEGIN
	ALTER TABLE trabalho_1.dbo.carros ADD CONSTRAINT PK_CARROS_ID_CARRO PRIMARY KEY (id_carro)
END ELSE
BEGIN
	PRINT 'A constraint PK_CARROS_ID_CARRO já existe'
END


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.check_constraints WHERE name = 'CK_CARROS_ANO')
BEGIN
	ALTER TABLE trabalho_1.dbo.carros ADD CONSTRAINT CK_CARROS_ANO CHECK (ano > 2000)
END ELSE
BEGIN
	PRINT 'A constraint CK_CARROS_ANO já existe'
END


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.foreign_keys WHERE name = 'FK_CARROS_REF_MARCAS')
BEGIN
	ALTER TABLE trabalho_1.dbo.carros ADD CONSTRAINT FK_CARROS_REF_MARCAS FOREIGN KEY (id_marca) REFERENCES trabalho_1.dbo.marcas(id_marca) ON UPDATE CASCADE
END ELSE
BEGIN
	PRINT 'A constraint FK_CARROS_REF_MARCAS já existe'
END


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.indexes WHERE name = 'PK_LOCACOES_ID_LOCACAO')
BEGIN
	ALTER TABLE trabalho_1.dbo.locacoes ADD CONSTRAINT PK_LOCACOES_ID_LOCACAO PRIMARY KEY (id_locacao)
END ELSE
BEGIN
	PRINT 'A constraint PK_LOCACOES_ID_LOCACAO já existe'
END


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.foreign_keys WHERE name = 'FK_LOCACOES_REF_FUNCIONARIOS')
BEGIN
	ALTER TABLE trabalho_1.dbo.locacoes ADD CONSTRAINT FK_LOCACOES_REF_FUNCIONARIOS FOREIGN KEY (id_funcionario) REFERENCES trabalho_1.dbo.funcionarios(id_funcionario) ON UPDATE CASCADE
END ELSE
BEGIN
	PRINT 'A constraint FK_LOCACOES_REF_FUNCIONARIOS já existe'
END


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.foreign_keys WHERE name = 'FK_LOCACOES_REF_CARROS')
BEGIN
	ALTER TABLE trabalho_1.dbo.locacoes ADD CONSTRAINT FK_LOCACOES_REF_CARROS FOREIGN KEY (id_carro) REFERENCES trabalho_1.dbo.carros(id_carro) ON UPDATE CASCADE
END ELSE
BEGIN
	PRINT 'A constraint FK_LOCACOES_REF_CARROS já existe'
END


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.foreign_keys WHERE name = 'FK_LOCACOES_REF_CLIENTES')
BEGIN
	ALTER TABLE trabalho_1.dbo.locacoes ADD CONSTRAINT FK_LOCACOES_REF_CLIENTES FOREIGN KEY (cpf_cliente) REFERENCES trabalho_1.dbo.clientes(cpf_cliente) ON UPDATE CASCADE
END ELSE
BEGIN
	PRINT 'A constraint FK_LOCACOES_REF_CLIENTES já existe'
END


IF NOT EXISTS (SELECT name FROM trabalho_1.sys.default_constraints WHERE name = 'DF_LOCACOES_DATA_LOCACAO')
BEGIN
	ALTER TABLE trabalho_1.dbo.locacoes ADD CONSTRAINT DF_LOCACOES_DATA_LOCACAO DEFAULT CURRENT_TIMESTAMP FOR data_locacao
END ELSE
BEGIN
	PRINT 'A constraint DF_LOCACOES_DATA_LOCACAO já existe'
END



/*
SELECT * FROM trabalho_1.sys.default_constraints
SELECT * FROM trabalho_1.sys.check_constraints
SELECT * FROM trabalho_1.sys.foreign_keys
SELECT * FROM trabalho_1.sys.indexes
SELECT * FROM trabalho_1.sys.indexes WHERE name LIKE '%MARCAS%'
SELECT * FROM trabalho_1.sys.indexes WHERE name LIKE '%CARROS%'
SELECT * FROM trabalho_1.sys.indexes WHERE name LIKE '%FUNCIONARIOS%'
SELECT * FROM trabalho_1.sys.indexes WHERE name LIKE '%CLIENTES%'
SELECT * FROM trabalho_1.sys.indexes WHERE name LIKE '%LOCACOES%'
*/

/*
	select * from sys.objects where type = 'U'
	Type
	C = CHECK
	D = DEFAULT 
	F = FOREIGN KEY
	P = SQL Stored Procedure
	PK = PRIMARY KEY
	R = Rule
	U = Table
	V = View
*/