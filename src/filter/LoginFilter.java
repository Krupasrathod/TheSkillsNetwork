package filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.RegistrationDAO;
import dao.UserRegisterDAO;
import dao.skillsDAO;
import vo.RegistrationVO;
import vo.UserRegisterVO;
import vo.skillsVO;



@WebFilter("/*")
public class LoginFilter implements Filter {

	public LoginFilter() {
	}

	

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		HttpSession session =(((HttpServletRequest) request).getSession());
		RequestDispatcher requestDispatcher;
		String flag = request.getParameter("flag");

		String uri = ((HttpServletRequest)request).getRequestURI();
//		System.err.println("URI Before if condition : "+uri);
		//1
		
			
			RegistrationVO loginVO = new RegistrationVO();
		
			RegistrationDAO signUpDAO = new RegistrationDAO();
			List ls = signUpDAO.usersearch(loginVO);
			System.out.println("Runnikng name finding");
			System.out.println("Total Number oF user "+ls.size());
			RegistrationVO regVO=null;
			String role=null;
			int adminCount=0;
			int trainerCount=0;
			int mentorCount=0;
			int recruiterCount=0;
			int traineeCount=0;
			int num=ls.size();
			int hiringManagerCount=0;
			for(int i=0;i<ls.size();i++){
				regVO=(RegistrationVO) ls.get(i);
				role=regVO.getDesignation();
				if(role.equals("Admin")){
					adminCount++;
				}else if(role.equals("Trainer")){
					trainerCount++;
				}else if(role.equals("Mentor")){
					mentorCount++;
				}else if(role.equals("Trainee")){
            traineeCount++;					
				}else if(role.equals("Hiring Manager")){
					hiringManagerCount++;
				}else if(role.equals("Recruiter")){
					recruiterCount++;
				}
			}
			
			session.setAttribute("adminCount",adminCount);
			session.setAttribute("trainerCount",trainerCount);
			session.setAttribute("mentorCount",mentorCount);
			session.setAttribute("recruiterCount",recruiterCount);
			session.setAttribute("traineeCount",traineeCount);
			session.setAttribute("hiringManagerCount",hiringManagerCount);
			session.setAttribute("count", num);
			
		    
			//session.setAttribute("name", ls);
		
		if(uri.contains("userHome") ||uri.contains("javascript:;")||uri.contains("/register-btn")|| uri.contains("/css") || uri.contains("/js") && !uri.contains(".jsp") || uri.contains("/images")|| uri.contains("/fonts") ||uri.contains("NGO/userReg.jsp") || uri.contains("NGOController")|| uri.contains("UserController")  || uri.contains("RegistrationController")  || uri.contains("NGO/loadData.jsp")  || uri.contains("NGO/loadEvent.jsp")  || uri.contains("Admin/Login.jsp") || uri.contains("Admin/loadUser.jsp"))
		{
			//System.out.println("URI After if condition : "+uri);
			
			//System.out.println("inside reg");

			//requestDispatcher = request.getRequestDispatcher("/user/register.jsp");  
			//requestDispatcher.forward(request,response);  

			chain.doFilter(request,response);

		}
		//2
		else if (flag!= null && flag.equals("logout")) {
			System.out.println("filter :: condition : 2");
			session.removeAttribute("userID");
			System.out.println("logout in else if");

			session.invalidate();
			requestDispatcher = request.getRequestDispatcher("/Admin/Login.jsp");
			requestDispatcher.forward(request, response);
		}
		//3
		else if(flag != null && flag.equals("login") )
		{
			System.out.println("filter :: condition : 3");
			//System.out.println("Login");
			List list = new ArrayList();
			String emailId = request.getParameter("email");
			String password = request.getParameter("password");
			System.out.println(emailId+""+password);

			RegistrationVO userVO = new RegistrationVO();
			userVO.setEmail(emailId);
			userVO.setPassword(password);

			RegistrationDAO userDAO = new RegistrationDAO();

			System.out.println("Inside try");
			try {
				list = userDAO.authentication(userVO);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(list.size());
			//List list =  userDAO.authentication(userVO);
			
			
			if(list != null && list.size()>=1)
			{

				//Iterator itr = list.iterator();

				//while(itr.hasNext()){
				RegistrationVO user=(RegistrationVO) list.get(0);

				long y = user.getRegId();
				session.setAttribute("userID",y);
			//	String displayname=user.getDisplayname();
			//	session.setAttribute("displayname",displayname);
			//	System.out.println("nsme is" +displayname);
				System.out.println(user.getRole());
				//	System.out.println(session.getAttribute("userId"));
				String type = user.getRole();
				System.out.println(type);
				session.setAttribute("usertype",type);
				System.out.println(y+"hELLO");
				if(type.equalsIgnoreCase("Admin"))
				{
					
					
					
					System.out.println("Filter :: type :: Admin welcome");
					session.setAttribute("count", num);
					session.setAttribute("name", list);
					requestDispatcher = request.getRequestDispatcher("/Admin/homepage.jsp");
					
					requestDispatcher.forward(request,response);
				}
				else if(type.equalsIgnoreCase("User"))
				{
					requestDispatcher = request.getRequestDispatcher("/User/timeline.jsp");  
					requestDispatcher.forward(request,response);
				}
				else if(type.equalsIgnoreCase("hiringmanager"))
				{
					requestDispatcher = request.getRequestDispatcher("/hiringmanager/Home.jsp");  
					requestDispatcher.forward(request,response);
				}
				else if(type.equalsIgnoreCase("recruter"))
				{
					requestDispatcher = request.getRequestDispatcher("/recruter/UserSide1.jsp");  
					requestDispatcher.forward(request,response);
				}
				else
				{
					requestDispatcher = request.getRequestDispatcher("NGO/UserLogin.jsp");  
					requestDispatcher.forward(request,response);  
				}
			}
			else
			{
				requestDispatcher = request.getRequestDispatcher("Admin/Login.jsp");
				requestDispatcher.forward(request,response);
			}	
		}
		//4
		else if(session.getAttribute("userID") != null)
		{
			System.out.println("filter :: condition : 4");
			String h = (String)session.getAttribute("usertype");
			System.out.println("type = = = " + h);

			if(h!=null && h.equals("Admin"))
			{
				
				//System.out.println("chain");
				chain.doFilter(request,response);
			}

			else if(h!=null && h.equals("User"))
			{
				//System.out.println("chain");
				chain.doFilter(request, response);
			}
			else if(h!=null && h.equals("Volunteer"))
			{
				//System.out.println("chain");
				chain.doFilter(request, response);
			}
			else
			{
				System.out.println("inside else ");
				RequestDispatcher rd = request.getRequestDispatcher("/user/error.jsp");  
				rd.forward(request,response);
			}
		}

		else
		{
			System.out.println("filter :: condition : 5");
			RequestDispatcher rd = request.getRequestDispatcher("/Admin/Login.jsp");  
			rd.forward(request,response);  
			return;

		}
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}
	 public void destroy() {}  
}
