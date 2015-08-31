package com.controller;

import java.awt.List;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CustomerDetails;
import com.model.Customer;
import com.model.StockItem;

/**
 * Servlet implementation class CheckLogin
 */
@WebServlet("/CheckLogin")
public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName=request.getParameter("email");
		String password=request.getParameter("password");
		String radioValue=request.getParameter("radiouser");
		CustomerDetails cstmrDetails=new CustomerDetails();
		/* Check for validation of customer(flag=1)if true
		 * list of customer details extracted from database 
		 * two sql queries and two return
		 *  */
		System.out.println(userName);
		RequestDispatcher rDispatcher;
		
		
			HttpSession session=request.getSession();
			
			 ArrayList<Customer>  list = new ArrayList<Customer>();
		     
			
			if(radioValue.equalsIgnoreCase("new"))
			{
				int flag=cstmrDetails.checkEmail(userName);
				if(flag==0)
				{
					request.setAttribute("userSession", "Account already exists,please sign in");
					rDispatcher=request.getRequestDispatcher("login.jsp");
					rDispatcher.forward(request, response);
				}else{
					String newUserName=request.getParameter("email");
					request.setAttribute("newUserId", newUserName);
					rDispatcher=request.getRequestDispatcher("register.jsp");
					rDispatcher.forward(request, response);
					
				}
			}else{
				
				int flag=cstmrDetails.validateUser(userName, password);
				if(flag==0)
				{
					System.out.println("outside"+userName+" "+password);
					request.setAttribute("userSession", "Invalid Username or Password\n \t\t\t\t\t    \tSign In");
					rDispatcher=request.getRequestDispatcher("login.jsp");
					rDispatcher.forward(request, response);
				}else{
					session.setAttribute("nameofcstmr",userName );
					System.out.println("inside25");
					list=(ArrayList<Customer>) cstmrDetails.extractDetails(userName);
					
					System.out.print(list);
					session.setAttribute("userDetails", list);
					/*
					rDispatcher=request.getRequestDispatcher("finalcheckout.jsp");
					rDispatcher.forward(request, response);
					*/
					response.sendRedirect("finalcheckout.jsp");
				}
			}
			
		
	}

}
