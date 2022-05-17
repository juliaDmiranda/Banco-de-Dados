create table aluno(
    matr int auto_increment primary key,
    nome varchar(30)
);

create table disciplinas(
	cod int auto_increment primary key,
    nome varchar(30),
    ch int
);

create table turma(
	cod int auto_increment primary key,
    sala int,
    disciplina int,
    foreign key (disciplina)
    references disciplinas(cod)
);

create table cursou(
    nota float,
    semestre int,
    aluno int,
    disciplina int,
    foreign key (aluno)
    references aluno(matr),    
    foreign key (disciplina)
    references disciplinas(cod)
);

create table inscrito(
    aluno int,
    turma int,
    foreign key (aluno)
    references aluno(matr),    
    foreign key (turma)
    references turma(cod)
);