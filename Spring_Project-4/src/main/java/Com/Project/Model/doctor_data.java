package Com.Project.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class doctor_data {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String dob;
	private String qual;
	private String specialistname;

	private String email;

	private String mobno;
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getQual() {
		return qual;
	}
	public void setQual(String qual) {
		this.qual = qual;
	}
	public String getSpecialistname() {
		return specialistname;
	}
	public void setSpecialistname(String specialistname) {
		this.specialistname = specialistname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobno() {
		return mobno;
	}
	public void setMobno(String mobno) {
		this.mobno = mobno;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public doctor_data() {
		super();
		// TODO Auto-generated constructor stub
	}
	public doctor_data(int id, String name, String dob, String qual, String specialistname, String email, String mobno,
			String password) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.qual = qual;
		this.specialistname = specialistname;
		this.email = email;
		this.mobno = mobno;
		this.password = password;
	}
 
	

}