insert into aluno (nome) values
('Julia'),
('Roberto'),
('Laura'),
('Amanda');

insert into disciplinas(nome, ch) values
('BD', 72),
('LFTC', 84),
('Lógica', 84),
('LP', 72);

insert into turma(sala, disciplina) values
(4, 2), -- LFTC
(6, 3), -- Lógica
(9, 1), -- BD
(4, 4), -- LP
(7, 3) -- Lógica
;

insert into cursou(nota, semestre, aluno, disciplina) values
(8.0, 2021, 1, 4), 
(9.0, 2020, 1, 3),
(6.0, 2020, 2, 1),
(10.0, 2019, 2, 2);

insert into inscrito(aluno, turma) values
(1, 1),
(1, 3),
(2, 2),
(2, 4),
(1, 4);
