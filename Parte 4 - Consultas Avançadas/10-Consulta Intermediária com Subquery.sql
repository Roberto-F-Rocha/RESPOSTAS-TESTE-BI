								-- /\ Parte 4 /\ --
-----------------------------------------------------------------------------------
   -- /\ Teste Prático para Seleção de Estagiário de Business Intelligence /\ --
-----------------------------------------------------------------------------------

--> 10.	Consulta Intermediária com Subquery
--> o	Liste os candidatos que possuem mais de 2 habilidades. Utilize uma subconsulta para determinar a contagem.

SELECT 
	nome
FROM 
	candidatos
WHERE 
	id IN(
	    SELECT 
			candidato_id
	    FROM 
			habilidades
	    GROUP BY 
			candidato_id
	    HAVING 
			COUNT(habilidade) > 2
);