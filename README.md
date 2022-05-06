O repositório é destinado para armazenar atividades realizadas na disciplina Banco de Dados ministrada pelo professor Carlos Basílio.
O software utilizado é MySQL Workbench. No repositório [MySQL](https://github.com/juliaDmiranda/SQL) poderão ser encontradas referências para consultas.

## Modelando um sistema acadêmico
  A atividade de [modelagem de sistema acadêmico](https://github.com/juliaDmiranda/BD/tree/main/FACULDADE) trabalha o básico de criação de tabela incluindo a inclusão de chaves primárias e estrangeira trabalhando com relações 1 para muitos e muitos para muitos.<br/>Dentre as tabelas temos
* aluno
* turma
* disciplinas
* cursou (para a relação de aluno e disciplinas)

### Relações

#### aluno e disciplinas
  Temos nesse modelo que no sistema acadêmico um aluno pode ter cursado nenhuma ou n disciplinas, e cada disciplina pode ter sido cursada por nenhum ou n alunos. Dessa forma temos uma relação de muitos para muitos.<br/>Por isso foi necessária a criação da tabela cursou para representarmos a relação de aluno e disciplinas.

#### aluno e turma
  Temos nesse modelo que no sistema acadêmico um aluno pode estar inscrito nenhuma ou n turmas, e cada turma pode ter a inscrição de nenhum ou n alunos. Dessa forma temos uma relação de muitos para muitos.<br/>Por isso foi necessária a criação da tabela inscrito para representarmos a relação de aluno e turma.
  
#### turma e disciplinas
  Temos nesse modelo que no sistema acadêmico uma disciplina possui nenhuma ou n turmas, e cada turma comporta apenas uma disciplina. Dessa forma, temos uma relação de muitos para 1.<br/>Não foi necessária então a criação da uma nova tabela para representar a relação entre turma e disicplinas. Como uma turma estará relacionada com somente uma disciplina cria-se uma referência na própria tabela turma para a disciplina relacionada a essa turma.
