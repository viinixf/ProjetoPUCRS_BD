-- Todas as tabelas estão populadas, QUESTÃO 5 OK;

-- 6) Codificar em SQL quatro das seguintes consultas (escolha apenas 4 das 6 consultas abaixo; se você responder mais de 4, apenas as 4 primeiras serão consideradas):

-- a) Selecionar CPFs e nomes dos trabalhadores que ganham mais do que 2.500,00;
SELECT trb.cpf, trb.nome, sla.salario FROM TRABALHADOR trb JOIN SALARIO sla ON sla.cpf_salario = trb.cpf WHERE sla.salario > 2500;


-- d) Calcular e exibir a folha de pagamento de cada obra. Uma folha de pagamento é determinada pela soma dos salários dos seus trabalhadores.
SELECT sum(salario) AS Salario_Total FROM OBRA obr JOIN TRABALHADOR tr ON obr.codigo_obra = tr.fk_codigo_obra JOIN SALARIO sla ON tr.cpf = sla.cpf_salario WHERE obr.codigo_obra = 115;
SELECT sum(salario) AS Salario_Total FROM OBRA obr JOIN TRABALHADOR tr ON obr.codigo_obra = tr.fk_codigo_obra JOIN SALARIO sla ON tr.cpf = sla.cpf_salario WHERE obr.codigo_obra = 116;


-- e) Selecionar os equipamentos que nunca foram utilizados em nenhuma obra.
SELECT equi.codigo_equipamento, equi.nome FROM EQUIPAMENTO equi LEFT JOIN LOCACAO loc ON loc.fk_codigo_equipamento = equi.codigo_equipamento WHERE loc.fk_codigo_equipamento is null order by equi.codigo_equipamento asc;


-- f) Listar as categorias de equipamentos utilizadas nas obras da construtora ALFA.
-- obs: como foi criada a construtora com nome do aluno, o nome da construtora é "Marcus Vinícius Fritz Gomes"
SELECT cat.codigo_categoria, cat.descricao FROM CATEGORIA cat JOIN EQUIPAMENTO equi ON cat.codigo_categoria = equi.fk_codigo_categoria JOIN LOCACAO loc ON loc.fk_codigo_equipamento = equi.codigo_equipamento; 


-- 7) Produzir um arquivo em formato JSON equivalente a todos os dados relacionados à construtora ALFA (Marcus Vinícius Fritz Gomes),
-- incluindo suas obras e seus respectivos trabalhadores. Use o conceito de dados agregados (e não de relacionamentos via “_id”). 
-- Em outras palavras, deverá haver apenas 1 objeto principal (sendo todos os demais agregados deste objeto).

SELECT trb.cpf, trb.nome AS Nome_Trabalhador,sla.salario AS Salario_Trabalhador, const.codigo_construtora, tel.telefone AS Telefone_Construtora, const.nome_fantasia, obr.codigo_obra, obr.nome AS Obras_Atribuidas FROM CONSTRUTORA const JOIN TELEFONE tel ON 
    tel.fk_codigo_construtora = const.codigo_construtora JOIN OBRA obr ON obr.codigo_obra = const.fk_codigo_obra JOIN trabalhador trb ON trb.fk_codigo_obra = obr.codigo_obra JOIN salario sla ON sla.cpf_salario = trb.cpf;
SELECT cat.descricao, equi.codigo_equipamento, equi.nome FROM EQUIPAMENTO equi JOIN LOCACAO loc ON equi.codigo_equipamento = loc.fk_codigo_equipamento JOIN CATEGORIA cat ON cat.codigo_categoria = fk_codigo_categoria; 