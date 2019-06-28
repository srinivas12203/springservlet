package com.virtusa.vconnect.Services;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.virtusa.vconnect.model.Candidate;

public class ExternalTRServices {
	
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void TRApprove(int id) {
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		 System.out.println(id);
		 Query query=session.createQuery("update Candidate set status='tr approved' where candidateId=:i");
		 query.setParameter("i", id);
		 query.executeUpdate();
		 t.commit();
		 session.close();
		 
	 }
	
	public void TRApproveInternal(int id) {
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		 System.out.println(id);
		 Query query=session.createQuery("update Employee set status='Level-I selected' where employeeId=:i");
		 query.setParameter("i", id);
		 query.executeUpdate();
		 t.commit();
		 session.close();
		 
	 }
	public void TRReject(int id) {
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		 System.out.println(id);
		 Query query=session.createQuery("update Candidate set status='Level-I rejected' where candidateId=:i");
		 query.setParameter("i", id);
		 query.executeUpdate();
		 t.commit();
		 session.close();
		 
	 }
	
	public void TRRejectInternal(int id) {
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		 System.out.println(id);
		 Query query=session.createQuery("update Employee set status='Level-I rejected' where employeeId=:i");
		 query.setParameter("i", id);
		 query.executeUpdate();
		 t.commit();
		 session.close();
		 
	 }
	public List<Candidate> TRSelectedCandidates()
	{
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("from Candidate where status='Level-I selected'");
		List<Candidate> list=query.getResultList();
		t.commit();
		session.close();
		return list;
		
	}
	public List<Candidate> TRRejectedCandidates()
	{
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("from Candidate where status='Level-I rejected'");
		List<Candidate> list=query.getResultList();
		t.commit();
		session.close();
		return list;
		
	}


}
