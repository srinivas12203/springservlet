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

import com.virtusa.vconnect.Services.EmployeeRegistration;
import com.virtusa.vconnect.Services.HRServicesInternal;
import com.virtusa.vconnect.Services.InternalTRServices;

import com.virtusa.vconnect.model.Candidate;
import com.virtusa.vconnect.model.Employee;
import com.virtusa.vconnect.model.HREvaluation1;

@Controller
public class HRInternalController {
	
	@Autowired
	Employee employee;
	@Autowired
	HRServicesInternal hrServicesInternal;
	
	@Autowired
	EmployeeRegistration employeeRegistration;
	@Autowired
	InternalTRServices internalTRServices;
	
	@RequestMapping("/viewapphrInternal")
	public String showEmployee(Employee employee,Model model)
	{
		List<Employee> list=internalTRServices.TRSelectedInternal();
		model.addAttribute("vlist",list);
		System.out.println(list);
		return "HRInternalApplicants";
	}

	
	
	@RequestMapping("/hrApproveInternal{id2}")
	public ModelAndView hrApprove(@PathVariable("id2") int id, Model model, HttpServletRequest request,HttpSession session)
	{
		System.out.println("HR Approve");
		request.getSession().setAttribute("Id", id);
		 id=(Integer) session.getAttribute("Id");
		hrServicesInternal.HRApproveInternal(id);
		List<Employee> list=internalTRServices.TRSelectedInternal();
		model.addAttribute("vlist",list);
		return new ModelAndView("HRInternalApplicants");
	}
	@RequestMapping("/hrRejectInternal{id2}")
	public ModelAndView hrReject(@PathVariable("id2") int id, Model model, HttpServletRequest request,HttpSession session)
	{
		request.getSession().setAttribute("Id", id);
		 id=(Integer) session.getAttribute("Id");
		hrServicesInternal.HRRejectInternal(id);
		List<Employee> list=internalTRServices.TRSelectedInternal();
		model.addAttribute("viewlist",list);
		return new ModelAndView("HRInternalApplicants");
	}
	@RequestMapping("/hrselectInteral")
	public String displayCandidates(Employee employee,Model model)
	{
		System.out.println("Entered hrselectIntenal");
		List<Employee> emplist=hrServicesInternal.HRInternalSelectedCandidates();
		model.addAttribute("vlist", emplist);
		System.out.println(emplist);
		return "HRSelectedInternal";
		
		
	}
	@RequestMapping("/hrrejectInternal")
	public String displayCandidates1(Employee employee,Model model)
	{
		List<Employee> emplist=hrServicesInternal.HRInternalRejectedCandidates();
		model.addAttribute("vlist", emplist);
		System.out.println(emplist);
		return "HRRejectedInternal";
		
		
	}
	@RequestMapping("/hrselectInternalAdmin")
	public String viewapprovedAdmin(Employee employee,Model model)
	{
		System.out.println("Entered hrselectIntenal");
		List<Employee> emplist=hrServicesInternal.HRInternalSelectedCandidates();
		model.addAttribute("vlist", emplist);
		System.out.println(emplist);
		return "FinallistInternal";
		
		
	}
	
	@RequestMapping("/hrPanel{id}")
	public ModelAndView hrEvaluation(@PathVariable("id") int empid,HREvaluation1 hrEvaluation,Model model) {
		System.out.println(hrEvaluation);
		Employee emp =employeeRegistration.GetUserById(empid);
	 /*List<Job> list=jobServices.viewAllJobs(job);
	  model.addAttribute("jlist",list);*/
	hrServicesInternal.hrInternalFeedback(hrEvaluation);
	model.addAttribute("emp", emp);
	 return new ModelAndView("evaluationHR","command",new com.virtusa.vconnect.model.HREvaluation1());
	}
	


}
