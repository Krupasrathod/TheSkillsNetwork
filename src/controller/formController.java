package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import vo.RegistrationVO;
import vo.formVO;
import vo.profileVO;
import vo.skillsVO;
import dao.RegistrationDAO;
import dao.formDAO;
import dao.skillsDAO;
/**
 * Servlet implementation class formController
 */
@WebServlet("/formController")
public class formController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public formController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag=request.getParameter("flag");
		System.out.println("Flag"+ flag);
		if(flag.equals("searchSubject"))
		{
			searchSubject(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag=request.getParameter("flag");
		System.out.println("Flag"+ flag);
		if(flag.equals("insert"))
		{
			System.out.println("in cntrl");
			insert(request,response);
		}
		
		else if(flag.equals("update"))
		{
			System.out.println("Running Form" + flag);
			update(request,response);
		}
		else if(flag.equals("addsubjctskills"))
		{
			addsubjctskills(request,response);
		}
		else if(flag.equals("addskills"))
		{
			System.out.println("Running Form" + flag);
			addskills(request,response);
		}
		else if(flag.equals("regadmin"))
		{
			addnewadmin(request,response);
		}
		
	}

	private void addnewadmin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String firstname= request.getParameter("firstname");
		String lastname= request.getParameter("lastname");
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		
		System.out.println("Password   " + password);
		
		char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
		  StringBuilder sb = new StringBuilder();
		  Random random = new Random();
		  for (int i = 0; i < 20; i++) {
		      char c = chars[random.nextInt(chars.length)];
		      sb.append(c);
		  }
		  String salt = sb.toString();
		  
		  System.out.println("Salt created  " + salt);
		  
		  String encryptedPassword=md5(password + salt);
		
		  System.out.println("Encypted Password + Salt...  " + encryptedPassword);
		  
		RegistrationVO newUserVO = new RegistrationVO();
		newUserVO.setFirstname(firstname);
		newUserVO.setLastname(lastname);
		newUserVO.setEmail(email);
		newUserVO.setPassword(encryptedPassword);
		newUserVO.setSalt(salt);
		newUserVO.setRole("Admin");
		newUserVO.setDesignation("Hiring Manager");
		
		List newUserlist= new ArrayList(); 
		RegistrationDAO newUserDao = new RegistrationDAO();
		newUserlist=newUserDao.addNewAdmin(newUserVO);
		response.sendRedirect("Admin/register.jsp");
							
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
	
	
	private void searchSubject(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		List list = new ArrayList();
		skillsVO vo=new skillsVO();
		skillsDAO dao=new skillsDAO();
		list=dao.searchsubject(vo);
		
		 HttpSession l=request.getSession();
		 l.setAttribute("userList",list);
		 response.sendRedirect("Admin/skills.jsp");
		
	}

	private void addsubjctskills(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		
		String maincat = request.getParameter("maincat");
		System.out.println(maincat);
		if(maincat == null){
			String subsubject=request.getParameter("subsubject");
			 int subjectID=Integer.parseInt(request.getParameter("subjectID"));
			 
			 System.out.println("skills name "+ subsubject);
			 System.out.println("skills ID "+ subjectID);
			 
			 skillsVO skillvo=new skillsVO();
			 skillvo.setParentID(subjectID);
			 skillvo.setSubjectName(subsubject);
			 
			 formDAO skillsdao=new formDAO();
			 skillsdao.insertskills(skillvo);
			 response.sendRedirect("Admin/skills.jsp");
		}else{
				 
		 String subsubject=request.getParameter("subsubject");
		 int subjectID=Integer.parseInt(maincat);
		 
		 System.out.println("skills name "+ subsubject);
		 System.out.println("skills ID "+ subjectID);
		 
		 skillsVO skillvo=new skillsVO();
		 skillvo.setParentID(subjectID);
		 skillvo.setSubjectName(subsubject);
		 
		 formDAO skillsdao=new formDAO();
		 skillsdao.insertskills(skillvo);
		 response.sendRedirect("Admin/skills.jsp");
		}
	}

	private void addskills(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		 String subjectName=request.getParameter("subjectName");
		 int parentID=Integer.parseInt(request.getParameter("parentID"));
		 
		 System.out.println("skills name "+ subjectName);
		 System.out.println("skills ID "+ parentID);
		 
		 skillsVO skillvo=new skillsVO();
		 skillvo.setParentID(parentID);
		 skillvo.setSubjectName(subjectName);
		 
		 formDAO skillsdao=new formDAO();
		 skillsdao.insertskills(skillvo);
		 response.sendRedirect("Admin/skills.jsp");
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException 
	{
		
		 int id=Integer.parseInt(request.getParameter("ID"));
		 System.out.println("the ID is" + id);
		 String radanswer=request.getParameter("radanswer");
		 String firstname=request.getParameter("firstName");
		 String lastname=request.getParameter("lastname");
		 System.out.println("last"+ lastname);
		 String email=request.getParameter("email");
		 String password=request.getParameter("password");
		 System.out.println("emaIL"+ email);
		 System.out.println("1");
		 String contactNumber=request.getParameter("ContactNumber");
		 System.out.println("1");
		 String since=request.getParameter("since");
		 String companyName=request.getParameter("companyName");
		 String currentPosition=request.getParameter("currentPosition");
		 String department=request.getParameter("department");
		 String role=request.getParameter("role");
		 String branchName=request.getParameter("branchName");
		 String dateofBirth=request.getParameter("dateofBirth");
		 String branchAddress=request.getParameter("branchAddress");
		 String maritalStatus=request.getParameter("maritalStatus");
		 String nationality=request.getParameter("nationality");
		 String zipCode=request.getParameter("zipCode");
		 String street=request.getParameter("street");
		 String country=request.getParameter("country");
		 String state=request.getParameter("state");
		 String city=request.getParameter("city");
		 String languagesKnown=request.getParameter("languagesKnown");
		 String designation=request.getParameter("designation");
		 
		 // file upload
		 
		 String fileName = null; 
		  String path1 = null;
		  
		  for (Part filePart : request.getParts()) {
		   System.out.println("inside for :: fileUpload");
		   if (filePart.getSubmittedFileName() != null && !filePart.getSubmittedFileName().equals("")) {
		    fileName = filePart.getSubmittedFileName();
		    InputStream fileContent = filePart.getInputStream();

		    System.out.println("filePart :: " + filePart);
		    System.out.println("file Name :: " + fileName);
		    System.out.println("File Content :: " + fileContent);

		    byte[] buffer = new byte[fileContent.available()];
		    fileContent.read(buffer);

		    String filePath = getServletContext().getRealPath(request.getServletPath());

		    int path = filePath.lastIndexOf('\\');
		    path1 = filePath.substring(0, path) + "\\proj\\";

		    File targetFile = new File(path1 + fileName);
		    OutputStream outStream = new FileOutputStream(targetFile);
		    outStream.write(buffer);


		    System.out.println("File Output Path :: " + path1 + fileName);
		    outStream.close();

		   }
		  }
		 
		 
		 
		 //end file upload
		 RegistrationVO vo=new RegistrationVO();
		 vo.setRegId(id);
		 vo.setGender(radanswer);
		 vo.setPassword(password);
		 vo.setFirstname(firstname);
		 vo.setLastname(lastname);
		 vo.setBranchAddress(branchAddress);
		 vo.setBranchName(branchName);
		 vo.setCity(city);
		 vo.setCompanyName(companyName);
		 vo.setContactNumber(contactNumber);
		 vo.setCountry(country);
		 vo.setCurrentPosition(currentPosition);
		 vo.setDateofBirth(dateofBirth);
		 vo.setDepartment(department);
		 vo.setDesignation(designation);
		 vo.setEmail(email);
		 vo.setLanguagesKnown(languagesKnown);
		 vo.setMaritalStatus(maritalStatus);
		 vo.setNationality(nationality);
		 vo.setFilePath(fileName);
		 vo.setRole(role);
		 vo.setSince(since);
		 vo.setState(state);
		 vo.setStreet(street);
		 vo.setZipCode(zipCode);
		 
		 RegistrationDAO dao=new RegistrationDAO();
		 dao.update(vo);
		 response.sendRedirect("Admin/table.jsp");
		
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		String formName = request.getParameter("formName");
		String originalName = request.getParameter("originalName");
		String description = request.getParameter("description");
		
		formVO vo=new formVO();
		vo.setDescription(description);
		vo.setFormName(formName);
		vo.setOriginalName(originalName);
		
		formDAO dao=new formDAO();
		dao.insert(vo);
		response.sendRedirect("User/formDetail.jsp");
	}

}
