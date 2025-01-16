								-- /\ Parte 1 /\ --
-----------------------------------------------------------------------------------
   -- /\ Teste Prático para Seleção de Estagiário de Business Intelligence /\ --
-----------------------------------------------------------------------------------

--> Questão 2.	Estrutura Inicial
--> o	Crie uma tabela chamada candidatos com a seguinte estrutura:
--> 		id (chave primária, serial)
--> 		nome (varchar)
--> 		email (varchar)
--> 		data_aplicacao (timestamp)
--> 		modificado_por (varchar, nulo inicialmente)

CREATE TABLE candidatos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    data_aplicacao TIMESTAMP NOT NULL,
    modificado_por VARCHAR NULL
);

--> o	Crie outra tabela chamada habilidades para armazenar as competências dos candidatos:
--> 		id (chave primária, serial)
--> 		candidato_id (chave estrangeira para candidatos.
--> 		habilidade (varchar)

CREATE TABLE habilidades (
    id SERIAL PRIMARY KEY,
    candidato_id INT NOT NULL,
    habilidade VARCHAR NOT NULL,
    CONSTRAINT fk_candidato FOREIGN KEY (candidato_id) REFERENCES candidatos (id) ON DELETE CASCADE
);
-----------------------------------------------------------------------------------
