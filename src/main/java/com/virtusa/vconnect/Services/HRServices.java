package com.virtusa.vconnect.Services;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.virtusa.vconnect.model.Candidate;

public class HRServices {
	
	@Autowired
	SessionFactory sessionFactory;
	
	
	public void HRApprove(int id)
	{
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
	Query query=session.createQuery("update Candidate set status='Level-II selected' where candidateId=:i");
	query.setParameter("i", id);
	query.executeUpdate();
	t.commit();
	session.close();
	}
	public void HRReject(int id)
	{
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("update Candidate set status='Level-II rejected' where candidateId=:i");
		query.setParameter("i", id);
		query.executeUpdate();
		t.commit();
		session.close();
	}
	public List<Candidate> HRSelectedCandidates()
	{
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("from Candidate where status='Level-II selected'");
		List<Candidate> list=query.getResultList();
		t.commit();
		session.close();
		return list;
		
	}
	public List<Candidate> HRRejectedCandidates()
	{
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("from Candidate where status='Level-II rejected'");
		List<Candidate> list=query.getResultList();
		t.commit();
		session.close();
		return list;
		
	}


	

}
