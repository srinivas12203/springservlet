package com.virtusa.vconnect.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.vconnect.Services.CandidateServices;
import com.virtusa.vconnect.Services.JobServices;
import com.virtusa.vconnect.model.Candidate;
import com.virtusa.vconnect.model.Employee;
import com.virtusa.vconnect.model.Job;

@Controller
public class CandidateController {
	@Autowired
	CandidateServices candidateServices;
	@Autowired
	Employee employee;
	
	
	@Autowired
	CandidateServices candidateservices;
	@Autowired
	Candidate candidate;
	@Autowired
	Job job;
	@Autowired
	JobServices jobServices;
	
	
	@RequestMapping("/register{jobid}")
	   public ModelAndView showCandidate(@PathVariable("jobid") int id, HttpServletRequest request) {

		System.out.println("entered show user");
		request.getSession().setAttribute("Id",id);
		return new ModelAndView("ExternalRegister", "command",candidate);
	   }
	
	
	@RequestMapping(value = "/addCandidate", method = RequestMethod.POST)
	public ModelAndView add(@ModelAttribute("user") Candidate candidate,HttpSession session,Model model) {
	System.out.println(candidate);
	int jobId = (Integer) session.getAttribute("Id");

	 List<Job> jobList = jobServices.GetJobByIdlist1(jobId);
	 candidate.setJobDomain(jobList.get(0).getJobDomain());
	candidate.setJobId(jobList.get(0).getJobId());
	candidate.setJobDesignation(jobList.get(0).getJobDesignation());
	candidate.setLocation(jobList.get(0).getLocation());
	candidate.setHrpannel(jobList.get(0).getHrpannel());
	candidate.setTrpannel(jobList.get(0).getTrpannel());
	 candidate.setStatus("Applied");
	Candidate candidate1=candidateservices.addUser(candidate);
	
 System.out.println("completed");
 	model.addAttribute("can", candidate1);
	 return new ModelAndView("thank","command",new Candidate());
 }
	
	
	
	
	
	
	/*
	@RequestMapping("/search")
	public String searchJob(@ModelAttribute("job") Job job,Model model) {
	System.out.println(job);
	List<Job> list=candidateservices.searchJob(job);
	model.addAttribute("jlist",list);
	return "ViewJobs";
}
*/

	
	

	
	/*@RequestMapping("/log")
	   public ModelAndView login() {
			System.out.println("entered show user");
		      return new ModelAndView("Loginc", "command",candidate);
		   }
		@RequestMapping(value = "/logvalidate", method = RequestMethod.GET)
	 public ModelAndView loginval(@ModelAttribute Candidate candidate, ModelMap model) {
		   
		   	 
		   System.out.println("completed");
		   System.out.println(candidate.getFirstName());
		   System.out.println(candidate.getEmailId());
		
		 List<Candidate> name= candidateservices.validateUser(candidate);
		 ModelAndView mp = null;
		 if(name.size() == 0) {
			 mp = new ModelAndView("Loginc","command",new Candidate());
			   
		 }
		else
		{
		   mp = new  ModelAndView("Admin1","command",new Candidate());
		   model.addAttribute("uname", candidate.getFirstName());
		   
		 }
	 
	 return mp;
	}*/
	

@RequestMapping("/viewjob")
public String viewJob(@ModelAttribute("job") Job job,Model model) {

List<Job> list=jobServices.viewAllJobs(job);
model.addAttribute("jlist",list);
return "ViewJobEx";
}
}
