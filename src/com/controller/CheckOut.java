package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CustomerDetails;
import com.model.Customer;

/**
 * Servlet implementation class CheckOut
 */
@WebServlet("/CheckOut")
public class CheckOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckOut() {
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
		List<Customer> listEdit=new ArrayList<Customer>();
		Customer cstmr=new Customer();
		
		int customerNo=Integer.parseInt(request.getParameter("customer_no"));
		System.out.println(customerNo);
		String firstName= request.getParameter("firstname").toLowerCase();
		System.out.println(firstName);
		String middleName=request.getParameter("middlename").toLowerCase();
		System.out.println(middleName);
		String lastName=request.getParameter("lastname").toLowerCase();
		System.out.println(lastName);
		String street=request.getParameter("street").toLowerCase();
		System.out.println(street);
		String state=request.getParameter("state").toLowerCase();
		System.out.println(state);
		String city=request.getParameter("city").toLowerCase();
		System.out.println(city);
		int zipCode=Integer.parseInt(request.getParameter("zipcode"));
		System.out.println(zipCode);
		
		cstmr.setCustomer_no(customerNo);
		cstmr.setFirstName(firstName);
		cstmr.setMiddleName(middleName);
		cstmr.setLastName(lastName);
		cstmr.setStreet(street);
		cstmr.setZip_code(zipCode);
		cstmr.setCity(city);
		cstmr.setState(state);
		
		
		
		
		
		listEdit.add(cstmr);
		
		//String userId=(String)session.getAttribute("nameofcstmr");
		
		
		
		ArrayList<Customer> list=(ArrayList<Customer>)session.getAttribute("userDetails");
		ArrayList<Customer> listDupli=(ArrayList<Customer>)session.getAttribute("userDetails");
		list.removeAll(listEdit);
		/*
		System.out.println("listEdit");
		for(Customer cst: listEdit)
		{
			System.out.println("new"+cst.getCity());
			System.out.println("new"+cst.getEmail());
			System.out.println("new"+cst.getCustomer_no());
			System.out.println("new"+cst.getFirstName());
			System.out.println("new"+cst.getMiddleName());
			System.out.println("new"+cst.getLastName());
			System.out.println("new"+cst.getState());
			System.out.println("new"+cst.getStreet());
			System.out.println("new"+cst.getZip_code());
		}
		System.out.println("list");
		for(Customer cst: list)
		{
			System.out.println("new"+cst.getEmail());
			System.out.println("new"+cst.getCity());
			System.out.println("new"+cst.getCustomer_no());
			System.out.println("new"+cst.getFirstName());
			System.out.println("new"+cst.getMiddleName());
			System.out.println("new"+cst.getLastName());
			System.out.println("new"+cst.getState());
			System.out.println("new"+cst.getStreet());
			System.out.println("new"+cst.getZip_code());
		}
		*/
		if(list.isEmpty())
		{
			System.out.println("No editing done");
		}else{
			CustomerDetails cstmrDetails=new CustomerDetails();
			cstmrDetails.updateAddress(listEdit);
			
			System.out.println("Edited");
		}
		session.setAttribute("userDetails", listEdit);
		
		if(listEdit.isEmpty())
		{
			System.out.println("edited list empty");
		}else{
			//response.sendRedirect("login.jsp");
			request.setAttribute("userSession", " Please Log in to verify your account and continue");
			RequestDispatcher rDispatcher=request.getRequestDispatcher("login.jsp");
			rDispatcher.forward(request, response);
		}
		

		 
		 
	}

}
