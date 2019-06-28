package com.virtusa.vconnect.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.vconnect.Services.EmployeeRegistration;
import com.virtusa.vconnect.Services.JobServices;
import com.virtusa.vconnect.model.Employee;
import com.virtusa.vconnect.model.Feedback;
import com.virtusa.vconnect.model.Job;

@Controller
@SessionAttributes(value="abc")
public class ViewProfileController {
	
	@Autowired
	EmployeeRegistration employeeRegistration;
	
	@Autowired
	Employee employee;
	
	@Autowired
	Job job;
	
	@Autowired
	Feedback feedback;
	
	@Autowired
	JobServices jobServices;
	
	@RequestMapping("/start")
	   public ModelAndView startHome(Model model) {
			System.out.println("entered show user");
			/*model.addAttribute("job",job);
			model.addAttribute("feedback",feedback);*/
		      return new ModelAndView("index","command",job);
		   }
	
	@RequestMapping("/registeri")
	public ModelAndView showRegister()
	{
		System.out.println("Entered show Register");
		return new ModelAndView("internalregistration","command",employee);
	}
	@RequestMapping(value="/addregister", method= RequestMethod.POST)
	public ModelAndView addemp(@ModelAttribute("emp") Employee employee)
	{
		System.out.println("Controller enter");
	
		employeeRegistration.addEmployee(employee);
		return new ModelAndView("index1","command",new Employee());

	}
	@RequestMapping("/logine")
   public ModelAndView login() {
		System.out.println("entered show user");
	      return new ModelAndView("signin","command",employee);
	   }
	@RequestMapping(value = "/loginvalidate", method = RequestMethod.POST)
	public ModelAndView loginval(@ModelAttribute Employee employee,HttpServletRequest request ,ModelMap model) {
	
	List<Employee> name= employeeRegistration.validateUser(employee);
	int Id= name.get(0).getEmployeeId();
	ModelAndView mp = null;
	if(name.size() == 0) {
	mp = new ModelAndView("Loginc","command",new Employee());
	}
	else
	{
	   request.getSession().setAttribute("Id",name.get(0).getEmployeeId());
	   Employee emp = employeeRegistration.GetUserById(Id);
	   request.getSession().setAttribute("uname", emp.personalDetails.getFirstName());
	   System.out.println(emp.getEmployeeRole());
	if(emp.getEmployeeRole().equalsIgnoreCase("employee"))
	   mp = new ModelAndView("EmployeePage","command",job);
	
	else if(emp.getEmployeeRole().equalsIgnoreCase("Admin")) {
		   mp=new ModelAndView("AdminPage","command",job);
	}
	else if(emp.getEmployeeRole().equalsIgnoreCase("Hrpannel")) {
	mp = new ModelAndView("HRHome","command",job);
	}
	else if(emp.getEmployeeRole().equalsIgnoreCase("tr")){
		mp = new ModelAndView("TRHome","command",job);
	}
	else {
		mp = new ModelAndView("Loginc","command",new Employee());
	}
	}
	return mp;
	}
	
	@RequestMapping("/feedback")
	   public ModelAndView feed() {
			System.out.println("entered show user");
		      return new ModelAndView("feedback", "command",feedback);
		   }

	@RequestMapping("/feedbacki")
	   public ModelAndView feedi() {
			System.out.println("entered show user");
		      return new ModelAndView("feedbackInt", "command",feedback);
		   }
	@RequestMapping(value="/feedbackpage", method=RequestMethod.POST)
	public String feedback(Feedback feedback)
	{
		employeeRegistration.feedback(feedback);
		return "feedbackthank"; 
	}
	
	@RequestMapping(value="/feedbackpageemployee", method=RequestMethod.POST)
	public String feedbackEmployee(Feedback feedback)
	{
		employeeRegistration.feedback(feedback);
		return "feedbackthankEmployee"; 
	}
	
	

	@RequestMapping("/feedh")
	   public ModelAndView feedh() {
			System.out.println("entered show user");
		      return new ModelAndView("feedbackh", "command",feedback);
		   }
	@RequestMapping(value="/feedbackhr", method=RequestMethod.POST)
	public String feedbackhr(Feedback feedback)
	{
		employeeRegistration.feedback(feedback);
		return "HRHome"; 
	}
	
	@RequestMapping("/feedt")
	   public ModelAndView feedt() {
			System.out.println("entered show user");
		      return new ModelAndView("feedbackt", "command",feedback);
		   }
	@RequestMapping(value="/feedbacktr", method=RequestMethod.POST)
	public String feedbacktr(Feedback feedback)
	{
		employeeRegistration.feedback(feedback);
		return "TRHome"; 
	}
	
	@RequestMapping(value="/view",method = RequestMethod.GET)
	   public String showcandidate(Employee employee, Model model,HttpSession session) {
			System.out.println("entered show view");
			int empid= (Integer) session.getAttribute("Id");
			Employee emp =employeeRegistration.GetUserById(empid);
			model.addAttribute("emp", emp);
	return "Profile";
		   }
	
	@RequestMapping(value="/viewtrprofile",method = RequestMethod.GET)
	   public String showTRProfile(Employee employee, Model model,HttpSession session) {
			System.out.println("entered show view");
			int empid= (Integer) session.getAttribute("Id");
			Employee emp =employeeRegistration.GetUserById(empid);
			model.addAttribute("emp", emp);
	return "Trprofile";
		   }
	
