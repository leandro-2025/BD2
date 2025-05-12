
USE clinica_medica;

-- EXERCÍCIOS
-- 1) Listar o nome dos pacientes e o total gasto com medicamentos prescritos.
-- Utilizar a função sum() para somar os medicamentos (preco)

select pacientes.nome, sum(medicamentos.preco) as "Gastos Medicos"
from pacientes join historicomedico
on pacientes.id = historicomedico.paciente_id join prescricoes 
on historicomedico.id = prescricoes.historico_medico_id join medicamentos
on medicamentos.id = prescricoes.medicamento_id
group by pacientes.nome;

-- Mostrar o total  de prescricoes dos pacientes
select pacientes.nome, count(prescricoes.id)
from pacientes join historicomedico
on pacientes.id = historicomedico.pacintes_id join prescricoes
on historicomedico.id = prescricoes.historico_medico_id
group by pacientes.nome;

-- Mostrar os medicamentos de cada prescrição
select prescricoes.id "Prescriçaõ", medicamentos.nome "Medicamento"
from prescricoes join medicamentos
on prescricoes.medicamento_id = medicamentos.id;

-- 2) Listar os exames realizados, com nome do paciente e data de realização.