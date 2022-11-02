Use locadora;

/*
Essa SP tem como objetivo de filtrar filmes por suas coluna e escolher qual a ordem
*/ 
-- Criação da STORED PROCEDURES para filtrar filme
CREATE PROCEDURE `filtro_filme`(in campo varchar(80), in ordem varchar(80)) -- Criação das variaveis
BEGIN -- Iniciando a SP
	SET @CampOrder = concat ("ORDER BY ", campo,' ', ordem); -- Setando o ORDER BY com as variaveis
    SET @selec = concat ("SELECT * FROM locadora.filme ", @CampOrder); -- Concatenando o select no ORDER BY
    PREPARE runSQL FROM @selec;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END -- Encerrando a SP

-- Para filtrar basta usar alguma coluna da tabela filme sendo elas - id, titulo, descricao e etc.
call filtro_filme ('id', 'asc');
 
 /*----------------------------------------------------------------------------------------------------------------------*/
-- Criação da STORED PROCEDURES para inserir dados na tabela legenda

/*
Essa SP tem como objetivo inserir dados na tabela legenda, apenas inserindo o id e o idioma.
*/ 

CREATE PROCEDURE `add_legenda`(in id int ,in idioma varchar(5)) -- Criação das variaveis
BEGIN -- Iniciando a SP
		INSERT INTO locadora.legenda (id, idioma) VALUES(id, idioma); -- Criação do insert para a tabela
END -- Encerrando a SP

-- Para inserir dados é necessario usar ID e o idioma com até 5 caracter.
call add_legenda (9, 'ITL');


