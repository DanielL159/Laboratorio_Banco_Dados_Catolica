DROP DATABASE IF EXISTS biblioteca_pessoal_1s2026;
CREATE DATABASE biblioteca_pessoal_1s2026;
USE biblioteca_pessoal_1s2026;

CREATE TABLE autor(
	id_autor INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) UNIQUE NOT NULL,
    ano_nascimento YEAR,
    ano_morte YEAR,
    apresentacao TEXT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL
);