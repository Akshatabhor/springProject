package Com.Project.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class user_appointment {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private  int id;
	
	
	private  int userid;

 	private String name;
	private String gender;
	private int age;
	private String  appointment_date;
	private String email;
	private String phno;
	private String diseases;
	private int doctorid;
	private String address;
	private String status;
 	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAppointment_date() {
		return appointment_date;
	}
	public void setAppointment_date(String appointment_date) {
		this.appointment_date = appointment_date;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getDiseases() {
		return diseases;
	}
	public void setDiseases(String diseases) {
		this.diseases = diseases;
	}
	public int getDoctorid() {
		return doctorid;
	}
	public void setDoctorid(int doctorid) {
		this.doctorid = doctorid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public user_appointment(int userid, String name, String gender, int age, String appointment_date, String email,
			String phno, String diseases, int doctorid, String address, String status) {
		super();
		this.userid = userid;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.appointment_date = appointment_date;
		this.email = email;
		this.phno = phno;
		this.diseases = diseases;
		this.doctorid = doctorid;
		this.address = address;
		this.status = status;
	}
	public user_appointment() {
		super();
		// TODO Auto-generated constructor stub
	}
	 
}