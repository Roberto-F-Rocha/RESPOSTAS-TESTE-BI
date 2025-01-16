								-- /\ Parte 3 /\ --
-----------------------------------------------------------------------------------
   -- /\ Teste Prático para Seleção de Estagiário de Business Intelligence /\ --
-----------------------------------------------------------------------------------
--> 6.	Atualização Personalizada
--> o	Adicione seu nome ao campo modificado_por para todos os registros da tabela candidatos.
UPDATE candidatos
SET modificado_por = 'Roberto_F.Rocha';

--> o	Adicione uma nova habilidade a um candidato específico.
INSERT INTO habilidades (candidato_id, habilidade)
VALUES (1, 'Docker');
-----------------------------------------------------------------------------------
