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
import com.virtusa.vconnect.Services.CandidateServices;
import com.virtusa.vconnect.Services.EmployeeRegistration;
import com.virtusa.vconnect.model.Candidate;
import com.virtusa.vconnect.model.Employee;
import com.virtusa.vconnect.model.Feedback;
import com.virtusa.vconnect.model.HREvaluation1;
import com.virtusa.vconnect.model.Job;

@Controller
public class AdminController {

	@Autowired
	AdminServices adminServices;
	@Autowired
	Candidate candidate;
	@Autowired
	CandidateServices candidateServices;
	
	@Autowired
	Job job;
	
	@Autowired
	Feedback feedback;
	
	@Autowired
	EmployeeRegistration employeeRegistration;
	
	
	//Home page controller

	
		@RequestMapping("/adminHome")
		public String adminHome() {
			System.out.println("you clicked on admin Home page");
			
			return "AdminPage";
				
		}
	
		//manage External applicants for admin
		@RequestMapping("/ManageApplicants")
	 public ModelAndView viewcandidate(@ModelAttribute("candidate") Candidate candidate1,Model model) {
	   System.out.println(candidate1);
	   List<Candidate> list=candidateServices.viewCandidate(candidate1);
	   model.addAttribute("viewlist",list);
	   return new ModelAndView("ViewApplicantsExternal","command",candidate);
	}
		
	@RequestMapping("/admin")
	public ModelAndView admin()                       
	{
		return new ModelAndView("AdminHomePage");
	}
	@RequestMapping("/adminApprove{id}")
	public ModelAndView adminAprrove(@PathVariable("id") int id, Model model,Candidate candidate1, HttpServletRequest request,HttpSession session)
	{
		
		System.out.println("enter");
		request.getSession().setAttribute("Id", id);
		id=(Integer) session.getAttribute("Id");
		adminServices.adminApprove(id);
		List<Candidate> canlist=candidateServices.viewCandidate(candidate1);
		
		model.addAttribute("viewlist", canlist);
		return new ModelAndView("ViewApplicantsExternal","command",candidate);
		
	}
	@RequestMapping("/adminReject{id}")
	public ModelAndView adminReject(@PathVariable("id") int id, Model model,Candidate candidate1, HttpServletRequest request,HttpSession session)
	{
		request.getSession().setAttribute("Id", id);
		id=(Integer) session.getAttribute("Id");
		adminServices.adminReject(id);
		List<Candidate> canlist=candidateServices.viewCandidate(candidate1);
		model.addAttribute("viewlist", canlist);
		return new ModelAndView("ViewApplicantsExternal","command",candidate);
		}
	@RequestMapping("/adminselect")
	public String displayCandidates(Candidate candidate,Model model)
	{
		List<Candidate> canlist=adminServices.AdminSelectedCandidates();
		System.out.println(canlist.get(0).getJobDomain());
		System.out.println(canlist.get(0).getExperience());
		System.out.println(canlist.get(0).getPreviousCompany());
		model.addAttribute("viewlist", canlist);
		System.out.println(canlist);
		return "AdminApproved";	
	}
	@RequestMapping("/adminreject")
	public String displayCandidates1(Candidate candidate,Model model)
	{
		List<Candidate> canlist=adminServices.AdminRejectedCandidates();
		model.addAttribute("viewlist", canlist);
		System.out.println(canlist);
		return "AdminRejected";
		}
	
	//Admin actions for Internal Employee
	
	@RequestMapping("/adminApproveInternal{id}")
	public String adminAprroveInternal(@PathVariable("id") int id, Model model,Employee employee, HttpServletRequest request,HttpSession session)
	{
		System.out.println("Enter ??Internal");
		request.getSession().setAttribute("Id", id);
		id=(Integer) session.getAttribute("Id");
		adminServices.adminApproveInternal(id);
		List<Employee> list=adminServices.showEmployee(employee);
		model.addAttribute("viewlist", list);
		return "viewapplicant";
		
	}
	@RequestMapping("/adminRejectInternal{id}")
	public String adminRejectInternal(@PathVariable("id") int id, Model model,Employee employee, HttpServletRequest request,HttpSession session)
	{
		request.getSession().setAttribute("Id", id);
		id=(Integer) session.getAttribute("Id");
		adminServices.adminRejectInternal(id);
		List<Employee> list=adminServices.showEmployee(employee);
		model.addAttribute("viewlist",list);
		return "viewapplicant";
		
	}
	@RequestMapping("/adminselectInternal")
	public String displayCandidatesInternal(Employee employee,Model model,Job job)
	{
		List<Employee> emplist=employeeRegistration.AdminSelectedInternalEmp();
		model.addAttribute("vlist", emplist);
		System.out.println(emplist);
		return "AdminapprovedInternal";
		}
	//Admin rejection panel
	@RequestMapping("/adminrejectInternal")
	public String displayCandidates1Internal(Employee employee,Model model)
	{
		List<Employee> emplist=employeeRegistration.AdminRejectedInternalEmp();
		model.addAttribute("vlist", emplist);
		System.out.println(emplist);
		return "AdminRejectedInternal";
	}
	
	@RequestMapping("/ManageInternalApplicants")
	 public String viewInternal(@ModelAttribute("employee") Employee employee,Job job,Model model) {
		  List<Employee> list=employeeRegistration.viewAppliedEmployee(employee);
		  model.addAttribute("viewlist",list);
		  return "viewapplicant";
	}
	@RequestMapping("/offerExternal{id}")
	public String offerExternal( Model model, Candidate candidate, HttpServletRequest request,HttpSession session) {
		/*request.getSession().setAttribute("Id", id);
		id=(Integer) session.getAttribute("Id");*/
		 
	    return "offer";
	}
	

	@RequestMapping("/viewfeedback")
	 public String viewFeedback(@ModelAttribute("feedback") Feedback feedback,Model model) {
	   System.out.println(candidate);
	   List<Feedback> flist=adminServices.viewFeedback(feedback);
	   model.addAttribute("viewlist",flist);
	   return "viewFeedback";
	}
	@RequestMapping("/viewFinalList")
	 public String viewFinalList(@ModelAttribute("hrEvalution") HREvaluation1 hrEvaluation1,Model model) {
	   /*System.out.println(candidate);*/
	   List<HREvaluation1> flist=adminServices.viewFinalList(hrEvaluation1);
	   model.addAttribute("viewlist",flist);
	   return "AdminFinalList";
	}
	
	}

	
	
	
