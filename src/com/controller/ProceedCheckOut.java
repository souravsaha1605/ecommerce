package com.controller;

//import java.awt.List;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CustomerDao;
import com.model.StockItem;

import static java.util.Collections.list;

import java.util.Iterator;
import java.util.Iterator;
import java.util.List;

/**
 * Servlet implementation class ProceedCheckOut
 */
@WebServlet("/ProceedCheckOut")
public class ProceedCheckOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProceedCheckOut() {
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
     * @param request
     * @param response
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        	System.out.println("test 17");
        	HttpSession session=request.getSession();
        	System.out.println("test 17");
		Cookie[] cookies = request.getCookies();
		
                CustomerDao[] sItem=new CustomerDao[cookies.length];
		for(int i=1;i<cookies.length;i++)
		{
			sItem[i]=new CustomerDao();
		}
		// List<StockItem> list=null;
		 //List<StockItem> listOfList=null;
		
		 ArrayList<ArrayList<StockItem>> listOfList = new ArrayList<ArrayList<StockItem>>();
		 ArrayList<StockItem>  list = new ArrayList<StockItem>();
		 
		 
		 
		 
		//List listItem=new List() {}; 
                
		  for (int i = 1; i < cookies.length; i++) {
		   Cookie cookie = cookies[i];
		   String cookieName = cookie.getName();
		   String cookieValue = cookie.getValue();
		   System.out.println("Printing cookie value"+cookieName);

		   

		   if(cookieValue.isEmpty())
		   {
			   
			   
		   }else{
			   list=(ArrayList<StockItem>) sItem[i].checkItem(Integer.parseInt(cookieName));
			    listOfList.add(list);
			    Iterator it=list.iterator();
              while(it.hasNext())
              {
                  StockItem si=(StockItem) it.next();
                  
                  System.out.println(si.getDescription());
                  System.out.println(si.getProduct_url()); 
		  System.out.println(si.getPrice());
		  System.out.println("new");
              }
		   }
			   
		   
		   if(cookieValue.equals(null))
		   {
			   
		   }else{
			   
		   }
		  
		    
           // listOfList.add(list);        
		    
                     
		  }
                  
             session.setAttribute("stockKey",listOfList);
             session.setAttribute("pstockKey", list);
             //RequestDispatcher rDispatcher=request.getRequestDispatcher("order.jsp");
             //rDispatcher.forward(request, response);
             response.sendRedirect("order.jsp");
		 /*
		  ArrayList<StockItem> list= new ArrayList<StockItem>();
		  for (int i = 1; i < cookies.length; i++)
		  {
			  list.addAll((Collection<? extends StockItem>) sItem[i]);
		  }
		  
		  for(StockItem sItemList:list)
		  {
			
			  System.out.println(sItemList.getSitem_no());
			  System.out.println(sItemList.getDescription());
		  }
		  
		  */
		 
	}

}

