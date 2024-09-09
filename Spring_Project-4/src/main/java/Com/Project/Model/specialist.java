package Com.Project.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class specialist {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String specialistname;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSpecialistname() {
		return specialistname;
	}
	public void setSpecialistname(String specialistname) {
		this.specialistname = specialistname;
	}
	public specialist(int id, String specialistname) {
		super();
		this.id = id;
		this.specialistname = specialistname;
	}
	public specialist() {
		super();
		// TODO Auto-generated constructor stub
	}
	 
	
}