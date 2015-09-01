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
 * Servlet implementation class BillPayment
 */
@WebServlet("/BillPayment")
public class BillPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BillPayment() {
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
		
		HttpSession session=request.getSession(false);
		String optionCharge=request.getParameter("dayselect");
		System.out.println("test1");
		int deliveryCharge=0;
		if(optionCharge.equalsIgnoreCase("free"))
		{
			deliveryCharge=0;
		}else if(optionCharge.equalsIgnoreCase("next"))
		{
			deliveryCharge=70;
		}else{
			deliveryCharge=120;
			
		}
		System.out.println("test2");
		session.setAttribute("dCharges", deliveryCharge);
		RequestDispatcher rDispatcher=request.getRequestDispatcher("billpayment.jsp");
		rDispatcher.forward(request, response);
	}

}
