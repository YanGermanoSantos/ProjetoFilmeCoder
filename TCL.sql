Use locadora;

START TRANSACTION;
DELETE FROM cliente 
WHERE id = 50;

ROLLBACK;

COMMIT;

/*
INSERT INTO cliente (id, nome, endereco_fk, cpf, email, telefone, usuario, password) 
VALUES (50, 'Antonela', 50, 21162501274, 'teste40@gmail.com', 95841301, 'Antonela', 'f54er69f5e45c5');
*/
START TRANSACTION;
INSERT INTO genero (nome_ator) VALUES ('Aventura');
INSERT INTO genero (nome_ator) VALUES ('Teste1');
INSERT INTO genero (nome_ator) VALUES ('Teste2');
INSERT INTO genero (nome_ator) VALUES ('Teste3');
savepoint lote_1;
INSERT INTO genero (nome_ator) VALUES ('Teste4');
INSERT INTO genero (nome_ator) VALUES ('Teste5');
INSERT INTO genero (nome_ator) VALUES ('Teste6');
INSERT INTO genero (nome_ator) VALUES ('Teste7');
savepoint lote_2;

RELEASE SAVEPOINT lote_1; 

ROLLBACK; 
