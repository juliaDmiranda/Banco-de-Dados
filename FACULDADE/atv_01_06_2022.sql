delimiter $$

create procedure insere (in tabela_type CHAR(30), in palavra CHAR(30), in num1 int, in num2 int)
	-- Na turma: num1 = sala  e num2 = disciplina
    -- Demais tabela sempre num1
	BEGIN
		CASE
		WHEN tabela_type ='aluno' THEN insert into aluno (matr, nome) values (num1, palavra);
			
		WHEN tabela_type ='turma' THEN 
			insert into turma(sala, disciplina) values(num1, num2);
		
		WHEN tabela_type ='disciplinas' THEN 
			insert into disciplinas(nome, ch) values(palavra, num1);
		END CASE;
	END 
$$ 

delimiter ;


