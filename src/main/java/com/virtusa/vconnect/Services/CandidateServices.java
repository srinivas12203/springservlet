package com.virtusa.vconnect.Services;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.virtusa.vconnect.model.Candidate;
import com.virtusa.vconnect.model.Job;


@Component
public class CandidateServices {



		@Autowired
		SessionFactory sessionFactory;
		
		public Candidate addUser(Candidate candidate) {
		Session session = sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		
		System.out.println("entered to service class  "+candidate);
		session.save(candidate);
		System.out.println("complted");
		t.commit();
		return candidate;
		}

	/*	 public List<Candidate> validateUser(Candidate candidate)
		 {
			 
			 System.out.println(candidate.getEmailId());
			 Session session = sessionFactory.openSession();
			 Transaction tx=session.beginTransaction();  
			 Query query=(Query) session.createQuery("from Candidate where emailId =:i and firstName =:j");
			 query.setParameter("i", candidate.getEmailId());
			 query.setParameter("j", candidate.getFirstName());
			 List<Candidate> list=query.getResultList();
			 tx.commit();  
			 session.close();
			 return list;
		 }
		*/




	/*	 public List<Candidate> showCandidate(Candidate candidate)
{
			 Session session = sessionFactory.openSession();
		 Transaction tx=session.beginTransaction();
		 Query query=session.createQuery("from Candidate");
		 
		 List<Candidate> list=query.getResultList();
		 tx.commit();
		 session.close();
		 return list;
}*/
		//view candidates for admin
		 public List<Candidate> viewCandidate(Candidate candidate){
	      Session session = sessionFactory.openSession();
		   Transaction tx=session.beginTransaction(); 
		  Query query=(Query) session.createQuery("from Candidate");
		   //query.setParameter("i", job.getJobId());
		  List<Candidate> list=query.getResultList();
		   tx.commit();
		    session.close();
		    return list;
		    }
		 
		/* public List<Job> searchJob(Job job)
		 {
			 Session session = sessionFactory.openSession();
			 Transaction tx=session.beginTransaction();  
			 Query query=(Query) session.createQuery("from JobSearch where jobDomain =:i " );
			 query.setParameter("i", job.getJobDomain());
			 
			 List<Job> list=query.getResultList();
			 tx.commit();  
			 session.close();
			 return list;
			 
			    }*/
		
}


