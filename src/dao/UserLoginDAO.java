package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.UserRegisterVO;



public class UserLoginDAO {
	
public List Userauthentication(UserRegisterVO Userloginvo) {
		
		List list= new ArrayList();
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			org.hibernate.Query q=session.createQuery("from UserRegisterVO where email='"+Userloginvo.getEmail()+"' and password='"+Userloginvo.getPassword()+"'"); 
			list=q.list();
			System.out.println("authentication list size"+list.size());
			System.out.println(Userloginvo.getEmail());
			System.out.println(Userloginvo.getPassword());
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return list;
		
		}

}
