package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.countryDAO;
import vo.cityVo;
import vo.countryVO;
import vo.stateVO;

/**
 * Servlet implementation class countryController
 */
@WebServlet("/countryController")
public class countryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public countryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		if(flag.equals("searchCountry"))
		{
			searchCountry(request,response);
		}
		else if(flag.equals("countryid"))
		{
			countryid(request,response);
		}
		else if(flag.equals("searchState"))
		{
			searchState(request,response);
		}
		else if(flag.equals("countryList"))
		{
			countryList(request,response);
		}
		else if(flag.equals("stateid"))
		{
			stateid(request,response);
		}
		else if(flag.equals("editcountry"))
		{
			editcountry(request,response);
		}
		else if(flag.equals("deletecountry"))
		{
			deletecountry(request,response);
		}
		else if(flag.equals("stateList"))
		{
			stateList(request,response);
		}
		else if(flag.equals("editstate"))
		{
			editstate(request,response);
		}
		else if(flag.equals("citylist"))
		{
			citylist(request,response);
		}
		else if(flag.equals("editcity"))
		{
			editcity(request,response);
		}
		else if(flag.equals("deletestate"))
		{
			deletestate(request,response);
		}
		else if(flag.equals("deletecity"))
		{
			deletecity(request,response);
		}
		
	}

	private void deletecity(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		List citylist = new ArrayList();
		int id= Integer.parseInt(request.getParameter("ID"));
		cityVo deletecityvo= new cityVo();
		deletecityvo.setCityID(id);
		
		countryDAO deletecitydao=new countryDAO();
		deletecitydao.deletecity(deletecityvo);
		citylist=deletecitydao.seachcitylist(deletecityvo);
		
		HttpSession session=request.getSession(); 
		session.setAttribute("citylist", citylist);
		response.sendRedirect("Admin/tableCity.jsp");
	}

	private void deletestate(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		List statelist = new ArrayList();
		System.out.println("in the function:::");
		int id= Integer.parseInt(request.getParameter("ID"));
		stateVO deletevo=new stateVO();
		deletevo.setStateID(id);
		
		countryDAO deletedao=new countryDAO();
		deletedao.deletestate(deletevo);
		statelist=deletedao.searchstatelist(deletevo);
		HttpSession session=request.getSession(); 
		session.setAttribute("statelist", statelist);
		response.sendRedirect("Admin/tableState.jsp");
	}

	private void editcity(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		List citylistid = new ArrayList();
		int id=Integer.parseInt(request.getParameter("ID"));
		
		cityVo searchcity=new cityVo();
		searchcity.setCityID(id);
		countryDAO searchcitydao= new countryDAO();
		citylistid=searchcitydao.searchcitybyid(searchcity);
		
		System.out.println("city list is::  "+citylistid.size());
		HttpSession session=request.getSession(); 
		session.setAttribute("citylistid", citylistid);
		response.sendRedirect("Admin/editCity.jsp");
	}

	private void citylist(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		List citylist = new ArrayList();
		cityVo citylistvo= new cityVo();
		countryDAO citylistdao= new countryDAO();
		citylist=citylistdao.seachcitylist(citylistvo);
		
		HttpSession session=request.getSession(); 
		session.setAttribute("citylist", citylist);
		response.sendRedirect("Admin/tableCity.jsp");
	}

	private void editstate(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		List stateid = new ArrayList();
		int id =Integer.parseInt(request.getParameter("ID"));
		System.out.println("state name:: "+id);
		stateVO searchstate= new stateVO();
		searchstate.setStateID(id);
		countryDAO searchstatedao= new countryDAO();
		stateid=searchstatedao.searchStatebyid(searchstate);
		
		HttpSession session=request.getSession(); 
		session.setAttribute("stateid", stateid);
		response.sendRedirect("Admin/editState.jsp");
	}

	private void stateList(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		List statelist = new ArrayList();
		stateVO state= new stateVO();
		countryDAO statedao=new countryDAO();
		statelist=statedao.searchstatelist(state);
		HttpSession session=request.getSession(); 
		session.setAttribute("statelist", statelist);
		response.sendRedirect("Admin/tableState.jsp");
	}

	

	private void deletecountry(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		List countrylist = new ArrayList();
		int countryid=Integer.parseInt(request.getParameter("ID"));
		countryVO count= new countryVO();
		count.setCountryID(countryid);
		countryDAO countdao= new countryDAO();
		countdao.deletecountry(count);
		countrylist=countdao.searchCountry(count);
		HttpSession session=request.getSession(); 
		session.setAttribute("countrylist", countrylist);
		response.sendRedirect("Admin/tableCountry.jsp");
	}

	private void editcountry(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		List countrylist = new ArrayList();
		int countryid=Integer.parseInt(request.getParameter("ID"));
		countryVO countvo=new countryVO();
		countvo.setCountryID(countryid);
		countryDAO countdao=new countryDAO();
		countrylist=countdao.searchCountrybyID(countvo);
		HttpSession session=request.getSession(); 
		session.setAttribute("countrylist", countrylist);
		response.sendRedirect("Admin/editCountry.jsp");
	}

	private void countryList(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		List countrylist = new ArrayList();
		countryVO countvo=new countryVO();
		countryDAO countdao=new countryDAO();
		countrylist=countdao.searchCountry(countvo);
		String cname=countvo.getCountryName();
		System.out.println("Country name:::::  "+cname);
		HttpSession session=request.getSession(); 
		session.setAttribute("countrylist", countrylist);
		response.sendRedirect("Admin/tableCountry.jsp");
	}

	private void stateid(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		List statelist = new ArrayList();
		String state= request.getParameter("state");
		
		stateVO statevo=new stateVO();
		statevo.setStateName(state);
		countryDAO statedao=new countryDAO();
		statelist=statedao.searchStatebyname(statevo);
		
		HttpSession session=request.getSession(); 
		session.setAttribute("statelist", statelist);
		response.sendRedirect("Admin/json/loadStateId.jsp");
	}

	private void searchState(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		List statelist = new ArrayList();
		stateVO state=new stateVO();
		countryDAO statedao=new countryDAO();
		statelist=statedao.searchState(state);
		
		HttpSession session=request.getSession(); 
		session.setAttribute("statelist", statelist);
		response.sendRedirect("Admin/addCity.jsp");
	}

	private void countryid(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		System.out.println("in the country search");
		String country= request.getParameter("country");
		List countryid = new ArrayList();
		
		countryVO countvo=new countryVO();
		countvo.setCountryName(country);
		
		countryDAO countdao= new countryDAO();
		countryid=countdao.searchCountryID(countvo);
		
		HttpSession session=request.getSession(); 
		session.setAttribute("countrylist", countryid);
		response.sendRedirect("Admin/json/loadCountryId.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag = request.getParameter("flag");
		if(flag.equals("addcountry"))
		{
			addcountry(request,response);
		}
		else if(flag.equals("addstate"))
		{
			addstate(request,response);
		}
		else if(flag.equals("addcity"))
		{
			addcity(request,response);
		}
		else if(flag.equals("updatecountry"))
		{
			updatecountry(request,response);
		}
		else if(flag.equals("updatestate"))
		{
			updatestate(request,response);
		}
		else if(flag.equals("updatecity"))
		{
			updatecity(request,response);
		}
		
		
	}

	private void updatecity(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		List citylist = new ArrayList();
		int stateID= Integer.parseInt(request.getParameter("stateID"));
		int cityID= Integer.parseInt(request.getParameter("cityID"));
		String cityName= request.getParameter("cityName");
		String cityCode= request.getParameter("cityCode");
		
		stateVO updatestatevo=new stateVO();
		updatestatevo.setStateID(stateID);
		
		cityVo city=new cityVo();
		city.setCityID(cityID);
		city.setCityName(cityName);;
		city.setCityCode(cityCode);
		city.setStatevo(updatestatevo);
		
		countryDAO countdao=new countryDAO();
		countdao.updatecity(city);
		citylist=countdao.seachcitylist(city);
		
		HttpSession session=request.getSession(); 
		session.setAttribute("citylist", citylist);
		response.sendRedirect("Admin/tableCity.jsp");
		
	}

	private void updatestate(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		List statelist = new ArrayList();
		int countryID= Integer.parseInt(request.getParameter("countryID"));
		
		int stateID= Integer.parseInt(request.getParameter("stateID"));
		String stateName= request.getParameter("stateName");
		String stateCode= request.getParameter("stateCode");
		
		countryVO countryvo=new countryVO();
		countryvo.setCountryID(countryID);;
		
		stateVO updatestatevo=new stateVO();
		updatestatevo.setCountryvo(countryvo);
		updatestatevo.setStateID(stateID);
		updatestatevo.setStateName(stateName);
		updatestatevo.setStateCode(stateCode);
		
		countryDAO updatestatedao=new countryDAO();
		updatestatedao.updatestate(updatestatevo);
		statelist=updatestatedao.searchstatelist(updatestatevo);
		HttpSession session=request.getSession(); 
		session.setAttribute("statelist", statelist);
		response.sendRedirect("Admin/tableState.jsp");
		
	}

	private void updatecountry(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		List countrylist = new ArrayList();
		int countryID= Integer.parseInt(request.getParameter("countryID"));
		String countryName= request.getParameter("countryName");
		String countryCode= request.getParameter("countryCode");
		
		System.out.println("id is"+countryID);
		System.out.println("name is: "+countryName);
		System.out.println("code is: "+countryCode);
		
		countryVO courtvo= new countryVO();
		courtvo.setCountryID(countryID);
		courtvo.setCountryName(countryName);
		courtvo.setCountryCode(countryCode);
		
		countryDAO courtdao= new countryDAO();
		courtdao.updatecountry(courtvo);
		countrylist=courtdao.searchCountry(courtvo);
		HttpSession session=request.getSession(); 
		session.setAttribute("countrylist", countrylist);
		response.sendRedirect("Admin/tableCountry.jsp");
	}

	private void addcity(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		List citylist = new ArrayList();
		int stateCode= Integer.parseInt(request.getParameter("stateCode"));
		String cityName= request.getParameter("cityName");
		String cityCode= request.getParameter("cityCode");
		
		stateVO state=new stateVO();
		state.setStateID(stateCode);
		
		cityVo city=new cityVo();
		city.setCityName(cityName);;
		city.setCityCode(cityCode);
		city.setStatevo(state);
		
		countryDAO countdao=new countryDAO();
		countdao.insertcity(city);
		citylist=countdao.seachcitylist(city);
		
		HttpSession session=request.getSession(); 
		session.setAttribute("citylist", citylist);
		response.sendRedirect("Admin/tableCity.jsp");
	}

	private void addstate(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		List statelist = new ArrayList();
		int countryID= Integer.parseInt(request.getParameter("countryCode"));
		String stateName= request.getParameter("stateName");
		String stateCode= request.getParameter("stateCode");
		
		countryVO countvo= new countryVO();
		countvo.setCountryID(countryID);
		
		stateVO state=new stateVO();
		state.setStateName(stateName);
		state.setStateCode(stateCode);
		state.setCountryvo(countvo);
		
		countryDAO countdao=new countryDAO();
		countdao.insertstate(state);
		statelist=countdao.searchstatelist(state);
		HttpSession session=request.getSession(); 
		session.setAttribute("statelist", statelist);
		response.sendRedirect("Admin/tableState.jsp");
		
	}

	private void searchCountry(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		List countrylist = new ArrayList();
		countryVO countvo=new countryVO();
		countryDAO countdao= new countryDAO();
		countrylist=countdao.searchCountry(countvo);
		HttpSession session=request.getSession(); 
		session.setAttribute("country", countrylist);
		response.sendRedirect("Admin/addState.jsp");
	}

	private void addcountry(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		List countrylist = new ArrayList();
		String countryName= request.getParameter("countryName");
		String countryCode= request.getParameter("countryCode");
		
		System.out.println("Country code is: "+countryCode );
		countryVO countVO= new countryVO();
		countVO.setCountryName(countryName);
		countVO.setCountryCode(countryCode);
		
		countryDAO countDAO= new countryDAO();
		countDAO.insertcount(countVO);
		countrylist=countDAO.searchCountry(countVO);
		HttpSession session=request.getSession(); 
		session.setAttribute("countrylist", countrylist);
		response.sendRedirect("Admin/tableCountry.jsp");
	}

}
