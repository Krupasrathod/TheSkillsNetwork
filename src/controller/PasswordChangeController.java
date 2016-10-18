package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.FpasswdDAO;
import dao.UserRegisterDAO;
import vo.OTPVO;
import vo.UserRegisterVO;

/**
 * Servlet implementation class PasswordChangeController
 */
@WebServlet("/PasswordChangeController")
public class PasswordChangeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrintWriter out;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PasswordChangeController() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String flag=request.getParameter("flag");
		if(flag.equals("update"))
		{
			System.out.println("in cntrl");
			update(request,response);
		}

	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		String email1=request.getParameter("useremail");
		 int userID= Integer.parseInt(request.getParameter("userID"));
		 int otp1= Integer.parseInt(request.getParameter("otp"));
		 String otppassword = request.getParameter("otppassword");
		 System.out.println("email1 for reset pass"+email1);
		 System.out.println("otp1 for reset pass"+ otp1);
		 System.out.println("User ID for reset pass" + userID);
		 List resetls= new ArrayList();
		
		 
		 OTPVO resetvo=new OTPVO();
		 resetvo.setEmail1(email1);
		 resetvo.setOtp1(otp1);
		 
		 FpasswdDAO reset=new FpasswdDAO();
		 resetls=reset.resetpasswd(resetvo);
		System.out.println("reset pass "+resetls.size());
		 
      if(resetls!=null && resetls.size()>0)
      {
      	 UserRegisterVO userVO= new UserRegisterVO();
      	 userVO.setEmail(email1);
     	 UserRegisterDAO userDAO= new UserRegisterDAO();
      	 List list= new ArrayList();
		list=userDAO.getUserByUserId(userVO);
		System.out.println("size is reset" +list.size());
		
		UserRegisterVO userRegVO=null;
		for(int i=0;i<=list.size();i++){
			userRegVO=(UserRegisterVO) list.get(0);
		}
		userRegVO.setPassword(otppassword);
		 userDAO.updatepass(userRegVO);
      	 System.out.println(userDAO);
      	 response.sendRedirect("User/Home.jsp");
      }	
	}

}
