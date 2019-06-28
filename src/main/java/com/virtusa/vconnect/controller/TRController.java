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
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.vconnect.Services.AdminServices;
import com.virtusa.vconnect.Services.ExternalTRServices;
import com.virtusa.vconnect.Services.InternalTRServices;
import com.virtusa.vconnect.Services.JobServices;
import com.virtusa.vconnect.model.Candidate;
import com.virtusa.vconnect.model.Employee;
import com.virtusa.vconnect.model.Job;
import com.virtusa.vconnect.model.TREvaluation;
@Controller
public class TRController {
	@Autowired
	ExternalTRServices extrenaltrServices;
	@Autowired
	InternalTRServices internaltrServices;
	
	@Autowired
	JobServices jobService;
	@Autowired
	Candidate candidate;
	@Autowired
    AdminServices adminServices;
	
	@Autowired
	Employee employee;
	
	
	//ViewApplicants TR
		@RequestMapping("/viewappTRExternal")
		public String showCandidates(Candidate candidate,Model model)
		{
			List<Candidate> canlist=adminServices.AdminSelectedCandidates();
			model.addAttribute("vlist", canlist);
			System.out.println(canlist);
			return "ViewApplicantsTRExternal";
		
		}
		
		@RequestMapping("/viewappTRInternal")
		public String showEmployee(Employee employee,Model model)
		{
			List<Employee> list=adminServices.AdminSelectedInternal();
			model.addAttribute("viewlist",list);
			System.out.println(list);
			return "ViewApplicantsTRInternal";
		
		}
	
	@RequestMapping("/trApproveExternal{id}")
	public ModelAndView trApprove(@PathVariable("id")int id, Model model, HttpServletRequest request,HttpSession session)
	{
		request.getSession().setAttribute("Id", id);
		 id=(Integer) session.getAttribute("Id");
		 extrenaltrServices.TRApprove(id);
		 List<Candidate> canlist=adminServices.AdminSelectedCandidates();
			model.addAttribute("vlist", canlist);
		return new ModelAndView("ViewApplicantsTRExternal");
	}
	@RequestMapping("/trRejectExternal{id}")
	public ModelAndView trReject(@PathVariable("id")int id, Model model, HttpServletRequest request,HttpSession session)
	{
		request.getSession().setAttribute("Id", id);
		 id=(Integer) session.getAttribute("Id");
		 extrenaltrServices.TRReject(id);
		 List<Candidate> canlist=adminServices.AdminSelectedCandidates();
			model.addAttribute("vlist", canlist);
		return new ModelAndView("ViewApplicantsTRExternal");
	}
	
	@RequestMapping("/trApproveInternal{id1}")
	public String trApproveInternal(@PathVariable("id1") int id, Model model, HttpServletRequest request,HttpSession session)
	{
		System.out.println("Entered TR Approve");
		request.getSession().setAttribute("Id", id);
		id=(Integer) session.getAttribute("Id");
		extrenaltrServices.TRApproveInternal(id);
		List<Employee> emplist=adminServices.AdminSelectedInternal();
		model.addAttribute("vlist", emplist);
		return "ViewApplicantsTRInternal";
	}
	@RequestMapping("/trRejectInternal{id1}")
	public String trRejectInternal(@PathVariable("id1") int id, Model model, HttpServletRequest request,HttpSession session)
	{
		request.getSession().setAttribute("Id", id);
		 id=(Integer) session.getAttribute("Id");
		 extrenaltrServices.TRRejectInternal(id);
		 List<Employee> emplist=adminServices.AdminSelectedInternal();
			model.addAttribute("vlist", emplist);
		return "ViewApplicantsTRInternal";
	}
	
	@RequestMapping("/trselectExternal")
	public String displayCandidates(Candidate candidate,Model model)
	{
		List<Candidate> canlist=extrenaltrServices.TRSelectedCandidates();
		model.addAttribute("vlist", canlist);
		System.out.println(canlist);
		return "approvedListTRExternal";
		
		
	}
	@RequestMapping("/trselectExternalAdmin")
	public String displayCandidates3(Candidate candidate,Model model)
	{
		List<Candidate> canlist=extrenaltrServices.TRSelectedCandidates();
		model.addAttribute("vlist", canlist);
		System.out.println(canlist);
		return "approvedListTRExternalAdmin";
		
		
	}
	@RequestMapping("/trrejectExternal")
	public String displayCandidates1(Candidate candidate,Model model)
	{
		List<Candidate> canlist=extrenaltrServices.TRRejectedCandidates();
		model.addAttribute("vlist", canlist);
		System.out.println(canlist);
		return "rejectedListTRExternal";
		
		
	}
	@RequestMapping("/trrejectExternalAdmin")
	public String displayCandidates4(Candidate candidate,Model model)
	{
		List<Candidate> canlist=extrenaltrServices.TRRejectedCandidates();
		model.addAttribute("vlist", canlist);
		System.out.println(canlist);
		return "rejectListTRExternalAdmin";
		
		
	}
	@RequestMapping("/trselectInteral")
	public String displayInternalSelected(Employee employee,Model model)
	{
		List<Employee> emplist=internaltrServices.TRSelectedInternal();
		model.addAttribute("vlist", emplist);
		System.out.println(emplist);
		return "approvedListTRInternal";
		
		
	}
	@RequestMapping("/trrejectInternal")
	public String displayRejectedInternal(Employee employee,Model model)
	{
		List<Employee> emplist=internaltrServices.TRRejectedInternal();
		model.addAttribute("vlist", emplist);
		System.out.println(emplist);
		return "rejectListTRInternal";
	}
	
	
	@RequestMapping("/trselectInternalAdmin")
	 public String viewapproveTRInternal(@ModelAttribute("employee") Employee employee,Job job,Model model) {
		List<Employee> emplist=internaltrServices.TRSelectedInternal();
		model.addAttribute("vlist", emplist);
		  return "approvedListTRInternalAdmin";
	}
	@RequestMapping("/trrejectInternalAdmin")
	 public String viewrejectTRInternal(@ModelAttribute("employee") Employee employee,Job job,Model model) {
		List<Employee> emplist=internaltrServices.TRRejectedInternal();
		model.addAttribute("vlist", emplist);
		  return "rejectedListTRInternalAdmin";
	}
	@RequestMapping("/trInternalFeedback")
	public ModelAndView trInternalFeedback(TREvaluation trEvaluation)
	{
		internaltrServices.trInternalFeedback(trEvaluation);
		return new ModelAndView("evaluationTRPanel","command",new TREvaluation());
	}

}
