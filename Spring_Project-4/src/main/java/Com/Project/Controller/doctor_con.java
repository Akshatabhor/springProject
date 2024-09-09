package Com.Project.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Com.Project.Model.doctor_data;
import Com.Project.Repository.doctrpo;




    
@Controller
public class doctor_con {

	 @Autowired
	 doctrpo dc;
	 
	 
	 
	 @RequestMapping("/add_doctor")
	 public String doctordata(@ModelAttribute doctor_data d) {
		 dc.save(d);
		return "redirect:/fetch_all_doctors";
		
		
 		
	}
	

	 @RequestMapping("/fetch_all_doctors")

	 public String datafect(Model data)
		{
			List<doctor_data> al=dc.findAll();
			
			data.addAttribute("e_data",al);
			
			return "admin_doctor.jsp";
		}
	 
	 @RequestMapping("/{id}")
		public String edit(@PathVariable int id,Model m)
		{
			doctor_data ob=dc.findById(id).orElse(null);
			
			m.addAttribute("data", ob);
			
			return "edit_doctor.jsp";
		}
		
		@RequestMapping("edit_doctor/{id}")
		public String update(@PathVariable int id,@ModelAttribute doctor_data d)
		{
			doctor_data ob=dc.findById(id).orElse(null);
			
			if(ob!=null)
			{
				ob.setName(d.getName());
				 ob.setDob(d.getDob());
				 ob.setQual(d.getQual());
				 ob.setSpecialistname(d.getSpecialistname());
				 ob.setEmail(d.getEmail());
				 ob.setMobno(d.getMobno());
				 ob.setPassword(d.getPassword());
				dc.save(ob);
				
			}
			return "redirect:/fetch_all_doctors";
		}
		@RequestMapping("/Delete/{id}")
		public String delete(@PathVariable int id)
		{
			dc.deleteById(id);
			return "redirect:/fetch_all_doctors ";
		}
		
		@RequestMapping("/doctor")
		 public String doctor_login(@RequestParam("email") String email, @RequestParam("password") String password,Model model) {
		        List<doctor_data> doctors = dc.findByEmail(email);
		        if (doctors.size() == 1 && doctors.get(0).getPassword().equals(password)) {
		        	 model.addAttribute("username", doctors.get(0).getName());
		             return "doctorlogged.jsp";
	 	        } else if (doctors.isEmpty()) {
		            // Handle the case where no user is found
		            return "doctor_login.jsp"; // Could add a message indicating user not found
		        } else {
		            // Handle the case where multiple users are found
		            return "doctor_login.jsp"; // Could add a message indicating multiple users found
		        }
				
		       
			}
		
		@RequestMapping("/user_data")
		public String userdata() {
			return "admin_user";
		}
		@RequestMapping("/doctlog")
		public String doctlog() {
			return "doctorlogged";
		
		}
		@RequestMapping("/docthome")
		public String doctlog1() {
			return "doctorlogged";
		
		}
		
		
		@RequestMapping("/doctor_logout")
		public String doctor_logout()
		{
			return "doctor_login";
		}
		@RequestMapping("/fetch")
		public String datafectdoctor(Model data)
		{
			List<doctor_data> al=dc.findAll();
			
			data.addAttribute("e_data",al);
			
			return "doctorlogged";
		}
		
	 
		
}