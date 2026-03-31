DROP DATABASE IF EXISTS biblioteca_pessoal_1s2026;
CREATE DATABASE biblioteca_pessoal_1s2026;
USE biblioteca_pessoal_1s2026;

CREATE TABLE usuario(
id_usuario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
email VARCHAR(158) NOT NULL UNIQUE,
data_cadastro DATE NOT NULL
);
