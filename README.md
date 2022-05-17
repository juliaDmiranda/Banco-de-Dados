O repositório é destinado para armazenar atividades realizadas na disciplina Banco de Dados ministrada pelo professor Carlos Basílio.
O software utilizado é MySQL Workbench. No repositório [MySQL](https://github.com/juliaDmiranda/SQL) poderão ser encontradas referências para consultas.

## Modelando um sistema acadêmico
  A atividade de [modelagem de sistema acadêmico](https://github.com/juliaDmiranda/BD/blob/main/FACULDADE/atv_04_05_2022.sql) trabalha o básico de ***criação de tabela*** incluindo a criação de ***chaves primárias*** e ***chaves estrangeiras*** trabalhando com ***relações 1 para muitos*** e ***relações muitos para muitos***.<br/>Dentre as tabelas temos
* aluno
* turma
* disciplinas
* cursou (para a relação de aluno e disciplinas)

### Relações

#### aluno e disciplinas
  Temos nesse modelo que no sistema acadêmico um aluno pode ter cursado nenhuma ou n disciplinas, e cada disciplina pode ter sido cursada por nenhum ou n alunos. Dessa forma temos uma ***relação de muitos para muitos***.<br/>Por isso foi necessária a criação da tabela cursou para representarmos a relação de aluno e disciplinas.

#### aluno e turma
  Temos nesse modelo que no sistema acadêmico um aluno pode estar inscrito nenhuma ou n turmas, e cada turma pode ter a inscrição de nenhum ou n alunos. Dessa forma temos uma ***relação de muitos para muitos***.<br/>Por isso foi necessária a criação da tabela inscrito para representarmos a relação de aluno e turma.
  
#### turma e disciplinas
  Temos nesse modelo que no sistema acadêmico uma disciplina possui nenhuma ou n turmas, e cada turma comporta apenas uma disciplina. Dessa forma, temos uma ***relação de muitos para 1***.<br/>Não foi necessária então a criação da uma nova tabela para representar a relação entre turma e disicplinas. Como uma turma estará relacionada com somente uma disciplina cria-se uma referência na própria tabela turma para a disciplina relacionada a essa turma.
  
## Inserção de valores: usando INSERT INTO
   A atividade de [preenchimento das entidades do banco](https://github.com/juliaDmiranda/BD/blob/main/FACULDADE/atv_11_05_2022_insert.sql)  trabalha com  a operação básica de inserção de valores em uma determinada tabela. 
   
## Consulta em um banco de sistema acadêmico
   A atividade de [consulta](https://github.com/juliaDmiranda/BD/blob/main/FACULDADE/atv_11_05_2022_consulta.sql) no banco criado na atividade de [modelagem de sistema acadêmico](https://github.com/juliaDmiranda/BD/tree/main/FACULDADE) trabalha com as seguintes consultas:
   
* Retornar histórico de 1 aluno 
   Nesta consulta, dada a matrícula de um aluno, deve-se retornar seu histórico.<br/>
   O histórico do aluno é composto pelos seguintes atributos:
   - código da disciplina
   - nome da disciplina
   - semestre que o aluno cursou
   - nota do aluno nesta disciplina
   
* Retornar lista contendo a seguintes informações para cada aluno
   - matrícula 
   - nome do aluno
   - média das notas
   
* Retonar uma lista de informações de cada turma registrada contendo para cada uma delas os seguintes atributos?
   - nome da turma
   - quantidade de alunos inscritos na turma
   Além disso, essa lista deve estar ordenada das maiores para as menores turmas
   
* Retornar as seguintes informações dos alunos que não estão inscritos em nenhuma turma:
   - matrícula do aluno
   - nome do aluno
