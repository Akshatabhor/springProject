package Com.Project.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import Com.Project.Model.specialist;



public interface specialist_repo extends JpaRepository<specialist, Integer> {
	
	List<specialist> findBySpecialistname(String specialistname);

}