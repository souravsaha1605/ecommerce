package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionCheck
 */
@WebServlet("/SessionCheck")
public class SessionCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(false);
		//session.invalidate();
		String user=(String)session.getAttribute("nameofcstmr");
		
		if(user==null){

		
		
			System.out.println("New Session");
			request.setAttribute("userSession", "Log in to continue");
			//RequestDispatcher rDispatcher=request.getRequestDispatcher("register.jsp");
			RequestDispatcher rDispatcher=request.getRequestDispatcher("login.jsp");
			rDispatcher.forward(request, response);
		}else
		{
			System.out.println("Old Session");
			request.setAttribute("userSession", " \t\t\t\t\t\t\t\t\t\t Please Log in to verify your account and continue");
			RequestDispatcher rDispatcher=request.getRequestDispatcher("login.jsp");
			rDispatcher.forward(request, response);
		}
		/*
		RequestDispatcher rDispatcher=request.getRequestDispatcher("register.jsp");
		rDispatcher.forward(request, response);*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
	}

}
