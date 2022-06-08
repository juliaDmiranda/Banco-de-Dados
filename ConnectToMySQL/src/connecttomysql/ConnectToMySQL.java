/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connecttomysql;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author 16839924742
 */
public class ConnectToMySQL {
	public static void main(String[] args) {
		Connection con = null;
		Statement stmt = null;
		try {
			// Registra driver de conexão com o banco de dados
			Class.forName("com.mysql.jdbc.Driver");
			
			// Obtem conexão com o banco de dados a partir de uma string de conexão
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/FACULDADE",
					  "root", 
					  "123456");

			// Cria um objeto que irá armazenar uma consulta SQL
			stmt = con.createStatement();		
			
                        ResultSet rs = stmt.executeQuery
					("select a.id as id, a.nome as nome,  a.matr as matr\r\n"
					+ "from aluno a\r\n;");
                        
                        List<Aluno> alunos = new ArrayList<Aluno>();
                        
                        // Percorre o resultado da consulta
			while (rs.next()) {
				alunos.add(new Aluno(rs.getInt("id"),
						             rs.getString("nome"),
						             rs.getInt("matr")));
				System.out.print("ID: " + rs.getInt("id"));
				System.out.print(" Nome: " + rs.getString("nome"));
				System.out.print(" Matricula: " + rs.getInt("matr"));
				System.out.println();
			}
			
			stmt.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			System.out.println("A classe do driver de conexão não foi encontrada!");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("Ocorreu erro em alguma operação no banco de dados!");
			e.printStackTrace();
		} 
	}
}
