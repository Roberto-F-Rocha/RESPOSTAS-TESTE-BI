								-- /\ Parte 1 /\ --
-----------------------------------------------------------------------------------
   -- /\ Teste Prático para Seleção de Estagiário de Business Intelligence /\ --
-----------------------------------------------------------------------------------

--> Questão 3.	População de Dados
--> o	Insira ao menos 5 registros na tabela candidatos.
--> -->(Obs: Utilizei uma ferramenta de inteligência artificial exclusivamente para obter os dados.)
INSERT INTO candidatos(
	nome,
	email,
	data_aplicacao
) 
VALUES
	('Alice Santos', 'alice.santos@example.com', '2025-01-15 10:00:00'),
	('Bruno Lima', 'bruno.lima@example.com', '2025-01-14 15:30:00'),
	('Carla Mendes', 'carla.mendes@example.com', '2025-01-13 09:45:00'),
	('Diego Oliveira', 'diego.oliveira@example.com', '2025-01-12 11:20:00'),
	('Elena Costa', 'elena.costa@example.com', '2025-01-11 14:10:00');

--> o	Adicione ao menos 10 registros na tabela habilidades, garantindo que alguns candidatos tenham múltiplas habilidades.
INSERT INTO habilidades(
	candidato_id, 
	habilidade
) 
VALUES
	(1, 'Python'),
	(1, 'SQL'),
	(2, 'Java'),
	(2, 'JavaScript'),
	(3, 'HTML'),
	(3, 'CSS'),
	(3, 'React'),
	(4, 'C++'),
	(4, 'Linux'),
	(5, 'Project Management');