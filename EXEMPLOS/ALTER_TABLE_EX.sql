/*Adicionar coluna*/
ALTER TABLE usuario
ADD telefone VARCHAR(20) AFTER nome;

/*Remover (excluir) coluna*/
ALTER TABLE usuario
DROP COLUMN telefone;

/*Modificar coluna (tipo, tamanho, restrições)*/
ALTER TABLE usuario
MODIFY nome VARCHAR(300) NOT NULL;

/*Renomear coluna*/
ALTER TABLE usuario
CHANGE nome nome_completo VARCHAR(255) NOT NULL;
