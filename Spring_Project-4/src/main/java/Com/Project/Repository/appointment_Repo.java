package Com.Project.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Com.Project.Model.user_appointment;


@Repository
public interface appointment_Repo extends JpaRepository<user_appointment, Integer> {
	List<user_appointment> findByid(int userid);
  }