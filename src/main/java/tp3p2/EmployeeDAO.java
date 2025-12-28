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

}
