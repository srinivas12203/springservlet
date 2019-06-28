package com.virtusa.vconnect.Services;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.virtusa.vconnect.model.Employee;
import com.virtusa.vconnect.model.TREvaluation;

public class InternalTRServices {
	
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void TRInternalApprove(int id) {
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		 System.out.println(id);
		 Query query=session.createQuery("update Employee set status='Level-I selected' where employeeId=:i");
		 query.setParameter("i", id);
		 query.executeUpdate();
		 t.commit();
		 session.close();
		 
	 }
	public void TRInternalReject(int id) {
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		 System.out.println(id);
		 Query query=session.createQuery("update Employee set status='Level-I rejected' where employeeId=:i");
		 query.setParameter("i", id);
		 query.executeUpdate();
		 t.commit();
		 session.close();
		 
	 }
	public List<Employee> TRSelectedInternal()
	{
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("from Employee where status='Level-I selected'");
		List<Employee> list=query.getResultList();
		t.commit();
		session.close();
		return list;
		
	}
	public List<Employee> TRRejectedInternal()
	{
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("from Employee where status='Level-I Rejected'");
		List<Employee> list=query.getResultList();
		t.commit();
		session.close();
		return list;
		
	}
	public void trInternalFeedback(TREvaluation trEvaluation) {
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		 session.save(trEvaluation);
		 t.commit();
		 session.close();
		 
	 }


}
