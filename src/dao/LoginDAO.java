package dao;

import javax.management.Query;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.RegistrationVO;

public class LoginDAO {

	public List authentication(RegistrationVO loginvo) {
		
		List list= new ArrayList();
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			
			org.hibernate.Query q=session.createQuery("from RegistrationVO where email='"+loginvo.getEmail()+"' and password='"+loginvo.getPassword()+"'"); 
			list=q.list();
			System.out.println("authentication list size"+list.size());
			System.out.println(loginvo.getEmail());
			System.out.println(loginvo.getPassword());
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
