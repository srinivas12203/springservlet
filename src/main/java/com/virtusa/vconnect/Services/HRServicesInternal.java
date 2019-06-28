package com.virtusa.vconnect.Services;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.virtusa.vconnect.model.Candidate;
import com.virtusa.vconnect.model.Employee;
import com.virtusa.vconnect.model.HREvaluation1;

public class HRServicesInternal {
	
	@Autowired
	SessionFactory sessionFactory;
	
	
	public void HRApproveInternal(int id)
	{
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
	Query query=session.createQuery("update Employee set status='Level-II selected' where employeeId=:i");
	query.setParameter("i", id);
	query.executeUpdate();
	t.commit();
	session.close();
	}
	public void HRRejectInternal(int id)
	{
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("update Employee set status='Level-II rejected' where employeeId=:i");
		query.setParameter("i", id);
		query.executeUpdate();
		t.commit();
		session.close();
	}
	public List<Employee> HRInternalSelectedCandidates()
	{
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("from Employee where status='Level-II selected'");
		List<Employee> list=query.getResultList();
		t.commit();
		session.close();
		return list;
		
	}
	public List<Employee> HRInternalRejectedCandidates()
	{
		Session session= sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("from Employee where status='Level-II rejected'");
		List<Employee> list=query.getResultList();
		t.commit();
		session.close();
		return list;
		
	}
	
	public void hrInternalFeedback(HREvaluation1 hrEvaluation) {
		Session session = sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		session.save(hrEvaluation);
		System.out.println("complted");
		t.commit();
		}
}
