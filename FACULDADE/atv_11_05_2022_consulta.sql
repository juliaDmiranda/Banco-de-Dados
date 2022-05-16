-- Retornar histórico de 1 aluno (cod e nome da disciplina, semestre e nota)
select disciplinas.cod, disciplinas.nome, cursou.semestre, cursou.nota
from disciplinas
inner join cursou on disciplinas.cod = cursou.disciplina
where aluno_id = (select id from aluno where matr = matricula), cursou.id = aluno_id;

-- Retornar lista de matr, nome e média das notas de cada aluno
-- Lista de turmas e quantidade de alunos inscritos, ordenada das maiores para as menores turmas
-- Lista dos alunos (matr e nome) que não estão inscritos em nenhuma turma
