package com.virtusa.vconnect.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.vconnect.Services.ExternalTRServices;
import com.virtusa.vconnect.Services.HRServices;
import com.virtusa.vconnect.Services.InternalTRServices;
import com.virtusa.vconnect.Services.JobServices;
import com.virtusa.vconnect.model.Candidate;
import com.virtusa.vconnect.model.Employee;


@Controller
public class HRController {
	
	@Autowired
	HRServices hrServices;
	@Autowired
	JobServices jobService;
	@Autowired
	Candidate candidate;
	@Autowired
	ExternalTRServices externalTrServices;
	

			@RequestMapping("/viewappHRExternal")
			public ModelAndView showCandidates(Candidate candidate,Model model)
			{
				List<Candidate> canlist=externalTrServices.TRSelectedCandidates();
				model.addAttribute("vlist", canlist);
				System.out.println(canlist);
				return new ModelAndView("viewApplicantsHRExternal","command",new Candidate());
			
			}
	
/*//ViewApplicants HR
			@RequestMapping("/viewappHR")
			public String viewApplicant(Job job,Candidate candidate,Model model) {
				System.out.println("Entered View Applicant");
				List<Job> list = jobService.viewJobApplicants();
			   System.out.println(candidate.getCandidateName());
				model.addAttribute("viewlist",list);
				return "ViewApplicantsTR";
			
			}*/
	
	@RequestMapping("/hrApproveExternal{id}")
	public ModelAndView hrApprove(@PathVariable("id")int id, Model model, HttpServletRequest request,HttpSession session)
	{
		request.getSession().setAttribute("Id", id);
		 id=(Integer) session.getAttribute("Id");
		hrServices.HRApprove(id);
		List<Candidate> canlist=externalTrServices.TRSelectedCandidates();
		model.addAttribute("vlist", canlist);
		
		return new ModelAndView("viewApplicantsHRExternal");
	}
	@RequestMapping("/hrRejectExternal{id}")
	public ModelAndView hrReject(@PathVariable("id")int id, Model model, HttpServletRequest request,HttpSession session)
	{
		request.getSession().setAttribute("Id", id);
		 id=(Integer) session.getAttribute("Id");
		hrServices.HRReject(id);
		List<Candidate> canlist=externalTrServices.TRSelectedCandidates();
		model.addAttribute("vlist", canlist);
		return new ModelAndView("viewApplicantsHRExternal");
	}
	@RequestMapping("/hrselectExternal")
	public String displayCandidates(Candidate candidate,Model model)
	{
		List<Candidate> canlist=hrServices.HRSelectedCandidates();
		model.addAttribute("candidatelist", canlist);
		System.out.println(canlist);
		return "approvedListHR";
		
		
	}
	@RequestMapping("/hrrejectExternal")
	public String displayCandidates1(Candidate candidate,Model model)
	{
		List<Candidate> canlist=hrServices.HRRejectedCandidates();
		model.addAttribute("candidatelist", canlist);
		System.out.println(canlist);
		return "rejectedListHR";
		
		
	}

	@RequestMapping("/hrselectExternalAdmin")
	public String displayCandidates6(Candidate candidate,Model model)
	{
		List<Candidate> canlist=hrServices.HRSelectedCandidates();
		model.addAttribute("candidatelist", canlist);
		System.out.println(canlist);
		return "Finallist";
		
		
	}
	

}
