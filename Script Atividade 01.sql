CREATE DATABASE teste_exercicio

USE teste_exercicio

CREATE SCHEMA rh
CREATE SCHEMA crm
CREATE SCHEMA vendas
CREATE SCHEMA compras
CREATE SCHEMA financas

CREATE TABLE compras.produtos (
	id_produto INT, 
	nome_produto VARCHAR(255), 
	preco NUMERIC(9, 2), 
	estoque FLOAT, 
	PRIMARY KEY (id_produto)
)
CREATE TABLE crm.clientes (
	id_cliente INT, 
	nome_cliente VARCHAR(255), 
	telefone VARCHAR(11), 
	email VARCHAR(255), 
	endereco VARCHAR(255), 
	PRIMARY KEY (id_cliente)
)
CREATE TABLE rh.funcionarios (
	id_funcionario INT, 
	nome_funcionario VARCHAR(255), 
	salario DECIMAL(9, 4), 
	PRIMARY KEY (id_funcionario)
)
CREATE TABLE vendas.pedidos (
	id_pedido INT, 
	id_funcionario INT, 
	id_cliente INT, 
	data_pedido DATETIME, 
	total_pedido NUMERIC(9, 2), 
	PRIMARY KEY (id_pedido), 
	FOREIGN KEY (id_funcionario) REFERENCES rh.funcionarios(id_funcionario),
	FOREIGN KEY (id_cliente) REFERENCES crm.clientes(id_cliente)
)
CREATE TABLE financas.pagamentos (
	id_pagamento INT,
	id_pedido INT,
	valor NUMERIC(9, 2),
	vencimento DATETIME,
	PRIMARY KEY (id_pagamento),
	FOREIGN KEY (id_pedido) REFERENCES vendas.pedidos(id_pedido)
)
CREATE TABLE vendas.pedidos_itens (
	id_pedido INT,
	id_produto INT,
	quantidade FLOAT,
	total_item NUMERIC(9, 2),
	FOREIGN KEY (id_pedido) REFERENCES vendas.pedidos(id_pedido),
	FOREIGN KEY (id_produto) REFERENCES compras.produtos(id_produto)
)

CREATE ROLE roleCompras AUTHORIZATION dbo
CREATE ROLE roleCrm AUTHORIZATION dbo
CREATE ROLE roleFinancas AUTHORIZATION dbo
CREATE ROLE roleRh AUTHORIZATION dbo
CREATE ROLE roleVendas AUTHORIZATION dbo

GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA :: rh TO roleRh
GRANT SELECT ON SCHEMA :: rh TO roleCrm
DENY SELECT ON rh.funcionarios(salario) TO roleCrm
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA :: crm TO roleCrm
GRANT SELECT ON SCHEMA :: compras TO roleCrm
GRANT SELECT ON SCHEMA :: vendas TO roleCrm
GRANT SELECT ON SCHEMA :: financas TO roleCrm
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA :: compras TO roleCompras
GRANT SELECT, INSERT ON SCHEMA :: financas TO roleCompras
GRANT SELECT ON SCHEMA :: rh TO roleVendas
DENY SELECT ON rh.funcionarios(salario) TO roleVendas
GRANT SELECT ON SCHEMA :: crm TO roleVendas
GRANT SELECT ON SCHEMA :: compras TO roleVendas
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA :: vendas TO roleVendas
GRANT SELECT, INSERT ON SCHEMA :: financas TO roleVendas
GRANT SELECT ON SCHEMA :: rh TO roleFinancas
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA :: financas TO roleFinancas

CREATE LOGIN carlos WITH PASSWORD = '123', DEFAULT_DATABASE = teste_exercicio
CREATE USER carlos FROM LOGIN carlos
ALTER ROLE roleRh ADD MEMBER carlos
CREATE LOGIN eduardo WITH PASSWORD = '123', DEFAULT_DATABASE = teste_exercicio
CREATE USER eduardo FROM LOGIN eduardo
ALTER ROLE roleCrm ADD MEMBER eduardo
CREATE LOGIN diogo WITH PASSWORD = '123', DEFAULT_DATABASE = teste_exercicio
CREATE USER diogo FROM LOGIN diogo
ALTER ROLE roleCrm ADD MEMBER diogo
CREATE LOGIN sabrina WITH PASSWORD = '123', DEFAULT_DATABASE = teste_exercicio
CREATE USER sabrina FROM LOGIN sabrina
ALTER ROLE roleCompras ADD MEMBER sabrina
CREATE LOGIN rosa WITH PASSWORD = '123', DEFAULT_DATABASE = teste_exercicio
CREATE USER rosa FROM LOGIN rosa
CREATE LOGIN yuri WITH PASSWORD = '123', DEFAULT_DATABASE = teste_exercicio
CREATE USER yuri FROM LOGIN yuri
CREATE LOGIN carolina WITH PASSWORD = '123', DEFAULT_DATABASE = teste_exercicio
CREATE USER carolina FROM LOGIN carolina
CREATE LOGIN clarice WITH PASSWORD = '123', DEFAULT_DATABASE = teste_exercicio
CREATE USER clarice FROM LOGIN clarice
ALTER ROLE roleVendas ADD MEMBER rosa
ALTER ROLE roleVendas ADD MEMBER yuri
ALTER ROLE roleVendas ADD MEMBER carolina
ALTER ROLE roleVendas ADD MEMBER clarice
CREATE LOGIN daiane WITH PASSWORD = '123', DEFAULT_DATABASE = teste_exercicio
CREATE USER daiane FROM LOGIN daiane
ALTER ROLE roleFinancas ADD MEMBER daiane