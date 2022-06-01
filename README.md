O repositório é destinado para armazenar atividades realizadas na disciplina Banco de Dados ministrada pelo professor [Carlos Bazilio](https://github.com/carlosbazilio).
O software utilizado é MySQL Workbench.

## Modelando um sistema acadêmico
  A atividade de [modelagem de sistema acadêmico](https://github.com/juliaDmiranda/BD/blob/main/FACULDADE/atv_04_05_2022.sql) trabalha o básico de ***criação de tabela*** incluindo a criação de ***chaves primárias*** e ***chaves estrangeiras*** trabalhando com ***relações 1 para muitos*** e ***relações muitos para muitos***.<br>Dentre as tabelas temos
* aluno
* turma
* disciplinas
* cursou (para a relação de aluno e disciplinas)

### Relações

#### aluno e disciplinas
  Temos nesse modelo que no sistema acadêmico um aluno pode ter cursado nenhuma ou n disciplinas, e cada disciplina pode ter sido cursada por nenhum ou n alunos. Dessa forma temos uma ***relação de muitos para muitos***.<br>Por isso foi necessária a criação da tabela cursou para representarmos a relação de aluno e disciplinas.

#### aluno e turma
  Temos nesse modelo que no sistema acadêmico um aluno pode estar inscrito nenhuma ou n turmas, e cada turma pode ter a inscrição de nenhum ou n alunos. Dessa forma temos uma ***relação de muitos para muitos***.<br>Por isso foi necessária a criação da tabela inscrito para representarmos a relação de aluno e turma.
  
#### turma e disciplinas
  Temos nesse modelo que no sistema acadêmico uma disciplina possui nenhuma ou n turmas, e cada turma comporta apenas uma disciplina. Dessa forma, temos uma ***relação de muitos para 1***.<br>Não foi necessária então a criação de uma nova tabela para representar a relação entre turma e disciplinas. Como uma turma estará relacionada com somente uma disciplina cria-se uma referência na própria tabela turma para a disciplina relacionada a essa turma.
  
## Inserção de valores: usando INSERT INTO
   A atividade de [preenchimento das entidades do banco](https://github.com/juliaDmiranda/BD/blob/main/FACULDADE/atv_11_05_2022_insert.sql)  trabalha com  a operação básica de inserção de valores em uma determinada tabela. 
   
## Consulta em um banco de sistema acadêmico
   A atividade de [consulta](https://github.com/juliaDmiranda/BD/blob/main/FACULDADE/atv_11_05_2022_consulta.sql) no banco criado na atividade de [modelagem de sistema acadêmico](https://github.com/juliaDmiranda/BD/tree/main/FACULDADE) utiliza-se de ***inner join***, ***group by*** nas consultas.
 
### Histórico esoclar de 1 aluno
   Nesta consulta, dada a matrícula de um aluno, deve-se retornar seu histórico.<br/>
   O histórico do aluno é composto pelos seguintes atributos:
   - código da disciplina
   - nome da disciplina
   - semestre que o aluno cursou
   - nota do aluno nesta disciplina
   
### Informações de todos os alunos
  Retornar uma lista contendo a seguintes informações para cada aluno
   - matrícula 
   - nome do aluno
   - média das notas

### Informações de todos as turmas
  Retonar uma lista de informações de cada turma registrada contendo para cada uma delas os seguintes atributos:
   - nome da turma
   - quantidade de alunos inscritos na turma<br/>
  Além disso, essa lista deve estar ordenada das maiores para as menores turmas

### Alunos inscritos em nenhuma turma
* Retornar as seguintes informações dos alunos que não estão inscritos em nenhuma turma:
   - matrícula do aluno
   - nome do aluno
  
## Procedure
   A atividade de [criação de procedure](inserelink) trabalha a utilização de procedure. Criamos procedures para trabalhar com os dados da atividade de [modelagem de sistema acadêmico](https://github.com/juliaDmiranda/BD/tree/main/FACULDADE).
   
### Insere()
* Procedure "genérica" para inserção nas tabelas Aluno, Turma e Disciplinas
* insere (in tabela_type CHAR(30), in palavra CHAR(30), in num1 int, in num2 int)
* Parâmetros
   - tabela_type : nome da tabela para comparação na função
   - palavra: atributo da tabela Aluno(nome) ou tabela Disciplinas(nome)
   - num1: inteiro para tabela Aluno(matrícula) ou tabela Disciplinas(sala)
   - num2: inteiro para tabela Disciplinas(ch)
