package dao;

import javax.management.Query;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import vo.RegistrationVO;
import vo.UserRegisterVO;


public class RegistrationDAO {
	public void insert(RegistrationVO VO) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(VO);
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}	
		System.out.println("insert run");
	}

	public List search(RegistrationVO vo) 
	 {
	  List ls=null;
	  try
	  {
	   SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	   Session session =sessionFactory.openSession();
	   String query="from RegistrationVO";
	   org.hibernate.Query q=session.createQuery(query);
	    ls=q.list();  
	      System.out.println("List" +ls.size());
	      session.close();
	  }
	  catch(Exception exception)
	  {
	   exception.printStackTrace();
	  } 
	  return ls;
	 }

	public List edit(RegistrationVO vo) {
		List ls= new ArrayList();
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction tr=session.beginTransaction();
			org.hibernate.Query query=session.createQuery("from RegistrationVO where id='"+vo.getRegId()+"'");

			ls=query.list();
			tr.commit();
			System.out.println(ls.size()+ "sfsfsfsfsfs");
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public void delete(RegistrationVO vo) 
	{
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction tr=session.beginTransaction();

			session.delete(vo);
			tr.commit();
			System.out.println("in dao delete");
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}

	public List authentication(RegistrationVO loginVO) {
		List ls= new ArrayList();
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction tr=session.beginTransaction();
			org.hibernate.Query query=session.createQuery("from RegistrationVO where email='"+loginVO.getEmail()+"' and password='"+loginVO.getPassword()+"'");

			ls=query.list();
			System.out.println("List size is" + ls.size());
			tr.commit();
			System.out.println(ls.size()+ "sfsfsfsfsfs");
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public void update(RegistrationVO vo)
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

	public List usersearch(RegistrationVO loginVO) {
		List ls= new ArrayList();
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction tr=session.beginTransaction();
			org.hibernate.Query query=session.createQuery("from RegistrationVO");

			ls=query.list();
			System.out.println("List size is" + ls.size());
			tr.commit();
			System.out.println(ls.size()+ "sfsfsfsfsfs");
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public List searchtrainee(RegistrationVO vo) 
	{
		List ls= new ArrayList();
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction tr=session.beginTransaction();
			org.hibernate.Query query=session.createQuery("from RegistrationVO where designation='Trainee'" );

			ls=query.list();
			System.out.println("List size is" + ls.size());
			tr.commit();
			System.out.println(ls.size()+ "sfsfsfsfsfs");
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public List searchtrainer(RegistrationVO vo) 
	{
		List ls= new ArrayList();
	try
	{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		org.hibernate.Query query=session.createQuery("from RegistrationVO where designation='Trainer'" );

		ls=query.list();
		System.out.println("List size is" + ls.size());
		tr.commit();
		System.out.println(ls.size()+ "sfsfsfsfsfs");
		session.close();
	}
	catch(Exception z)
	{
		z.printStackTrace();
	}
	return ls;
	}

	public List searchmanager(RegistrationVO vo) 
	{
		List ls= new ArrayList();
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction tr=session.beginTransaction();
			org.hibernate.Query query=session.createQuery("from RegistrationVO where designation='Hiring Manager'" );

			ls=query.list();
			System.out.println("List size is" + ls.size());
			tr.commit();
			System.out.println(ls.size()+ "sfsfsfsfsfs");
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public List addNewAdmin(RegistrationVO newUserVO) {
		List ls= new ArrayList();
			try
			{
				SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
				Session session =sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				session.saveOrUpdate(newUserVO);
				tr.commit();
				session.close();
			}
			catch(Exception exception)
			{
				exception.printStackTrace();
			}	
			System.out.println("insert run");
			return ls;
	}

	public List UniqueEmailCheck(RegistrationVO s) 
	{
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			
			org.hibernate.Query q=session.createQuery("from RegistrationVO where email='"+s.getEmail()+"'"); 
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
