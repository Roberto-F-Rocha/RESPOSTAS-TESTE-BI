								-- /\ Parte 4 /\ --
-----------------------------------------------------------------------------------
   -- /\ Teste Prático para Seleção de Estagiário de Business Intelligence /\ --
-----------------------------------------------------------------------------------

--> 9.	Consulta Agregada
--> o	Retorne o número de habilidades por candidato, mostrando o nome do candidato e a quantidade de habilidades.
SELECT 
	candidatos.nome, 
	COUNT(habilidades.habilidade) AS num_habilidades
FROM 
	candidatos
JOIN habilidades ON candidatos.id = habilidades.candidato_id
GROUP BY 
	candidatos.nome
ORDER BY 
	num_habilidades DESC;
