package com.virtusa.vconnect.Services;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.virtusa.vconnect.model.Employee;
import com.virtusa.vconnect.model.Feedback;
import com.virtusa.vconnect.model.Job;
@Component
public class EmployeeRegistration {

	@Autowired
	SessionFactory sessionFactory;
	
	public void addEmployee(Employee employee) {
		
		Session session = sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		System.out.println("entered to service class  "+employee.getEmployeeId());
		session.save(employee);
		System.out.println("complted");
		t.commit();
		session.close();
	}
	
	public void addjopbtoEmployee(Employee employee) {
		Session session = sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		System.out.println("entered to service class  "+employee.getEmployeeId());
		System.out.println("Check "+employee.getJob());
		session.update(employee);
		System.out.println("complted");
		t.commit();
		session.close();
		}
	

	 public List<Employee> viewAppliedEmployee(Employee employee){
	      
		 Session session = sessionFactory.openSession();
		 Transaction tx=session.beginTransaction(); 
		 Query query=(Query) session.createQuery("from Employee where employeeRole='employee' and status='processing'");
		 List<Employee> list=query.getResultList();
		 tx.commit();
		 session.close();
		 return list;
   }
	
	 public List<Employee> validateUser(Employee employee)
	 {
		
		 Session session = sessionFactory.openSession();
		 Transaction tx=session.beginTransaction();  
		 Query query=session.createQuery("from Employee where employeeId =:i and password =:j");
		 query.setParameter("i", employee.getEmployeeId());
		 query.setParameter("j", employee.basicDetails.getPassword());
		 List<Employee> list=query.getResultList();
		 tx.commit();  
		 session.close();
		 return list;
		    }
	 

	 public List<Employee> GetUserByIdlist(int Id) {
		 Session session = sessionFactory.openSession();
		 Transaction t=session.beginTransaction();
		 Query query=session.createQuery("from Employee where employeeId=:vr");
		 query.setParameter("vr",Id);
		 List<Employee> list=query.getResultList();
		 System.out.println("entered to service class add User  ");
		 System.out.println("complted");
		 t.commit();
		 session.close();
		 return list;
	 }
	 public Employee getDetails(Employee emp) {
		 return (Employee) sessionFactory.openSession().get(Employee.class, emp.getEmployeeId());
		
	 }

	 public Employee GetUserById(int Id) {
		 Session session = sessionFactory.openSession();
		 Transaction t=session.beginTransaction();
		 Employee emp = (Employee) session.get(Employee.class,Id);
		 System.out.println("entered to service class add User  ");
		 System.out.println("complted");
		 t.commit();
		 session.close();
		 return emp;
	 }
	 
	 public Employee updateEmployee(Employee emp)
	 {
		Session session = sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		
		session.update(emp);
		System.out.println("complted");
		t.commit();
		session.close();
		return emp;
	 }
	 public List<Job> search(Job job){
			
		 	Session session=sessionFactory.openSession();
			Transaction t=session.beginTransaction();
			Query query=session.createQuery("from Job where jobDomain =:i ");
			query.setParameter("i", job.getJobDomain());
			List<Job> list=query.getResultList();  
			t.commit();
		    session.close();
		    return list;
		}

	 
	
	 
		public List<Employee> AdminSelectedInternalEmp()
		{
			Session session= sessionFactory.openSession();
			Transaction t=session.beginTransaction();
			System.out.println("enter into selected");
			Query query=session.createQuery("from Employee where status='admin approved' ");
			List<Employee> list=query.getResultList();
			t.commit();
			session.close();
			return list;
			
		}
		
		public List<Employee> AdminRejectedInternalEmp()
		{
			Session session= sessionFactory.openSession();
			Transaction t=session.beginTransaction();
			Query query=session.createQuery("from Employee where status='admin rejected'");
			List<Employee> list=query.getResultList();
			t.commit();
			session.close();
			return list;
			
		}
	 
	 public List<Job> GetJobById(int Id) {
		  Session session = sessionFactory.openSession();
		 Transaction t=session.beginTransaction();
		  Query query=session.createQuery("from Job where jobId=: i");
		 query.setParameter("i",Id);
		  List<Job> list=query.getResultList();
		  System.out.println("entered to service class add User  ");
		  System.out.println("complted");
		  t.commit();
		 session.close();
		 return list;
		 }
	 		 
 public List<Job> viewJob()
 {
	
		
		Session session = sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("from Employee");
		List<Job> list=query.getResultList();
		t.commit();
		//session.flush();
		session.close();
		return list;

	}

public void feedback(Feedback feedback) {
	Session session = sessionFactory.openSession();
	Transaction tx = session.beginTransaction();
	session.save(feedback);
	tx.commit();
	session.close();
	
}
public List<Employee> GetTrList(Employee employee) {
Session session = sessionFactory.openSession();
Transaction t=session.beginTransaction();
 Query query=session.createQuery("from Employee where employeeRole='Trpannel'");
List<Employee> list=query.getResultList();
System.out.println("entered to getTRlist ");
 System.out.println("complted");
 t.commit();
 session.close();
return list;
}
public List<Employee> GetHrList(Employee employee) {
 Session session = sessionFactory.openSession();
 Transaction t=session.beginTransaction();
Query query=session.createQuery("from Employee where employeeRole='Hrpannel'");
List<Employee> list=query.getResultList();
System.out.println("entered to getTRlist ");
System.out.println("complted");



t.commit();
 session.close();
 return list;
}

 public List<Employee> GetPmList(Employee employee) {
Session session = sessionFactory.openSession();
 Transaction t=session.beginTransaction();
Query query=session.createQuery("from Employee where employeeRole='Manager'");
 List<Employee> list=query.getResultList();
System.out.println("entered to getTRlist ");
 System.out.println("complted");
t.commit();
session.close();
return list;
 }
	
}
