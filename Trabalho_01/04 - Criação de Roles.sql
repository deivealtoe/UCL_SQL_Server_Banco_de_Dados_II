USE trabalho_1



CREATE ROLE ro_vendas AUTHORIZATION dbo
CREATE ROLE ro_gerentes AUTHORIZATION dbo
CREATE ROLE ro_clientes AUTHORIZATION dbo



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



CREATE LOGIN venda WITH PASSWORD = '123', DEFAULT_DATABASE = trabalho_1
CREATE USER venda FROM LOGIN venda

CREATE LOGIN cliente WITH PASSWORD = '123', DEFAULT_DATABASE = trabalho_1
CREATE USER cliente FROM LOGIN cliente

CREATE LOGIN gerente WITH PASSWORD = '123', DEFAULT_DATABASE = trabalho_1
CREATE USER gerente FROM LOGIN gerente



ALTER ROLE ro_vendas ADD MEMBER venda
ALTER ROLE ro_clientes ADD MEMBER cliente
ALTER ROLE ro_gerentes ADD MEMBER gerente



/*
DROP ROLE ro_vendas
DROP ROLE ro_gerente
DROP ROLE ro_cliente
*/
