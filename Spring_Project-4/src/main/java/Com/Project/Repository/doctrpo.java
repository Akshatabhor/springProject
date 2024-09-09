package Com.Project.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import Com.Project.Model.doctor_data;



public interface doctrpo extends JpaRepository<doctor_data, Integer>{
	
	List<doctor_data> findByEmail(String email); 
 }