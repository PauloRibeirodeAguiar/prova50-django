CREATE DATABASE IF NOT EXISTS prova50;
USE prova50;

CREATE TABLE funcao_sintatica (
    id_funcao_sintatica INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80), 
    descricao VARCHAR(200)
);

CREATE TABLE oracao_principal (
    id_oracao_principal INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    oracao TEXT NOT NULL
);

CREATE TABLE oracao_subordinada (
    id_oracao_subordinada INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_tipo VARCHAR(80),
    oracao TEXT NOT NULL,
    fk_funcao_sintatica INT NOT NULL,
    fk_oracao_principal INT NOT NULL,
    
    CONSTRAINT fk_oracao_sub_funcao FOREIGN KEY (fk_funcao_sintatica) REFERENCES funcao_sintatica(id_funcao_sintatica),    
    CONSTRAINT fk_oracao_sub_principal FOREIGN KEY (fk_oracao_principal) REFERENCES oracao_principal(id_oracao_principal)
);
