package com.virtusa.vconnect.Services;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.virtusa.vconnect.model.Job;
@Component
public class JobServices {
	@Autowired
	SessionFactory sessionFactory;
	
	public void postJob(Job j) {
	Session session = sessionFactory.openSession();
	Transaction t=session.beginTransaction();
	
	System.out.println("entered to service class  "+j);
	session.save(j);
	System.out.println("completed");
	t.commit();
	session.close();
	}
	
	public void deleteJob(int id) {
		Session session = sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		Query query = session.createQuery("delete from Job where id =:i"); 
		query.setParameter("i",id);
		query.executeUpdate();
		System.out.println("completed");
		t.commit();
		session.close();
		}
		
	public void updateJob(Job job) {
     Session session=sessionFactory.openSession();
     Transaction t=session.beginTransaction();
    
    
     
      session.update(job);
      System.out.println("task completed");
      t.commit();
      session.close();
     }
	
	public List<Job> viewAllJobs(Job job){
		Session session=sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		 Query query=session.createQuery("from Job");
		 List<Job> list=query.getResultList();
		 t.commit();
	      session.close();
	      return list;
	}
	

	 public Job GetJobById(int Id) {
		 Session session = sessionFactory.openSession();
		 Transaction t=session.beginTransaction();
		 Job job = (Job) session.get(Job.class,Id);
		 System.out.println("entered to service class add User  ");
		 System.out.println("complted");
		 t.commit();
		 session.close();
		 return job;
	 }
	 
	 public List<Job> GetJobByIdlist1(int Id) {
		 Session session = sessionFactory.openSession();
		 Transaction t=session.beginTransaction();
		 Query query=session.createQuery("from Job where jobId =: i ");
		 query.setParameter("i",Id);
		 List<Job> list=query.getResultList();  
		 System.out.println("entered to service class add User  ");
		 System.out.println("complted");
		 t.commit();
		 session.close();
		 return list;
	 }
	 public Job GetJobByIdlist(int Id) {
		 Session session = sessionFactory.openSession();
		 Transaction t=session.beginTransaction();
		 /*Query query=session.createQuery("from Job where jobId =: i ");
		 query.setParameter("i",Id);
		 List<Job> list=query.getResultList();  
		 t.commit();*/
		 Job job=session.get(Job.class,Id);
		 session.close();
		 return job;
	 }
	
	/*public List<Job> search(Job job){
		Session session=sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		
		 Query query=session.createQuery("from Job j where j.jobDomain := i ");
		 query.setParameter("i", job.getJobDomain());
		
		 List<Job> list=query.getResultList();  
		 t.commit();
	      session.close();
	      return list;
	}*/
	 
	 
	 public void addEmployeetoJob(Job job) {
			Session session = sessionFactory.openSession();
			Transaction t=session.beginTransaction();
			System.out.println("entered to Service" +job.getJobId());
			/*System.out.println("entered to service class  "+job.getEmployee().getEmployeeId());
			//employee=session.load(Employee.class,eid);
			//System.out.println(employee);
			job.setEmployee(employee);
			System.out.println(employee);*/
			session.update(job);
			System.out.println("complted");
			t.commit();
			 session.close();
		}
}
