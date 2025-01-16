								-- /\ Parte 4 /\ --
-----------------------------------------------------------------------------------
   -- /\ Teste Prático para Seleção de Estagiário de Business Intelligence /\ --
-----------------------------------------------------------------------------------

/*Observação rápida:
Os novos candidatos foram adicionados porque não tínhamos candidatos com as habilidades específicas "Python" e "SQL" nas inserções anteriores. Para garantir que essas habilidades fossem representadas no banco de dados, criamos três novos candidatos e atribuímos a eles as habilidades "Python", "SQL" e outras competências relevantes, conforme solicitado.
*/

--> 8.	Consulta com JOIN
--> o	Liste todos os candidatos e suas habilidades em uma única consulta, ordenando pelo nome do candidato.

SELECT
    candidatos.nome,
	habilidades.habilidade
FROM
    candidatos
JOIN habilidades ON candidatos.id = habilidades.candidato_id
ORDER BY
    candidatos.nome;

--> o	Filtre os candidatos que possuem habilidades relacionadas a “Python” ou “SQL”.
SELECT
    candidatos.nome,
    habilidades.habilidade
FROM
    candidatos
JOIN habilidades ON c.id = habilidades.candidato_id
WHERE
    habilidades.habilidade IN ('Python', 'SQL');

--> o   melhorando - (junção dos dois pontos)
SELECT
	candidatos.nome,
	habilidades.habilidade
FROM
	candidatos
JOIN habilidades ON candidatos.id = habilidades.candidato_id 
WHERE
	habilidades.habilidade IN ('Python', 'SQL')
ORDER BY
	candidatos.nome;
