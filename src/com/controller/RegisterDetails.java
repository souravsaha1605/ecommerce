package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CustomerDetails;
import com.model.Customer;

/**
 * Servlet implementation class RegisterDetails
 */
@WebServlet("/RegisterDetails")
public class RegisterDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterDetails() {
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
		List<Customer> listAdd=new ArrayList<Customer>();
		Customer cstmr=new Customer();
		
		String email=request.getParameter("email");
		System.out.println(email);
		String password=request.getParameter("password");
		System.out.println(password);
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
		
		
		cstmr.setStreet(street);
		cstmr.setCity(city);
		cstmr.setState(state);
		cstmr.setZip_code(zipCode);
		cstmr.setEmail(email);
		cstmr.setPassword(password);
		cstmr.setFirstName(firstName);
		cstmr.setMiddleName(middleName);
		cstmr.setLastName(lastName);
		
		
		System.out.print("test21");
		
		
		listAdd.add(cstmr);
		CustomerDetails cDetails=new CustomerDetails();
		cDetails.insertDetails(listAdd);
		
	}

}
