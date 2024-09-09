package Com.Project.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Com.Project.Model.usersign;



@Repository
public interface userrpo extends JpaRepository<usersign, Integer>{
	
	List<usersign> findByEmail(String email);
	List<usersign> findByPassword(String password);
	
}
