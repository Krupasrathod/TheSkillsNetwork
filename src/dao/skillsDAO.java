package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.skillsVO;

public class skillsDAO 
{
	public List subjectfind(skillsVO s) {
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			
			org.hibernate.Query q=session.createQuery("from skillsVO where subjectName='"+s.getSubjectName()+"'"); 
			list=q.list();
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return list;
	}

	public List searchsubject(skillsVO vo) 
	{
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			
			org.hibernate.Query q=session.createQuery("from skillsVO"); 
			list=q.list();
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return list;
	}
}
