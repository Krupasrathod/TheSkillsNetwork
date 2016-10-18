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

import dao.RegistrationDAO;
import dao.UserRegisterDAO;
import dao.skillsDAO;
import vo.RegistrationVO;
import vo.UserRegisterVO;
import vo.skillsVO;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String flag=request.getParameter("flag");
	if(flag.equals("search"))
	{
		System.out.println("in cntrl");
		search(request,response);
	}
	else if(flag.equals("searchSubjectName"))
	{
		searchSubjectName(request,response);
	}
	
	else if(flag.equals("profile"))
	{
		System.out.println("hello delete");
		profile(request,response);
	}	
	else if(flag.equals("delete"))
	{
		System.out.println("hello delete");
		delete(request,response);
	}
	
	else if(flag.equals("edit"))
	{		
		System.out.println("in cntrl");
		search1(request,response);
	}
	else if(flag.equals("trainee"))
	{		
		System.out.println("in cntrl");
		trainee(request,response);
	}
	else if(flag.equals("trainer"))
	{
		System.out.println("hello delete");
		trainer(request,response);
	}
	
	else if(flag.equals("manager"))
	{		
		System.out.println("in cntrl");
		manager(request,response);
	}
	else if(flag.equals("searchUserName"))
	{
		searchUserName(request,response);
	}
	
	}

	private void searchSubjectName(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{

		String subjct = request.getParameter("subjct");
		System.out.println("got subject on cntrler:" +subjct);
		skillsVO s=new skillsVO();
		s.setSubjectName(subjct);
		skillsDAO a=new skillsDAO();
		  List list = new ArrayList();
		  try {
		   list=a.subjectfind(s);
		   System.out.print("Size is as follows" +list.size());
		  } catch (Exception e) {
		 
		   e.printStackTrace();
		  }
		  
		  HttpSession l=request.getSession();
		  l.setAttribute("userList",list);
		  response.sendRedirect("Admin/json/loadSubjectId.jsp");
		
	}


	private void searchUserName(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String email = request.getParameter("email");
		System.out.println("got email:" +email);
		RegistrationVO s=new RegistrationVO();
		  s.setEmail(email);
		  RegistrationDAO a=new RegistrationDAO();
		  List list = new ArrayList();
		  try {
		   list=a.UniqueEmailCheck(s);
		   System.out.print("Size after search on unique mail id  " + list.size());
		  } catch (Exception e) {
		 
		   e.printStackTrace();
		  }
		  
		  HttpSession snemail=request.getSession();
		  snemail.setAttribute("userList",list);
		  response.sendRedirect("Admin/json/loadUser.jsp");		
	}


	private void profile(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		int ID= Integer.parseInt(request.getParameter("ID"));
	
		
		System.out.println("Got the id" +ID);
		
		 RegistrationVO vo=new RegistrationVO();
		 vo.setRegId(ID);
		  
		 List ls=new ArrayList();
		   RegistrationDAO dao=new RegistrationDAO();
		   ls=dao.edit(vo);
		   System.out.println("Run list");
		   RegistrationVO user=(RegistrationVO) ls.get(0);
		   String y = user.getRole();
		   System.out.println("Password is"+ y);
		   HttpSession hs=request.getSession();
		   hs.setAttribute("editlist", ls);
		   response.sendRedirect("Admin/userprofile.jsp");
		
	}


	private void manager(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		List ls=new ArrayList();
		RegistrationVO vo=new RegistrationVO();
		RegistrationDAO dao =new RegistrationDAO();
		ls=dao.searchmanager(vo);
		System.out.println("Size of the trainee is :"+ls.size());
		HttpSession hs=request.getSession();
		hs.setAttribute("manager", ls);
		response.sendRedirect("Admin/tablemanager.jsp");
	
		
	}


	private void trainer(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		List ls=new ArrayList();
		RegistrationVO vo=new RegistrationVO();
		RegistrationDAO dao =new RegistrationDAO();
		ls=dao.searchtrainer(vo);
		System.out.println("Size of the trainee is :"+ls.size());
		HttpSession hs=request.getSession();
		hs.setAttribute("trainer", ls);
		response.sendRedirect("Admin/tabletrainer.jsp");
	
		
	}


	private void trainee(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		List ls=new ArrayList();
		RegistrationVO vo=new RegistrationVO();
		RegistrationDAO dao =new RegistrationDAO();
		ls=dao.searchtrainee(vo);
		System.out.println("Size of the trainee is :"+ls.size());
		HttpSession hs=request.getSession();
		hs.setAttribute("trainee", ls);
		response.sendRedirect("Admin/tabletrainee.jsp");
	
		
	}


	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		int ID= Integer.parseInt(request.getParameter("ID"));
	//	String ID=request.getParameter("ID");
	
		
		System.out.println("Got the id" +ID);
		System.out.println("Delete done");
		 RegistrationVO vo=new RegistrationVO();
		 vo.setRegId(ID);
		  
	
		   RegistrationDAO dao=new RegistrationDAO();
		   dao.delete(vo);

		   response.sendRedirect("");
		
	}


	private void search1(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		int ID= Integer.parseInt(request.getParameter("ID"));
	
		
		System.out.println("Got the id" +ID);
		
		 RegistrationVO vo=new RegistrationVO();
		 vo.setRegId(ID);
		  
		 List ls=new ArrayList();
		   RegistrationDAO dao=new RegistrationDAO();
		   ls=dao.edit(vo);
		   System.out.println("Run list");
		   RegistrationVO user=(RegistrationVO) ls.get(0);
		   String y = user.getRole();
		   System.out.println("Password is"+ y);
		   HttpSession hs=request.getSession();
		   hs.setAttribute("editlist", ls);
		   response.sendRedirect("Admin/profile.jsp");
		  
		
	}


	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		  
		  RegistrationVO vo=new RegistrationVO();
		  List ls=new ArrayList();
		   RegistrationDAO dao=new RegistrationDAO();
		   ls=dao.search(vo);
		   
		   HttpSession hs=request.getSession();
		   hs.setAttribute("editlist", ls);
		   response.sendRedirect("Admin/table.jsp");
		  
		 }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag=request.getParameter("flag");
		if(flag.equals("reg"))
		{
			System.out.println("in cntrl");
			register(request,response);
		}
	}

	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String role = request.getParameter("admin");
		System.out.println("rolwe" +role);
		System.out.println("lastname in insert"+ lastname);
		System.out.println("role"+ role);
	
		RegistrationVO vo=new RegistrationVO();
		vo.setFirstname(firstname);
		vo.setLastname(lastname);
		vo.setEmail(email);
		vo.setPassword(password);
		vo.setRole(role);
		
		
		 RegistrationDAO dao=new RegistrationDAO();
		 dao.insert(vo);
		 System.out.println("DAO");
		 response.sendRedirect("Admin/Login.jsp");
	}
}
