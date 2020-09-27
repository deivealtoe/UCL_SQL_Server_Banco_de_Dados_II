# UCL_SQL_Server_Banco_de_Dados_II

## Tipos de Dados

1. Boleanos
2. Caracteres
3. Números
4. Temporais

## 1. Boleanos

Por padrão ele é inicializado como NULL, e pode receber tanto 1 ou 0 bit.

## 2. Caracteres

+ CHAR - Tamanho fixo. Permite inserir até uma quantidade fixa de caracteres e sempre ocupa todo o espaço reservado.
+ VARCHAR - Tamanho variáveis. Permite inserir até uma quantidade que for definida, porém só usa o espaço que for preenchido.

## 3. Números

### Valores inteiros

+ TINYINT
+ SMALLINT
+ INT
+ BIGINT

### Valores quebrados

+ DECIMAL
+ NUMERIC(<quantidade de dígitos>, <quantidade de dígitos após a vírgula>)

## 4. Temporais

+ DATE - Armazena data no formato aaaa/mm/dd.
+ DATETIME - Armzena data e horas no formato aaaa/mm/dd:hh:mm:ss.
+ DATETIME2 - Armazena data e horas com milisegundo no formato aaaa/mm/dd:hh:mm:sssssss.
+ SMALLDATETIME - Armazena data e horas mas respeitando o limite entre '1900-01-01:00:00:00' até '2079-06-06:23:59:59'.
+ TIME - Armazena tempo entre '00:00:00.0000000' até '23:59:59.9999999'.
+ DATETIMEOFFSET - Armazena data e horas incluindo o fuso horário.

## Principais Constraints/Restrições

+ NOT NULL - Não permite valores nulos
+ UNIQUE - Força que todos os valores da coluna sejam diferentes
+ PRIMARY KEY - Usada para referência a um registro, junção de NOT NULL e UNIQUE
+ FOREIGN KEY - Referência a registro(s) de outra tabela
+ CHECK - Força uma condição específica para o valor da coluna
+ DEFAULT - Força um valor padrão quando nenhum é passado
