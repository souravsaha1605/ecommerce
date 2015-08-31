package com.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CustomerDao;
import com.dao.CustomerDetails;
import com.model.Customer;
import com.model.StockItem;

/**
 * Servlet implementation class PlaceOrder
 */
@WebServlet("/PlaceOrder")
public class PlaceOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlaceOrder() {
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
		
		HttpSession session=request.getSession();
		Cookie[] cookies = request.getCookies();
		int flag=0;
		CustomerDao cstmr=new CustomerDao();
		
		String paymentMethod=request.getParameter("paymentmethod");
		//int dCharge=Integer.parseInt(request.getParameter("deliverycharge"));
		//int dCharge=Integer.parseInt((String) session.getAttribute("dCharges"));
		System.out.println("before the line delivery charge");
		int dCharge=(int) session.getAttribute("dCharges");
		System.out.println(dCharge+"delivery charge");
		 List<Customer> list=(List<Customer>)session.getAttribute("userDetails");
		 CustomerDetails cstmrDetails=new CustomerDetails();
	 
		 int saleNo=cstmrDetails.insertAddress(list);
		System.out.println(saleNo+"hello how");
			CustomerDao cstmrDao=new CustomerDao();
			try 
			{
				ArrayList<ArrayList<StockItem>> listOfList =  (ArrayList<ArrayList<StockItem>>)session.getAttribute("stockKey");
				cstmrDao.insertItem(listOfList,saleNo,dCharge);
				//cstmrDao.calPrice(saleNo);
			}catch(Exception e){
				System.out.println("Exception occured");
			}finally{
				response.setContentType("text/html");
				Cookie[] cookie = request.getCookies();
				if (cookie != null)
				{
				for (int i = 1; i < cookie.length; i++) {
					cookie[i].setValue("");
		        	cookie[i].setPath("/");
		        	cookie[i].setMaxAge(0);
		            response.addCookie(cookie[i]);  
					
				}	
					
						  System.out.println("cookie handling");
						   }
				System.out.println("order placed");
				response.sendRedirect("ThankYou.jsp");
			}
			
		
		
		
		
		
	}
}
