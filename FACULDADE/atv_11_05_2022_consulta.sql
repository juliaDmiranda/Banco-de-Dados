-- Retornar histórico de 1 aluno (cod e nome da disciplina, semestre e nota)
select disciplinas.cod, disciplinas.nome, cursou.semestre, cursou.nota
from disciplinas
inner join cursou on disciplinas.cod = cursou.disciplina
where cursou.aluno = 2;

-- Retornar lista de matr, nome e média das notas de cada aluno
select aluno.matr, aluno.nome, AVG(cursou.nota)
from aluno
inner join cursou on aluno.matr = cursou.aluno
group by aluno.nome;

-- Lista de turmas e quantidade de alunos inscritos, ordenada das maiores para as menores turmas
select inscrito.turma, count(inscrito.aluno) as qtd_alunos
from inscrito
group by inscrito.turma
order by qtd_alunos desc;


