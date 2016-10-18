package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import vo.cityVo;
import vo.countryVO;
import vo.stateVO;

public class countryDAO 
{

	public void insertcount(countryVO countVO) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(countVO);
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
	}

	public List searchCountry(countryVO countvo) 
	{
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			org.hibernate.Query q=session.createQuery("from countryVO"); 
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

	public List searchCountryID(countryVO countvo) 
	{
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			org.hibernate.Query q=session.createQuery("from countryVO where countryName='"+countvo.getCountryName()+"'"); 
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

	public void insertstate(stateVO state) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(state);
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
	}

	public List searchState(stateVO state)
	{
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			org.hibernate.Query q=session.createQuery("from stateVO "); 
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

	public List searchStateid(stateVO statevo)
	{
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			org.hibernate.Query q=session.createQuery("from stateVO where stateName='"+statevo.getStateName()+"'"); 
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

	public void insertcity(cityVo city) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(city);
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
	}

	public List searchCountrybyID(countryVO countvo)
	{
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			org.hibernate.Query q=session.createQuery("from countryVO where countryID='"+countvo.getCountryID()+"'"); 
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

	public void updatecountry(countryVO courtvo)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.update(courtvo);
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
	}

	public void deletecountry(countryVO count)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.delete(count);
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
	}

	public List searchstatelist(stateVO state)
	{
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			
			
//			org.hibernate.Query q=session.createQuery("from stateVO").setFetchMode("countryVO",FetchMode.SELECT);// aavu karyu hatu 
//			list=q.list();
			
			list = session.createCriteria(stateVO.class)
					.setFetchMode("countryName", FetchMode.JOIN)
//					.add(Restrictions.eq("stateID", 3))
					.addOrder(Order.desc("stateName")).list();
			for (int i = 0; i < list.size(); i++) 
			{
				stateVO objState = (stateVO)list.get(i);
				System.out.println("list of is state:::"+objState.getCountryvo().getCountryID());
				System.out.println("list of is state:::"+objState.getCountryvo().getCountryName());
				System.out.println("list of is state:::"+objState.getStateName());
			}
			
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return list;

	}

	public List searchStatebyname(stateVO statevo) 
	{
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			org.hibernate.Query q=session.createQuery("from stateVO where stateName='"+statevo.getStateName()+"'"); 
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

	public List searchStatebyid(stateVO searchstate) 
	{
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			/*org.hibernate.Query q=session.createQuery("from stateVO where stateID='"+searchstate.getStateID()+"'"); 
			list=q.list();*/
			
			list = session.createCriteria(stateVO.class, searchstate.getStateName())
					
					.setFetchMode("countryName", FetchMode.JOIN)
					.add(Restrictions.eq("stateID", searchstate.getStateID()))
					.addOrder(Order.desc("stateName")).list();
			for (int i = 0; i < list.size(); i++) 
			{
				stateVO objState = (stateVO)list.get(0);
				System.out.println("list of is state:::"+objState.getCountryvo().getCountryID());
				System.out.println("list of is state:::"+objState.getCountryvo().getCountryName());
				System.out.println("list of is state:::"+objState.getStateName());
			}
			
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return list;
	}

	public List seachcitylist(cityVo citylistvo)
	{
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			
			list = session.createCriteria(cityVo.class)
					.setFetchMode("stateName", FetchMode.JOIN)
					.addOrder(Order.desc("cityName")).list();
			for (int i = 0; i < list.size(); i++) 
			{
				cityVo objCity = (cityVo)list.get(i);
				System.out.println("list of is state:::"+objCity.getStatevo().getStateName());
				System.out.println("list of is state:::"+objCity.getStatevo().getStateCode());
				System.out.println("list of is state:::"+objCity.getCityName());
			}
			
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return list;
	}

	public List searchcitybyid(cityVo searchcity) 
	{
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			/*org.hibernate.Query q=session.createQuery("from stateVO where stateID='"+searchstate.getStateID()+"'"); 
			list=q.list();*/
			
			list = session.createCriteria(cityVo.class, searchcity.getCityName())
					
					.setFetchMode("stateName", FetchMode.JOIN)
					.add(Restrictions.eq("cityID", searchcity.getCityID()))
					.addOrder(Order.desc("cityName")).list();
			for (int i = 0; i < list.size(); i++) 
			{
				cityVo objState = (cityVo)list.get(0);
				System.out.println("list of is state:::"+objState.getStatevo().getStateName());
				System.out.println("list of is state:::"+objState.getStatevo().getStateID());
				System.out.println("list of is state:::"+objState.getCityName());
			}
			
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return list;
	}

	public void deletestate(stateVO deletevo)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.delete(deletevo);
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
	}

	public void deletecity(cityVo deletecityvo)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.delete(deletecityvo);
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
	}

	public void updatestate(stateVO updatestatevo)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.update(updatestatevo);
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
	}

	public void updatecity(cityVo city)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.update(city);
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
	}

}
