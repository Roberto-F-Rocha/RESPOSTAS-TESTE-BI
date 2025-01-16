								-- /\ Parte 5 /\ --
-----------------------------------------------------------------------------------
   -- /\ Teste Prático para Seleção de Estagiário de Business Intelligence /\ --
-----------------------------------------------------------------------------------

--> 13. Consulta com CTE
--> o	Use uma Common Table Expression (CTE) para listar todos os candidatos e, em seguida, retorne apenas aqueles que possuem mais de 2 habilidades.

WITH CTE_Habilidades AS(
    SELECT 
		candidato_id, 
		COUNT(habilidade) AS num_habilidades
    FROM 
		habilidades
    GROUP BY 
		candidato_id
)
SELECT 
	candidatos.nome
FROM 
	candidatos
JOIN CTE_Habilidades cte ON candidatos.id = cte.candidato_id
WHERE 
	cte.num_habilidades > 2;
