USE clinina_medica;
-- Exibir todos os pacientes cadastrados no BD
SELECT count(id) as "Total de Pacientes" from pacientes;

DESC medicos;
-- Cadastrando um novo medico
INSERT INTO medicos(nome,especialidade,crm,email)
VALUES ("Crispiano Orispildo","pediatria","CRM 55667","crispildo@gmail.com"); 

-- Exibir a quantidade de médicos pediatras
SELECT especialidade,count(id) from medicos
where especialidade = "pediatria";

-- Exibir a quantidade de medicos por especialidade
SELECT especialidade, count(id)  as "Quantidade" from medicos
group by especialidade;

-- Exibir nome e idade dos pacientes
SELECT nome, YEAR(CURDATE()) - YEAR(data_nascimento) as "Idade" from pacientes;

-- Exibir a media de idade dos pacientes
SELECT AVG(YEAR(CURDATE()) - YEAR(data_nascimento)) as "Idade Média" from pacientes;

-- Quantidade de consultas por medico
SELECT medicos.nome, count(agendamentos.id) from medicos left join agendamentos on 
medicos.id = agendamentos.medico_id group by medicos_nome;

-- Cadastrando nova consulta (agendamento) para um medico
INSERT INTO agendamentos(paciente_id, medico_id, data_hora, tipo_consulta, status)
VALUES (1,1,"2025-05-05 10:00", "consulta de rotina","realizada");

-- Exibir o medico com mais consultas
SELECT medicos.nome, count(agendamentos.id) tot_consultas from 
medicos join agendamentos on medicos.id = agendamentos.medico_id
where tot_consultas = max(tot_consultas)
group by medicos.nome;


