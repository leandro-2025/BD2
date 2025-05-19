use clinica_medica;
show tables;
desc agendamentos;
select * from agendamentos;
insert into agendamentos(paciente_id, medico_id, data_hora, tipo_consulta, status) values
(2,1,"2025-05-19 09:00","Checkup geral","Consulta realizada"),
(4,3,"2025-05-26 16:00","Diagnóstico de dor abdominal","Agendada"),
(2,3,"2025-06-02 14:00","Diagnóstico de dor de cabeça","Agendada"),
(5,2,"2025-05-19 11:00","Retorno com resultado de exames","consulta realizada");

# Listar a quantidade de consultas por médico 
select medicos.id, medicos.nome, count(agendamentos.id) 
from medicos join agendamentos
on medicos.id = agendamentos.medico_id 
group by medicos.nome
order by medicos.nome;