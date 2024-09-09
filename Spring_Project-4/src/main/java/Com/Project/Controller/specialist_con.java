package Com.Project.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import Com.Project.Model.specialist;
import Com.Project.Repository.specialist_repo;




@Controller
public class specialist_con {
	
	@Autowired
	specialist_repo sr;
	
	@RequestMapping("/spec")
	public String addspec(@ModelAttribute specialist s) {
		sr.save(s);
		return "adminlogin.jsp";
	}
	
	 @RequestMapping("/getdata")
	    public String addDoctorForm(Model model) {
	        List<specialist> sp = sr.findAll();  
	        model.addAttribute("specialists", sp);
	        return "admin_doctor.jsp";  
	    }
}