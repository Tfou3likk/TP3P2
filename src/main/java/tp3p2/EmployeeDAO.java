package tp3p2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class EmployeeDAO {
	
	public static int IDNUL = -1;
	
	public static ArrayList<Employee> read() {
		
		ArrayList<Employee> employees = new ArrayList<>();
		
		try {
			String requete = "SELECT * FROM employes";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection(
			    "jdbc:mysql://localhost:3306/employees", "root", "");
			Statement st = cn.createStatement();
			ResultSet rs = st.executeQuery(requete);
			
			while(rs.next()) {
				Employee employe = new Employee(rs.getInt("id"), rs.getString("username"), rs.getString("nom"), rs.getString("prenom"), rs.getString("password"),rs.getString("departement"));
				employees.add(employe);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return employees;
	}
	
	public static Employee readEmployee(String username, String password) {
		Employee employee = new Employee();
		
		try {
			String requete = "SELECT * FROM employes WHERE username = ? AND password = ?";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection(
			    "jdbc:mysql://localhost:3306/employees", "root", "");
			PreparedStatement pst = cn.prepareStatement(requete);
			pst.setString(1, username);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			rs.next();
			employee = new Employee(rs.getInt("id"), rs.getString("username"), rs.getString("nom"), rs.getString("prenom"), rs.getString("password"),rs.getString("departement"));
			
		
		}catch(Exception e){
			e.printStackTrace();
			employee.setId(IDNUL);
		}
		return employee;
	}
	
	public static int createEmployee(String username, String nom, String prenom, String password, String departement) {
		
		int insertOk  = 0;
		
		try {
			String requete = "INSERT INTO employes(username, nom, prenom, password, departement) VALUES (?, ?, ?, ?, ?)";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection(
			    "jdbc:mysql://localhost:3306/employees", "root", "");
			PreparedStatement pst = cn.prepareStatement(requete);
			pst.setString(1, username);
			pst.setString(2, nom);
			pst.setString(3, prenom);
			pst.setString(4, password);
			pst.setString(5, departement);
			insertOk  = pst.executeUpdate();
			
			
			
			
			//employee = new Employee(rs.getInt("id"), rs.getString("username"), rs.getString("nom"), rs.getString("prenom"), rs.getString("password"),rs.getString("departement"));
		}catch(Exception e){
			e.printStackTrace();
		}
		if(insertOk >1) {
			System.out.print("ajout");
		}else {
			System.out.print("pas ajout");
		}
		return insertOk ;
	}

}
