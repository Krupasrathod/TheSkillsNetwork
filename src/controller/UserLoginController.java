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


import dao.UserLoginDAO;
import vo.UserRegisterVO;

/**
 * Servlet implementation class UserLoginController
 */
@WebServlet("/UserLoginController")
public class UserLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		if(flag.equals("login"))
		{
			login(request,response);
		}
	}
		private void login(HttpServletRequest request, HttpServletResponse response) throws IOException 
		 {
			 List Userls= new ArrayList();
			 String email = request.getParameter("email");
			 String password = request.getParameter("password"); 
			 String pass = md5(password);
			 System.out.println(email);
			 System.out.println(pass);
			
			 UserRegisterVO Userlogin=new UserRegisterVO();
		     Userlogin.setEmail(email);
		     Userlogin.setPassword(pass);
		     UserLoginDAO Userlogindao=new UserLoginDAO();
		     Userls=Userlogindao.Userauthentication(Userlogin);
			 HttpSession hs=request.getSession();
			 
			 
			 if(Userls !=null && Userls.size()>=1)
			 {
				 hs.setAttribute("passmatch", Userls);
				 response.sendRedirect("listing-filter.jsp"); 
				  			 
			 }
			 else{
				 
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
