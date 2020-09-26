INSERT INTO trabalho_1.dbo.marcas (id_marca, nome) VALUES (1, 'Chevrolet')
INSERT INTO trabalho_1.dbo.marcas (id_marca, nome) VALUES (2, 'Volkswagen')
INSERT INTO trabalho_1.dbo.marcas (id_marca, nome) VALUES (3, 'Fiat')
INSERT INTO trabalho_1.dbo.marcas (id_marca, nome) VALUES (4, 'Renault')
INSERT INTO trabalho_1.dbo.marcas (id_marca, nome) VALUES (5, 'Ford')

SELECT * FROM trabalho_1.dbo.marcas



INSERT INTO trabalho_1.dbo.carros (id_carro, id_marca, placa, ano, num_portas, cor, motor, valor_diaria) VALUES (1, 1, 'ABCD1234', 2020, 2, 'Vermelho', 2.0, 130.99)
INSERT INTO trabalho_1.dbo.carros (id_carro, id_marca, placa, ano, num_portas, cor, motor, valor_diaria) VALUES (2, 2, 'EFGH5678', 2015, 4, 'Azul', 3.1, 199.99)
INSERT INTO trabalho_1.dbo.carros (id_carro, id_marca, placa, ano, num_portas, cor, motor, valor_diaria) VALUES (3, 3, 'IJKL9101', 2010, 2, 'Preto', 2.5, 150.99)
INSERT INTO trabalho_1.dbo.carros (id_carro, id_marca, placa, ano, num_portas, cor, motor, valor_diaria) VALUES (4, 4, 'MNOP1121', 2005, 4, 'Amarelo', 1.9, 50.99)
INSERT INTO trabalho_1.dbo.carros (id_carro, id_marca, placa, ano, num_portas, cor, motor, valor_diaria) VALUES (5, 5, 'QRST3141', 2001, 2, 'Verde', 4.5, 250.99)

SELECT * FROM trabalho_1.dbo.carros



INSERT INTO trabalho_1.dbo.clientes (cpf_cliente, nome, senha, data_nasc, telefone, email, cep, endereco, numero_cnh, categoria_cnh)
VALUES ('12345678910', 'Pedro Lucas', '123', '01/01/2000', '988776655', 'pedrolucas@email.com', '29100999', 'R. Zero Um', '98765412345', 'A')
INSERT INTO trabalho_1.dbo.clientes (cpf_cliente, nome, senha, data_nasc, telefone, email, cep, endereco, numero_cnh, categoria_cnh)
VALUES ('65498715645', 'Gustavo', '123', '05/05/1995', '922774455', 'gustavo@email.com', '29222888', 'R. Zero Cinco', '84516234798', 'B')
INSERT INTO trabalho_1.dbo.clientes (cpf_cliente, nome, senha, data_nasc, telefone, email, cep, endereco, numero_cnh, categoria_cnh)
VALUES ('13256489561', 'Gabrielly', '123', '04/04/1994', '866776655', 'gabrielly@email.com', '29111999', 'R. Zero Quatro', '485965978495', 'C')
INSERT INTO trabalho_1.dbo.clientes (cpf_cliente, nome, senha, data_nasc, telefone, email, cep, endereco, numero_cnh, categoria_cnh)
VALUES ('01245678415', 'Maria', '123', '03/03/2003', '922556655', 'maria@email.com', '29555999', 'R. Zero Três', '15421563263', 'D')
INSERT INTO trabalho_1.dbo.clientes (cpf_cliente, nome, senha, data_nasc, telefone, email, cep, endereco, numero_cnh, categoria_cnh)
VALUES ('54612548789', 'João Pedro', '123', '02/02/1992', '988771166', 'joaopedro@email.com', '29100555', 'R. Zero Dois', '46512548791', 'E')

SELECT * FROM trabalho_1.dbo.clientes



INSERT INTO trabalho_1.dbo.funcionarios (id_funcionario, nome, senha) VALUES (1, 'Carla', '123')
INSERT INTO trabalho_1.dbo.funcionarios (id_funcionario, nome, senha) VALUES (2, 'Pedro', '123')
INSERT INTO trabalho_1.dbo.funcionarios (id_funcionario, nome, senha) VALUES (3, 'Luiza', '123')
INSERT INTO trabalho_1.dbo.funcionarios (id_funcionario, nome, senha) VALUES (4, 'Gabriel', '123')
INSERT INTO trabalho_1.dbo.funcionarios (id_funcionario, nome, senha) VALUES (5, 'Carlos', '123')

SELECT * FROM trabalho_1.dbo.funcionarios



