package tp3p2;

public class Employee {
	
	private int id;
	private String username;
	private String nom;
	private String prenom;
	private String password;
	private String departement;
	
	
	
	public Employee(int id, String username, String nom, String prenom, String password, String departement) {
		super();
		this.id = id;
		this.username = username;
		this.nom = nom;
		this.prenom = prenom;
		this.password = password;
		this.departement = departement;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Employee() {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.password = password;
		this.departement = departement;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDepartement() {
		return departement;
	}
	public void setDepartement(String departement) {
		this.departement = departement;
	}
	
	

}
