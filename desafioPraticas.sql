use clinica_medica;
show tables;
desc pacientes;
select * from pacientes;
select * from medicos;
select * from agendamentos;
-- Lista de pacientes nascidos depois de 01-01-1990
select nome,data_nascimento,telefone from pacientes
where data_nascimento > "1990-01-01";

-- Listar para cada consulta,o nome do paciente, data e tipo.
SELECT pacientes.nome, agendamentos.data_hora, agendamentos.tipo_consulta
from pacientes left join agendamentos on pacientes.id = agendamentos.paciente_id;
-- Listar para cada consulta,o nome do medico, data e tipo.
SELECT medicos.nome, agendamentos.data_hora, agendamentos.tipo_consulta
from medicos left join agendamentos on medicos.id = agendamentos.medico_id;

-- Desafio: Listar as consultas incluindo nome do paciente e do medico.
SELECT pacientes.nome Paciente, medicos.nome Medico, agendamentos.data_hora,  agendamentos.tipo_consulta
from pacientes join agendamentos on pacientes.id = agendamentos.paciente_id join medicos on
medicos.id = agendamentos.medico_id;
