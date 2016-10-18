package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import vo.UserRegisterVO;
import vo.skillsVO;

public class UserRegisterDAO {
	public void insert(UserRegisterVO VO) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(VO);
			System.out.println("insert");
			tr.commit();
			System.out.println("insert");
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}	
		System.out.println("insert run");
	}

	public void updatepass(UserRegisterVO userVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(userVO);
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}	
		System.out.println("insert run");
		
	}

	public List Userauthentication(UserRegisterVO loginVO) 
	{
		List list= new ArrayList();
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			
			org.hibernate.Query q=session.createQuery("from UserRegisterVO where email='"+loginVO.getEmail()+"' and password='"+loginVO.getPassword()+"'"); 
			list=q.list();
			System.out.println("authentication list size From UserRegisterDAO"  +list.size());
			System.out.println("In UserRegisterDAO");
			System.out.println(loginVO.getEmail());
			System.out.println(loginVO.getPassword());
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return list;
		
		}
	public List getUserByUserId(UserRegisterVO userVO){
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			
			org.hibernate.Query q=session.createQuery("from UserRegisterVO where email='"+userVO.getEmail()+"'"); 
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

	public List authentication(UserRegisterVO s) 
	{
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			
			org.hibernate.Query q=session.createQuery("from UserRegisterVO where email='"+s.getEmail()+"'"); 
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