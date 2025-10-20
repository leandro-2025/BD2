-- verificar rapidamente a quantidade de estudantes que preferem um curso 
-- informado pelo usuário, poderíamos criar uma função para isso.

use cadastro;

-- Criando Função em MySQL
DELIMITER $$
CREATE FUNCTION preferem_o_curso(curso varchar(60)) RETURNS INT 
BEGIN
   declare quantidade int;
   SET quantidade = (SELECT COUNT(*) FROM estudante JOIN curso ON 
   estudante.cursopreferido = curso.idcurso WHERE
   curso.nome like curso);
   RETURN quantidade;
END $$
DELIMITER ;
 SELECT preferem_o_curso(“Java”);