	@RequestMapping(value="/viewhrprofile",method = RequestMethod.GET)
	   public String showHRProfile(Employee employee, Model model,HttpSession session) {
			System.out.println("entered show view");
			int empid= (Integer) session.getAttribute("Id");
			Employee emp =employeeRegistration.GetUserById(empid);
			model.addAttribute("emp", emp);
	return "Hrprofile";
		   }
	
	
	@RequestMapping(value="/viewadminprofile",method = RequestMethod.GET)
	   public String showAdminProfile(Employee employee, Model model,HttpSession session) {
			System.out.println("entered show view");
			int empid= (Integer) session.getAttribute("Id");
			Employee emp =employeeRegistration.GetUserById(empid);
			model.addAttribute("emp", emp);
	return "AdminProfile";
		   }
	
	
	@RequestMapping("/edit")
	public ModelAndView Showedit(HttpSession session, Model model) {
		int empid= (Integer) session.getAttribute("Id");
		System.out.println("Entered showEdit" +empid);
		Employee emp =employeeRegistration.GetUserById(empid);
		System.out.println(emp.getEmployeeRole()+"  "+ emp.basicDetails.getEmailId() +" " + emp.educationalDetails.getIntermediateCollegeName());
		model.addAttribute("emp", emp);
		return new ModelAndView("adminedit","command",emp);	
	}
	
	@RequestMapping("/editprofile1")
	public ModelAndView editEmployee(@ModelAttribute Employee employee, Model model) {
		Employee emp=employeeRegistration.updateEmployee(employee);
		model.addAttribute("emp", emp);
		return new ModelAndView("Profile","command",emp);
	
	}
	

	@RequestMapping("/search")
	public String searchJob(@ModelAttribute("job") Job job,Model model) {
	System.out.println(job);
	List<Job> list=employeeRegistration.search(job);
	model.addAttribute("jlist",list);
	return "ViewJobEx";

	}
	@RequestMapping("/homepage")
	public ModelAndView home()
	{
		return new ModelAndView("EmployeePage","command", job );
	}
	@RequestMapping("/hr")
	public ModelAndView homehr()
	{
		return new ModelAndView("HRHome","command", job );
	}
	@RequestMapping("/tr")
	public ModelAndView hometr()
	{
		return new ModelAndView("TRHome","command", job );
	}
	
	
	
	@RequestMapping("/confirm1{id}")
	public ModelAndView cpage(@PathVariable("id") int jobId,Model model,HttpSession session,Job job,HttpServletRequest request) {
		 request.getSession().setAttribute("jobId",jobId);
		int empid= (Integer) session.getAttribute("Id");
		Employee emp =employeeRegistration.GetUserById(empid);
		
		System.out.println(jobId);
		 job = jobServices.GetJobById(jobId);
		
	//job.setEmployee(emp);
	model.addAttribute("emp", emp);
	model.addAttribute("joblist",job);
	return new ModelAndView("confirm1","command",new Job());

	}
	
	@RequestMapping(value = "/addempjob", method = RequestMethod.POST)
    public ModelAndView add(HttpSession session,Job job,Employee employee) {
		System.out.println("Entered");
		int empid= (Integer) session.getAttribute("Id");
		int jobid= (Integer) session.getAttribute("jobId");
		//Job job1 = jobServices.GetJobById(jobid);
		Employee emp1 = employeeRegistration.GetUserById(empid);
		Job job2 = jobServices.GetJobByIdlist(jobid);
	  //List<Employee> emp =employeeRegistration.GetUserByIdlist(empid);
		System.out.println("Hello");
	  // job.setEmployee(emp);
	  	emp1.setStatus("Processing");
	  	job2.getEmployee().add(emp1);
	  	emp1.getJob().add(job2);
	  // jobServices.addEmployeetoJob(job);
	   employeeRegistration.addjopbtoEmployee(emp1);
	   System.out.println("Emp1 ended");
	   System.out.println("compeleted");
	   return new ModelAndView("EmployeePage","command",job);
 }

	@RequestMapping("/back")
	public ModelAndView back1()
	{
		return new ModelAndView("Viewjob","command", job );
	}
	
	@RequestMapping("/viewjob12")
	   public ModelAndView view(Model model,HttpSession session) {
			System.out.println("entered View job");
		/*	int jobid= (Integer) session.getAttribute("jobId");*/
			List<Job> list=employeeRegistration.viewJob();
			
			//System.out.println(list.get(0).getInternalemployee());
			model.addAttribute("Jlist", list);
		      return new ModelAndView("viewjob","command",employee);
		   }
	@RequestMapping("/status")
	public String EmployeeStatus(Model model,HttpSession session,Job job1)
	
	{
		int empid= (Integer) session.getAttribute("Id");
		Employee emp1 = employeeRegistration.GetUserById(empid);
		model.addAttribute("j", emp1);
		System.out.println(emp1.getJob().get(0).getJobId());
	//	model.addAttribute("j1", job);
		return "status";
		
	}
	
	/*@RequestMapping("/feedback")
	public ModelAndView feed()
	{
		return new ModelAndView("feedback","command", feedback);
	}*/
}
