-- criação da tabela trabalhador, definindo o CPF como chave primária
CREATE TABLE TRABALHADOR(
    cpf CHAR(11),
    nome VARCHAR (60),
    fk_codigo_obra CHAR(4),
    CONSTRAINT PK_TRABALHADOR_CPF PRIMARY KEY (cpf)
);
-- Alteração na tabela trabalhador, adicionada uma FK fazendo referência ao codigo da obra.
ALTER TABLE TRABALHADOR ADD (CONSTRAINT FK_TRABALHADOR_OBRA FOREIGN KEY (fk_codigo_obra) REFERENCES OBRA (codigo_obra));
------------------------------------------------------------------------------------------------------------------------

-- criação da tabela salário pois trata-se de um atributo multivalorado no modelo conceitual/lógico
CREATE TABLE SALARIO(
    cpf_salario CHAR(11),
    salario NUMERIC (7)
);
--Alteração na tabela salário, adicionada uma FK fazendo referência ao CPF do trabalhador
ALTER TABLE SALARIO ADD (CONSTRAINT FK_SALARIO_TRABALHADOR FOREIGN KEY (cpf_salario) REFERENCES TRABALHADOR (cpf));

------------------------------------------------------------------------------------------------------------------------

-- criação da tabela OBRA definindo o código da obra como primary key
CREATE TABLE OBRA(
    codigo_obra CHAR(4),
    nome VARCHAR(60),
    end_logradouro VARCHAR(60),
    end_numero VARCHAR(60),
    end_complemento VARCHAR (60),
    CONSTRAINT PK_OBRA_CODIGO_OBRA PRIMARY KEY (codigo_obra)
);
------------------------------------------------------------------------------------------------------------------------

-- criação da tabela construtora
CREATE TABLE CONSTRUTORA(
    codigo_construtora CHAR(4),
    nome_fantasia VARCHAR(60),
    fk_codigo_obra CHAR(4),
    CONSTRAINT PK_CONSTRUTORA_CODIGO_CONSTRUTORA PRIMARY KEY (codigo_construtora)
);
-- adicionada a FK fazendo referência ao codigo da obra
ALTER TABLE CONSTRUTORA ADD (CONSTRAINT FK_OBRA_CODIGO FOREIGN KEY (fk_codigo_obra) REFERENCES OBRA(codigo_obra));

------------------------------------------------------------------------------------------------------------------------

-- criação da tabela telefone
CREATE TABLE TELEFONE(
    fk_codigo_construtora CHAR(4),
    telefone VARCHAR (11)
);
-- adicionando uma FK que faz referência ao codigo_construtora, na table telefone
ALTER TABLE TELEFONE ADD (CONSTRAINT FK_CODIGO_CONSTRUTORA FOREIGN KEY (fk_codigo_construtora) REFERENCES CONSTRUTORA (codigo_construtora));

------------------------------------------------------------------------------------------------------------------------

-- criação da tabela locação (locação é uma tabela pois trata-se de um relacionamento com atributos)
CREATE TABLE LOCACAO(
    fk_codigo_obra CHAR(4),
    fk_codigo_equipamento CHAR(6),
    data_termino DATE,
    data_inicio DATE
);
-- adicionada duas FK que fazem referência ao código da obra e ao código do equipamento
ALTER TABLE LOCACAO ADD (CONSTRAINT FK_CODIGO_OBRA FOREIGN KEY (fk_codigo_obra) REFERENCES OBRA (codigo_obra));
ALTER TABLE LOCACAO ADD (CONSTRAINT FK_CODIGO_EQUIPAMENTO FOREIGN KEY (fk_codigo_equipamento) REFERENCES EQUIPAMENTO (codigo_equipamento));

------------------------------------------------------------------------------------------------------------------------

-- criação da tabela equipamento
CREATE TABLE EQUIPAMENTO(
    codigo_equipamento CHAR(6),
    nome VARCHAR(60),
    fk_codigo_categoria CHAR(4),
    CONSTRAINT PK_EQUIPAMENTO_CODIGO_EQUIPAMENTO PRIMARY KEY (codigo_equipamento)
);
-- adicionada na tabela equipamento, a chave estrangeira que faz referência ao código da categoria
ALTER TABLE EQUIPAMENTO ADD (CONSTRAINT FK_CODIGO_CATEGORIA FOREIGN KEY (fk_codigo_categoria) REFERENCES CATEGORIA (codigo_categoria));

------------------------------------------------------------------------------------------------------------------------

CREATE TABLE CATEGORIA(
    codigo_categoria CHAR(4),
    descricao VARCHAR(60),
    CONSTRAINT PK_CATEGORIA_CODIGO_CATEGORIA PRIMARY KEY (codigo_categoria)
);
------------------------------------------------------------------------------------------------------------------------