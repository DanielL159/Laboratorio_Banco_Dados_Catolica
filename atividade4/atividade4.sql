SELECT l.titulo
FROM livro l
JOIN autor a ON l.id_autor = a.id_autor
WHERE a.nome = 'J.K. Rowling';

SELECT l.titulo
FROM livro l
JOIN categoria c ON l.id_categoria = c.id_categoria
WHERE c.nome = 'Filosofia';

UPDATE categoria
SET nome = 'Censurado'
WHERE nome = 'Filosofia';

SELECT l.titulo
FROM livro l
JOIN categoria c ON l.id_categoria = c.id_categoria
WHERE c.nome = 'Censurado';

DELETE l
FROM livro l
JOIN categoria c ON l.id_categoria = c.id_categoria
WHERE c.nome = 'Censurado';