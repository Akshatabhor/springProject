package Com.Project.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Com.Project.Model.usersign;
import Com.Project.Repository.userrpo;



  
  
@Controller
public class controllerin {
	
	@Autowired
	userrpo up;
	
 		@RequestMapping("/")
		public String home()
		{
			return "index.jsp";
		}
		@RequestMapping("/index1")
		public String home1()
		{
			return  "index.jsp";
		}
		@RequestMapping("/doctor2")
		public String doctorlog()
		{
			return "doctor_login.jsp";
		}
		@RequestMapping("/admin1")
		public String adminlog()
		{
			return "admin_login.jsp";
		}
		@RequestMapping("/home1")
		public String adminlog1()
		{
			return "adminlogin.jsp";
		}
		@RequestMapping("/user1")
		public String userlog()
		{
			return "user_login.jsp";
		}
		@RequestMapping("/sign1")
		public String usersign()
		{
			return "signup.jsp";
		}
		@RequestMapping("/sign")
		public String usersign1(@ModelAttribute usersign u)
		{
			up.save(u);
			return "user_login.jsp";
		}
		
		@RequestMapping("/user")
		 public String loginc(@RequestParam("email") String email, @RequestParam("password") String password,Model model) {
	        List<usersign> users = up.findByEmail(email);
	        if (users.size() == 1 && users.get(0).getPassword().equals(password)) {
	        	 model.addAttribute("username", users.get(0).getName());
 
 	             return "userlog.jsp";
 	        } else if (users.isEmpty()) {
	            // Handle the case where no user is found
	            return "user_login"; // Could add a message indicating user not found
	        } else {
	            // Handle the case where multiple users are found
	            return "user_login"; // Could add a message indicating multiple users found
	        }
			
	       
		}
		
		@RequestMapping("/home_user")
		public String appointment() {
			return "userlog.jsp";
		}
		
		@RequestMapping("/appointment_user")
		public String appointment1() {
			return "user_appointment.jsp";
		} 
		
		 @RequestMapping("/admin")
			 public String adminlog(@RequestParam("email") String email, @RequestParam("password") String password) {
			 
	        	if("admin@gmail.com".equals(email) && "admin123".equals(password))
	        	{
	        		return "adminlogin.jsp";
	        	}
	        	else
	        	{
	        		return "admin_login.jsp";
	        	}
	        }
		
		 @RequestMapping("/adminlogot")
		 public String adminlogout()
		 {
			
			return "admin_login.jsp"; 
		 }
		 
		 @RequestMapping("/userlogout")
		 public String userlogout()
		 {
			 return "user_login.jsp";
		 }
		 @RequestMapping("/doctor1")
		 public String admindoctor()
		 {
			 return "admin_doctor.jsp";
		 }
		 @RequestMapping("/adminlog")
		 public String logo()
		 {
			 return "adminlogin.jsp";
		 }
		 
		 
		 
	 
 }
