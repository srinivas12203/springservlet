package com.virtusa.vconnect.model;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.vconnect.Services.JobServices;
import com.virtusa.vconnect.model.Job;

@Controller

public class JobController {
		
		@Autowired
		JobServices jobService;
		@Autowired
		Job job;
		//post job
		@RequestMapping("/post")
	
		   public ModelAndView showUser() {
			System.out.println("entered show user");
		      return new ModelAndView("postjob", "command",job);
		   }

		@RequestMapping(value = "/addJob", method = RequestMethod.GET)
		
		      public ModelAndView add(@ModelAttribute("job") Job job,HttpSession session,ModelMap model) {
			   System.out.println(job);
			   session.setAttribute("jobid",job.getJobId());
			   jobService.postJob(job);
			   System.out.println("completed");
			   model.addAttribute("jobId" ,job.getJobId());
			   model.addAttribute("jobDesignation" ,job.getJobDesignation());
		   	   model.addAttribute("jobDomain" ,job.getJobDomain());
		   	   model.addAttribute("location",job.getLocation());
			   
			   return new ModelAndView("index","command",new Job());
		   }
		
		@RequestMapping("/delete")
		public String deleteJob(@ModelAttribute("job") Job job,Model model) {
		   System.out.println("you clicked on delete Home page");
		   System.out.println(job);
		   List<Job> list=jobService.viewAllJobs(job);
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
		
		 jobService.deleteJob(id);
		 System.out.println(id);
		
		 System.out.println("completed");
		
		 return new ModelAndView("AdminPage","command",new Job());
		 }
		
		//update job
		@RequestMapping("/update")
		
		   public ModelAndView update() {
			System.out.println("entered updated id");
		      return new ModelAndView("updatejob", "command",job);
		   }

		@RequestMapping(value = "/updateJob", method = RequestMethod.GET)
		
		      public ModelAndView updateJob(@ModelAttribute("job") Job job,Model model) {
			   System.out.println(job);
			   
			   jobService.updateJob(job);
			   System.out.println("completed");
			   model.addAttribute("jobId" ,job.getJobId());
		   	   model.addAttribute("jobName" ,job.getJobDomain());
		   	   model.addAttribute("location",job.getLocation());
			   
			   return new ModelAndView("index","command",new Job());   
		   }
		
		
		//fetch table
	@RequestMapping("/viewjob")
	public String viewJob(@ModelAttribute("job") Job job,Model model) {
		System.out.println(job);
		List<Job> list=jobService.viewAllJobs(job);
		model.addAttribute("jlist",list);
		return "ViewJobs";
			
	}
	
	
}


