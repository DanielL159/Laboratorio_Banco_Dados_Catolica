DROP DATABASE IF EXISTS biblioteca_pessoal_1s2026;
CREATE DATABASE biblioteca_pessoal_1s2026;
USE biblioteca_pessoal_1s2026;

CREATE TABLE livro(
id_livro INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
titulo VARCHAR(255) NOT NULL,
sinopse TEXT NOT NULL ,
autor VARCHAR(128) NOT NULL,
editora VARCHAR(128) NOT NULL,
categoria  VARCHAR(128) NOT NULL,
ano_publicacao YEAR NOT NULL
);

ALTER TABLE livro
DROP COLUMN autor; 
ALTER TABLE livro
DROP COLUMN editora; 
ALTER TABLE livro
DROP COLUMN categoria; 

ALTER TABLE livro
ADD lido BOOLEAN DEFAULT(0) NOT NULL;

ALTER TABLE livro
ADD data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL; 

ALTER TABLE livro
ADD data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL;

ALTER TABLE livro
ADD id_usuario INT;

ALTER TABLE livro
ADD id_autor INT;

ALTER TABLE livro
ADD id_editora INT;

ALTER TABLE livro
ADD id_categoria INT;

ALTER TABLE livro
ADD CONSTRAINT fk_usuario_livros 
    FOREIGN KEY (id_usuario) 
    REFERENCES usuario(id_usuario)
    ON DELETE CASCADE;
    
ALTER TABLE livro
ADD CONSTRAINT fk_autor_livro 
    FOREIGN KEY (id_autor) 
    REFERENCES autor(id_autor)
    ON DELETE RESTRICT;

ALTER TABLE livro
ADD CONSTRAINT fk_categoria_livros 
    FOREIGN KEY (id_categoria) 
    REFERENCES categoria(id_categoria)
    ON DELETE RESTRICT;

ALTER TABLE livro
ADD CONSTRAINT fk_editora_livros 
    FOREIGN KEY (id_editora) 
    REFERENCES editora(id_editora)
    ON DELETE RESTRICT;