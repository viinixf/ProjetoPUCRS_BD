--2) Criar os dados de UMA CONSTRUTORA que tenha o seu nome (nome do aluno) e inserir os dados na tabela correspondente;
-- obs: antes de criar a construtora, deve haver uma obra criada
INSERT INTO CONSTRUTORA
	VALUES (1, 'Marcus Vinícius Fritz Gomes', 115);

------------------------------------------------------------------------------------------------------------------------

-- INSERÇÃO DO TELEFONE DA CONSTRUTORA, obs: telefone é multivalorado, devido a isso, virou uma tabela
INSERT INTO TELEFONE
    VALUES (1, '981671154');

------------------------------------------------------------------------------------------------------------------------

-- 3) Criar 2 obras e 5 funcionários para cada uma dessas obras (i.e. 10 funcionários no total);

INSERT INTO OBRA 
    VALUES (115, 'Condominio dos Lagos', 'Travessa dos Lagos', '100', 'Norte');
INSERT INTO OBRA 
    VALUES (116, 'Condomínio Araras', 'Avenida Rio Grande', '22', 'Lago dos Peixes');


INSERT INTO TRABALHADOR
    VALUES (84649836034, 'Enner Valência', 115);
INSERT INTO TRABALHADOR
    VALUES (58962147852, 'Charles Aranguiz', 115);
INSERT INTO TRABALHADOR
    VALUES (75315935862, 'Alan Patrick', 115);
INSERT INTO TRABALHADOR
    VALUES (85296332147, 'Rodrigo Moledo', 115);
INSERT INTO TRABALHADOR
    VALUES (98563214020, 'Pedro Henrique', 115);

INSERT INTO TRABALHADOR
    VALUES (85214796050, 'Wanderson', 116);
INSERT INTO TRABALHADOR
    VALUES (89456987021, 'Romulo', 116);
INSERT INTO TRABALHADOR
    VALUES (02596304852, 'Gabriel', 116);
INSERT INTO TRABALHADOR
    VALUES (01478565410, 'Johnny', 116);
INSERT INTO TRABALHADOR
    VALUES (96030302584, 'John', 116);

------------------------------------------------------------------------------------------------------------------------

--Inserção dos salários dos trabalhadores para efetuar as consultas; obs: salario virou entidade pois é um atributo multivalorado

INSERT INTO SALARIO
    VALUES (84649836034, 2000);
INSERT INTO SALARIO
    VALUES (58962147852, 3000);
INSERT INTO SALARIO
    VALUES (75315935862, 4000);
INSERT INTO SALARIO
    VALUES (85296332147, 2200);
INSERT INTO SALARIO
    VALUES (98563214020, 2700);
INSERT INTO SALARIO
    VALUES (85214796050, 7000);
INSERT INTO SALARIO
    VALUES (89456987021, 5500);
INSERT INTO SALARIO
    VALUES (02596304852, 4500);
INSERT INTO SALARIO
    VALUES (01478565410, 3700);
INSERT INTO SALARIO
    VALUES (96030302584, 8000);

------------------------------------------------------------------------------------------------------------------------
-- 4) Alocar pelo menos 4 equipamentos (de categorias diferentes) à primeira obra que você criou

-- adicionado primeiro as categorias, pois os equipamentos fazem referência as categorias através da Chave Estrangeira
INSERT INTO CATEGORIA
	VALUES (1, 'Concretagem');
INSERT INTO CATEGORIA
	VALUES (2, 'Acesso e Elevação');
INSERT INTO CATEGORIA
	VALUES (3, 'Geradores e Compressores');
INSERT INTO CATEGORIA
	VALUES (4, 'Andaimes');
INSERT INTO CATEGORIA
	VALUES (5, 'Ferragem Elétrica');

INSERT INTO EQUIPAMENTO
	VALUES (301, 'Betoneira', 1);
INSERT INTO EQUIPAMENTO
	VALUES (302, 'Cortadora de Piso', 1);
INSERT INTO EQUIPAMENTO
	VALUES (303, 'Mangote', 1);
INSERT INTO EQUIPAMENTO
	VALUES (304, 'Guincho', 2);
INSERT INTO EQUIPAMENTO
	VALUES (305, 'Gerador', 3);
INSERT INTO EQUIPAMENTO
	VALUES (306, 'Piso Metálico', 4);
INSERT INTO EQUIPAMENTO
	VALUES (307, 'Furadeira de Bancada', 5);
INSERT INTO EQUIPAMENTO
	VALUES (308, 'Parafusadeira', 5);
INSERT INTO EQUIPAMENTO
	VALUES (309, 'Plaina', 5);

-- obs: inseri primeiro a categoria e o equipamento, pois para realizar a locação necessito do codigo do equipamento (um dos atributos é o código da categoria) e o código da obra (que já tenho) 

-- Locação dos equipamentos
INSERT INTO LOCACAO
	VALUES (115, 301, to_date('15/06/2000', 'dd/mm/yyyy'), to_date('10/06/2000', 'dd/mm/yyyy'));
INSERT INTO LOCACAO
	VALUES (115, 304, to_date('10/06/2000', 'dd/mm/yyyy'), to_date('05/06/2000', 'dd/mm/yyyy'));
INSERT INTO LOCACAO
	VALUES (115, 305, to_date('12/07/2000', 'dd/mm/yyyy'), to_date('06/07/2000', 'dd/mm/yyyy'));
INSERT INTO LOCACAO
	VALUES (115, 306, to_date('14/02/2000', 'dd/mm/yyyy'), to_date('02/02/2000', 'dd/mm/yyyy'));


------------------------------------------------------------------------------------------------------------------------