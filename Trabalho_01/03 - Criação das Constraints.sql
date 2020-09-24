ALTER TABLE trabalho_1.dbo.marcas ADD CONSTRAINT PK_MARCAS_ID_MARCA PRIMARY KEY (id_marca)



ALTER TABLE trabalho_1.dbo.funcionarios ADD CONSTRAINT PK_FUNCIONARIOS_ID_FUNCIONARIO PRIMARY KEY (id_funcionario)



ALTER TABLE trabalho_1.dbo.clientes ADD CONSTRAINT PK_CLIENTES_CPF_CLIENTE PRIMARY KEY NONCLUSTERED (cpf_cliente)
ALTER TABLE trabalho_1.dbo.clientes ADD CONSTRAINT UN_CLIENTES_EMAIL UNIQUE CLUSTERED (email)
ALTER TABLE trabalho_1.dbo.clientes ADD CONSTRAINT CK_CLIENTES_CATEGORIA_CNH CHECK (categoria_cnh LIKE '[A, B, C, D, E]')



ALTER TABLE trabalho_1.dbo.carros ADD CONSTRAINT PK_CARROS_ID_CARRO PRIMARY KEY (id_carro)
ALTER TABLE trabalho_1.dbo.carros ADD CONSTRAINT CK_CARROS_ANO CHECK (ano > 2000)
ALTER TABLE trabalho_1.dbo.carros ADD CONSTRAINT FK_CARROS_REF_MARCAS FOREIGN KEY (id_marca) REFERENCES trabalho_1.dbo.marcas(id_marca) ON UPDATE CASCADE



ALTER TABLE trabalho_1.dbo.locacoes ADD CONSTRAINT PK_LOCACOES_ID_LOCACAO PRIMARY KEY (id_locacao)
ALTER TABLE trabalho_1.dbo.locacoes ADD CONSTRAINT FK_LOCACOES_REF_FUNCIONARIOS FOREIGN KEY (id_funcionario) REFERENCES trabalho_1.dbo.funcionarios(id_funcionario) ON UPDATE CASCADE
ALTER TABLE trabalho_1.dbo.locacoes ADD CONSTRAINT FK_LOCACOES_REF_CARROS FOREIGN KEY (id_carro) REFERENCES trabalho_1.dbo.carros(id_carro) ON UPDATE CASCADE
ALTER TABLE trabalho_1.dbo.locacoes ADD CONSTRAINT FK_LOCACOES_REF_CLIENTES FOREIGN KEY (cpf_cliente) REFERENCES trabalho_1.dbo.clientes(cpf_cliente) ON UPDATE CASCADE
ALTER TABLE trabalho_1.dbo.locacoes ADD CONSTRAINT DF_LOCACOES_DATA_LOCACAO DEFAULT CURRENT_TIMESTAMP FOR data_locacao



/*
SELECT * FROM trabalho_1.sys.default_constraints
SELECT * FROM trabalho_1.sys.check_constraints
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
