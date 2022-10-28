use locadora;

-- Essa função visa criar uma maneira de facilitar a pesquisa dos filmes, para que o usuário possa pesquisar seus filmes sem precisa digitar todo o título em si.

-- SCRIPT PARA CRIAÇÃO DA FUNÇÃO
/*  
CREATE FUNCTION `filme_nome` (nome VARCHAR(100)) 
    RETURNS varchar(150) 
    READS SQL DATA
BEGIN
    DECLARE delimitador VARCHAR(100);
    DECLARE nome_filme VARCHAR(100);
    SET delimitador = concat("%", nome, "%");
    SET nome_filme = (SELECT titulo FROM filme WHERE titulo LIKE delimitador);
RETURN nome_filme;
END
*/

-- SELECT PARA USAR A FUNÇÃO - Pesquisar filme pelo nome 
SELECT filme_nome ("Vingado");

/* ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */

-- Essa função tem como objetivo mostrar a quantidade de filmes alugados por cliente.

-- SCRIPT PARA CRIAÇÃO DA FUNÇÃO
/*  
CREATE FUNCTION `quantidade_locacao` (nome VARCHAR(120))
    RETURNS varchar(120) 
    READS SQL DATA
BEGIN
	DECLARE pesquisar VARCHAR(120);
	SET pesquisar = (SELECT count(l.id) AS Quantidade_de_locacao FROM cliente AS c INNER JOIN locacao AS l ON c.id = l.cliente_fk WHERE c.nome = nome);
RETURN pesquisar;
END
*/

-- SELECT PARA USAR A FUNÇÃO - Pesquisar pelo nome do cliente
SELECT quantidade_locacao('Augusto Martins');



