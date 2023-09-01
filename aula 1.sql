/**
eliminando base de dados
só executa se existir
*/
DROP DATABASE IF EXISTS aula_banco;

CREATE DATABASE aula_banco; -- criando a base de daods

USE aula_banco;

DROP TABLE IF EXISTS estado;

create table estado (
id INT NOT NULL AUTO_INCREMENT
,nome VARCHAR(200) NOT NULL UNIQUE -- CONSTRAINT INLINE
,sigla CHAR(2) NOT NULL UNIQUE
,ativo CHAR(1) NOT NULL DEFAULT 'S'
,data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
,CONSTRAINT pk_estado PRIMARY KEY (id)
,CONSTRAINT coluna_ativo_deve_ser_S_ou_N CHECK (ativo IN ('S', 'N') ) -- CONSTRAINT OUT OF LINE - regra com nome 
);

INSERT INTO estado (nome,sigla) VALUES ('PARANÁ','PR');
INSERT INTO estado (Nome,sigla) VALUES ('RIO DE JANEIRO','RJ');
INSERT INTO estado (nome,sigla) VALUES ('SÃO PAULO','SP');

SELECT id,nome,sigla,ativo,data_cadastro FROM estado;