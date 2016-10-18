package controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import javax.mail.Flags.Flag;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserRegisterDAO;
import dao.skillsDAO;
import vo.UserRegisterVO;
import vo.skillsVO;

/**
 * Servlet implementation class UserRegisterController
 */
@WebServlet("/UserRegisterController")
public class UserRegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String flag= request.getParameter("flag");
	if(flag.equals("searchUserName"))
	{
		searchUserName(request,response);
	}
	else if(flag.equals("subjectid"))
	{
		subjectid(request,response);
	}
	}

	private void subjectid(HttpServletRequest request, HttpServletResponse response) throws IOException 
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
		UserRegisterVO s=new UserRegisterVO();
		  s.setEmail(email);
		UserRegisterDAO a=new UserRegisterDAO();
		  List list = new ArrayList();
		  try {
		   list=a.authentication(s);
		   System.out.print("Size is as follows" +list.size());
		  } catch (Exception e) {
		 
		   e.printStackTrace();
		  }
		  
		  HttpSession l=request.getSession();
		  l.setAttribute("userList",list);
		  response.sendRedirect("Admin/json/loadUser.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String firstname = request.getParameter("firstName");
		  String lastname = request.getParameter("lastName");
		  String email = request.getParameter("email");
//		  int phone = Integer.parseInt(request.getParameter("phone"));
		  String phone = request.getParameter("phone"); 
		  String password = request.getParameter("password"); 
		  String encryptedPassword=md5(password);
		
		  UserRegisterVO vo=new UserRegisterVO();
		  vo.setFirstname(firstname);
		  vo.setLastname(lastname);
		  vo.setEmail(email);
		  vo.setPhone(phone);
		  vo.setPassword(encryptedPassword);
		  
		  UserRegisterDAO dao=new UserRegisterDAO();
		  dao.insert(vo);
		  System.out.println("DAO");
		  response.sendRedirect("User/Home.jsp");
		  
		  
	}

	public String md5(String input){
		  String md5=null;
		  if(input==null){
		   return null;
		  }
		  try{
		   MessageDigest digest=MessageDigest.getInstance("MD5");
		   digest.update(input.getBytes(),0,input.length());
		   md5=new BigInteger(1,digest.digest()).toString(16);
		  }catch(NoSuchAlgorithmException e){
		   
		  } System.out.println("Encrypted password is "+md5);
		  return md5;
		 }
}
