package dao;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.formVO;
import vo.profileVO;
import vo.skillsVO;

public class formDAO {

	public void insert(formVO vo) 
	{
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(vo);
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}	
		System.out.println("insert run");
		
	}

	public void update(profileVO vo) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction tr= session.beginTransaction();
			session.saveOrUpdate(vo);
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}	
		System.out.println("insert run");	
		
	}

	public void insertskills(skillsVO skillvo) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(skillvo);
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}	
		System.out.println("insert run");
		
		
	}
}
