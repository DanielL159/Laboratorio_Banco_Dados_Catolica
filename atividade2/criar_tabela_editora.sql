DROP DATABASE IF EXISTS biblioteca_pessoal_1s2026;
CREATE DATABASE biblioteca_pessoal_1s2026;
USE biblioteca_pessoal_1s2026;

CREATE TABLE editora(
	id_editora INT AUTO_INCREMENT NOT NULL,
	nome VARCHAR(255) UNIQUE NOT NULL,
    cidade VARCHAR(64),
    estado VARCHAR(64),
    pais VARCHAR(64),
    data_cadastro TIMESTAMP DEFAULT TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
)