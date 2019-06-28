package com.virtusa.vconnect.Services;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.virtusa.vconnect.model.Candidate;
import com.virtusa.vconnect.model.Employee;
import com.virtusa.vconnect.model.Feedback;
import com.virtusa.vconnect.model.HREvaluation1;
@Component
public class AdminServices {
	
	@Autowired
	SessionFactory sessionFactory;


	public void adminApprove(int id) {
		System.out.println("enter admin");
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		 System.out.println(id);
		 Query query=session.createQuery("update Candidate set status='admin approved' where candidateId=:i");
		 query.setParameter("i", id);
		 query.executeUpdate();
		 t.commit();
		 session.close();
		 
	 }
	public void adminReject(int id) {
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		 System.out.println(id);
		 Query query=session.createQuery("update Candidate set status='admin rejected' where candidateId=:i");
		 query.setParameter("i", id);
		 query.executeUpdate();
		 t.commit();
		 session.close();
		 
	 }
	public List<Candidate> AdminSelectedCandidates()
	{
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		System.out.println("enter into selected");
		Query query=session.createQuery("from Candidate where status='admin approved' ");
		List<Candidate> list=query.getResultList();
		t.commit();
		session.close();
		return list;
		
	}
	
	public List<Employee> AdminSelectedInternal()
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
	
	public List<Candidate> AdminRejectedCandidates()
	{
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("from Candidate where status='admin rejected'");
		
		List<Candidate> list=query.getResultList();
		t.commit();
		session.close();
		return list;
		
	}
	

	 public void adminApproveInternal(int id) {
			System.out.println("enter admin");
			Session session= sessionFactory.openSession();
			Transaction t=session.beginTransaction();
			System.out.println(id);
			Query query=session.createQuery("update Employee set status='admin approved' where employeeId=:i");
			query.setParameter("i", id);
			query.executeUpdate();
			t.commit();			 
			session.close();		 
		 }
	 
	 public List<Employee> showEmployee(Employee Employee)
	 {
	 		 Session session = sessionFactory.openSession();
	 		 Transaction tx=session.beginTransaction();
	 		 Query query=session.createQuery("from Employee where employeeRole='employee' and status ='Processing'"); 
	 		 List<Employee> list=query.getResultList();
	 		 tx.commit();
	 		 session.close();
		 	 return list;
	 }
	 
	 public void adminRejectInternal(int id) {
			System.out.println("enter admin");
			Session session= sessionFactory.openSession();
			Transaction t=session.beginTransaction();
			System.out.println(id);
			Query query=session.createQuery("update Employee set status='admin rejected' where employeeId=:i");
			query.setParameter("i", id);
			query.executeUpdate();
			t.commit();			 
			session.close();
		 }
	 
		public List<Feedback> viewFeedback(Feedback feedback)
		{
			Session session= sessionFactory.openSession();
			Transaction t=session.beginTransaction();
			System.out.println("enter into Feedback");
			Query query=session.createQuery("from Feedback");
			List<Feedback> list=query.getResultList();
			t.commit();
			session.close();
			return list;
			
		}
		
		public List<HREvaluation1> viewFinalList(HREvaluation1 hrEvaluation1)
		{
			Session session= sessionFactory.openSession();
			Transaction t=session.beginTransaction();
			System.out.println("enter into FinalList");
			Query query=session.createQuery("from HREvaluation1");
			List<HREvaluation1> list=query.getResultList();
			t.commit();
			session.close();
			return list;
			
		}
		


}
