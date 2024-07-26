package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBconnection;
import com.user.UserDetails;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet{

	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		String name=request.getParameter("fname");
		String email=request.getParameter("uemial");
		String password=request.getParameter("upassword");
		
		UserDetails us=new UserDetails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		
		
		
		UserDAO dao=new UserDAO(DBconnection.getConn());
		boolean f=dao.addUser(us);
		HttpSession session;
				
		if(f)
		{
			session =request.getSession();
			session.setAttribute("reg-success", "Resgitration Successfully.");
			response.sendRedirect("register.jsp");
		}
		else {
			session=request.getSession();
			session.setAttribute("failed-msg", "SOMETHING WENT WRONG o server");
			response.sendRedirect("register.jsp");
			
		}
		
		
	}

}