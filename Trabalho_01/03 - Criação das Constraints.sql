ALTER TABLE trabalho_1.dbo.clientes ADD CONSTRAINT PK_CLIENTES_CPF_CLIENTE PRIMARY KEY NONCLUSTERED (cpf_cliente)
ALTER TABLE trabalho_1.dbo.clientes ADD CONSTRAINT UN_CLIENTES_EMAIL UNIQUE CLUSTERED (email)
ALTER TABLE trabalho_1.dbo.clientes ADD CONSTRAINT CK_CLIENTES_CATEGORIA_CNH CHECK (categoria_cnh LIKE '[A, B, C, D, E]')



ALTER TABLE trabalho_1.dbo.locacoes ADD CONSTRAINT DF_LOCACOES_DATA_LOCACAO DEFAULT CURRENT_TIMESTAMP FOR data_locacao



ALTER TABLE trabalho_1.dbo.carros ADD CONSTRAINT CK_CARROS_ANO CHECK (ano > 2000)



SELECT * FROM trabalho_1.sys.default_constraints
SELECT * FROM trabalho_1.sys.check_constraints
SELECT * FROM trabalho_1.sys.indexes WHERE name LIKE '%CLIENTES%'


/* ASSISTIR AULAS A PARTIR DA SEMANA 5 */