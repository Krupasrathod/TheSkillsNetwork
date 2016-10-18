package controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDAO;
import vo.RegistrationVO;


/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		if(flag.equals("match"))
		{
			match(request,response);
		}
		 
		
		 	
		 
		// String qry = "select * from Registration where email = " + email + " and password=" + pass;
	}
	 private void match(HttpServletRequest request, HttpServletResponse response) throws IOException 
	 {
		 List ls= new ArrayList();
		 String email = request.getParameter("email");
		 String password = request.getParameter("password"); 
		 String pass = md5(password);
		 System.out.println(email);
		 System.out.println(pass);
		
	    		 
		 RegistrationVO loginvo=new RegistrationVO();
	     loginvo.setEmail(email);
	     loginvo.setPassword(pass);
	     LoginDAO dao=new LoginDAO();
		 ls=dao.authentication(loginvo);
		 HttpSession hs=request.getSession();
		 hs.setAttribute("passmatch", ls);
		 
		 if(ls !=null && ls.size()>=1)
		 {
			 response.sendRedirect("User/User_Profile.jsp"); 
			  			 
		 }
		
	
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
