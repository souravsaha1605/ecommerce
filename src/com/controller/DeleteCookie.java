package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteCookie
 */
@WebServlet("/deletecookie")
public class DeleteCookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCookie() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cookieName=request.getParameter("name");
		Cookie[] cookies = request.getCookies();
		//int flag=(int) request.getAttribute("deleteKey");
		response.setContentType("text/html");
		  for (int i = 1; i < cookies.length; i++) {
		   Cookie cookie = cookies[i];
		   
		   if(cookieName.equals(cookie.getName()))
		   {
			   
			   cookie.setValue(null); cookie.setPath("/"); 
			   cookie.setMaxAge(0);
			   response.addCookie(cookie);
			  // response.flushBuffer();
			  
			   break;
		   }
		   //System.out.println("cookie"+cookie.getName());
		   //System.out.println(cookie.getValue());
		   
		  }
		  /*
		  Cookie[] cookies2 = request.getCookies();
			//int flag=(int) request.getAttribute("deleteKey");
			response.setContentType("text/html");
			  for (int i = 1; i < cookies2.length; i++) {
			   Cookie cookie = cookies2[i];
			   
				 
				  
				
			   System.out.println("cookie"+cookie.getName());
			   System.out.println(cookie.getValue());
			   
			  }
		  
		  */
		  
		  RequestDispatcher rDispatcher = request.getRequestDispatcher("cookies.jsp");
			rDispatcher.forward(request, response);

		  
		   
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
