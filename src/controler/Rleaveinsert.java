package controler;

import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import pojo.Leavemaster;
import pojo.Registration;

import logic.BLmanager;

/**
 * Servlet implementation class leaveinsert
 */
@WebServlet("/Rleaveinsert")
public class Rleaveinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Rleaveinsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String typ = request.getParameter("drptype");
		String descrip = request.getParameter("description");
		String strtdate = request.getParameter("strtdate");
		String enddate = request.getParameter("enddate");
		String dept = request.getParameter("department");
		Date start = Date.valueOf(strtdate);
		Date end = Date.valueOf(enddate);
		String status = "pending";
		
		
		try
		{
		java.util.Date date = new java.util.Date();
		 
		HttpSession se = request.getSession();
		BLmanager b = new BLmanager();
		String email = (String)se.getAttribute("email");
		Registration reid = b.getUserByUserId(email);
		Leavemaster lm  = new Leavemaster();
		lm.setRegistration(reid);
		lm.setLeavetype(typ);
		lm.setDescription(descrip);
		lm.setStartdate(start);
		lm.setEnddate(end);
		lm.setDepartment(dept);
		lm.setStatus(status);
		lm.setApplydate(date);
		b.leaveinsert(lm);
		
			int rid = (Integer)se.getAttribute("rid");
						
						 if(rid==10)
						{ 
							response.sendRedirect("Real/AgentIndex.jsp");
							
							
						}
						else if(rid==11)
						{ 
							response.sendRedirect("Real/ClientIndex.jsp");
							
							
						}
						
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
