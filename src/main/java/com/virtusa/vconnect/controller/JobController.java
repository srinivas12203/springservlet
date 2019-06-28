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
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.vconnect.Services.EmployeeRegistration;
import com.virtusa.vconnect.Services.JobServices;
import com.virtusa.vconnect.model.Candidate;
import com.virtusa.vconnect.model.Employee;
import com.virtusa.vconnect.model.Job;

@Controller

public class JobController {
	@Autowired
	EmployeeRegistration employeeRegistration;
	
	@Autowired
	Employee employee;
	@Autowired
	JobServices jobServices;
		
		@Autowired
		Job job;
		//post job
		@RequestMapping("/insertjob")
	
		   public ModelAndView showUser(Model model,Employee employee) {
			System.out.println("entered show user");
			List<Employee> Trlist = employeeRegistration.GetTrList(employee);
			List<Employee> Hrlist = employeeRegistration.GetHrList(employee);
			List<Employee> Pmlist = employeeRegistration.GetPmList(employee);
			System.out.println(Pmlist);
			model.addAttribute("Hrlist", Hrlist);
			model.addAttribute("Trlist", Trlist);
			model.addAttribute("pmlist", Pmlist);
		      return new ModelAndView("addjobboot","command",job);
		   }

		@RequestMapping(value = "/addJob", method = RequestMethod.GET)
		
		      public ModelAndView add(@ModelAttribute("job") Job job,HttpSession session,ModelMap model) {
			   System.out.println(job);
			   session.setAttribute("jobid",job.getJobId());
			   jobServices.postJob(job);
			   System.out.println("completed");
			   model.addAttribute("jobId" ,job.getJobId());
			   model.addAttribute("jobDesignation" ,job.getJobDesignation());
		   	   model.addAttribute("jobDomain" ,job.getJobDomain());
		   	   model.addAttribute("location",job.getLocation());
			   
			   return new ModelAndView("AdminPage","command",new Job());
		   }
		
		//delete table
		@RequestMapping("/delete")
		public String deleteJob(@ModelAttribute("job") Job job,Model model) {
		    System.out.println("you clicked on delete Home page");
		    System.out.println(job);
		    List<Job> list=jobServices.viewAllJobs(job);
		    model.addAttribute("jlist",list);
		     return "deleteJob123";
		     }

	// For admin view and delete for job
	@RequestMapping("/deletejob1{id}")
     public ModelAndView deleteJob(@PathVariable("id") int id ,Model model,Job job, HttpServletRequest request,HttpSession session) {
		  System.out.println(job);
		   request.getSession().setAttribute("Id", id);
		 id=(Integer) session.getAttribute("Id");
		  System.out.println(id);
		 jobServices.deleteJob(id);
		  System.out.println(id);
		
		System.out.println("completed");
		
		return new ModelAndView("AdminPage","command",new Job());
		}
		//update job
		@RequestMapping("/update1{id}")
		
		   public ModelAndView update(@PathVariable("id") int id, Model model,Job job, HttpServletRequest request,HttpSession session) {
			System.out.println("entered updated id");
			
			//int eid=(Integer) request.getSession().getAttribute("id");
			System.out.println(id);
			List<Job> list=jobServices.viewAllJobs(job);
			Job job1=jobServices.GetJobById(id);
			model.addAttribute("vlist",job1);
			model.addAttribute("jlist",list);
		    return new ModelAndView("update", "command",job1);
		   }

		@RequestMapping(value = "/save{id}")
		
		      public ModelAndView updateJob(@PathVariable("id") int id, Model model,Job job, HttpServletRequest request,HttpSession session) {
			   System.out.println(job);
			   
			   jobServices.updateJob(job);
				model.addAttribute("vlist",job);
				List<Job> list=jobServices.viewAllJobs(job);
				model.addAttribute("jlist",list);
			   /*System.out.println("completed");
			   model.addAttribute("jobId" ,job.getJobId());
		   	   model.addAttribute("jobDomain" ,job.getJobDomain());
		   	 model.addAttribute("jobDescription" ,job.getJobDescription());
		   	   model.addAttribute("location",job.getLocation());
			   */
			   return new ModelAndView("viewJobs","command",job);   
		   }
		
		
		//fetch table
	@RequestMapping("/viewjobInternal")
	public ModelAndView viewJob(@ModelAttribute("job") Job job,Model model) {
		System.out.println(job);
		List<Job> list=jobServices.viewAllJobs(job);
		model.addAttribute("jlist",list);
		return new ModelAndView("Viewjob","command",new Job());
			
	}
	
	
	@RequestMapping("/viewjob1")
	public ModelAndView viewjob(@ModelAttribute("job") Job job,Model model) {
		System.out.println(job);
		List<Job> list=jobServices.viewAllJobs(job);
		model.addAttribute("jlist",list);
		return new ModelAndView("viewJobs","command",new Job());
			
	}

	

	
	 
}


