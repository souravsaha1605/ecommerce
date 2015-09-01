<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.servlet.http.HttpSession" %>
    <%@page import="com.model.Customer" %>
    <%@page import="java.util.ArrayList" %>
    <%@page import="java.util.Collection" %>
    <%@ page import="com.model.StockItem" %>
    <%@page import ="java.util.List" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <!--<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">-->
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="shipdetails.css">

<title>Insert title here</title>
</head>
<body>
<div class="container">




    
    
        
        
                  
<%

 session=request.getSession(false);
String user=(String)session.getAttribute("nameofcstmr");
if(user==null){


	response.sendRedirect("register.jsp");
}else{
	String middleName=null;
	    %>
        <hr>
	    <div class="row">
           
            <div class="col-lg-8" id="deliverto">
                <h3>
                    <div class="row">
                        Deliver to :
                    </div>
                   
                </h3>
            <%
         ArrayList<Customer> list=(ArrayList<Customer>)session.getAttribute("userDetail");
         for(Customer cstmr :list)
         {
        	 if(cstmr.getMiddleName()==null)
        	 {
        		  middleName="";
        	 }
        	 %>
        	 
        	 <%=cstmr.getFirstName().toUpperCase()+" "+middleName.toUpperCase()+" "+cstmr.getLastName().toUpperCase() %>
        	 <br>
        	 <%=cstmr.getStreet().toUpperCase() %>
        	 <br>
        	 <%=cstmr.getCity().toUpperCase()+"-"+" "+cstmr.getZip_code()+"," %>
        	 <br>
        	 <%=cstmr.getState().toUpperCase() %>
        	 
        	 <%
         }
         
         %>
         
         
         
         <%
         
         
         
}

%>
        
        </div>
        
        <div class="col-lg-4 col-md-4">
        
            
            <form  method="post" action="BillPayment" >
            
            
            
            <div class="row" >
            
                <input type="radio" name="dayselect" id="free" value="free" required>
                <label for="free">Free delivery(4-5 days)</label>
            </div>
            <div class="row">
            
                <input type="radio" name="dayselect" id="next" value="next" required>
                <label for="next" >Next day delivery(Charge of Rs 70)</label>
            </div>
            <div class="row">
                <input type="radio" name="dayselect" id="same" value="same" required>
                <label for="same">Same day delivery(Charge of Rs120)<br><sub>*Order to be given before 2 p.m.</sub></label>
            </div>
                <div class="row">
                
                    <input type="submit" value="Proceed for payment">
                </div>
                
                </form>
        </div>
    </div>
                 <div class="row">
                     <div class="col-md-8">
                         
                        <div class="row">
                            <h3>
                              Shipped Items
                            </h3>
                        </div>    
                         <div class="row">
                             
                           
                             
                             <%

ArrayList<ArrayList<StockItem>> listOfList =  ( ArrayList<ArrayList<StockItem>>)session.getAttribute("stockKey");


 
 
 

int price=0;

String item_no;

for(ArrayList<StockItem> sItem: listOfList)
{
	for(StockItem plist: sItem)
	{
		 
				 
		if(plist.getStock_avail()>0)
		{
			%>
			
			<%=plist.getDescription() %>
		
	<%="Price"+plist.getPrice() %>
	<%="PID"+plist.getSitem_no() %>
		
	<%  price=price+plist.getPrice(); 
		}else{
			
			%>
			<%="Sorry for the incovenience,your order for the product"+plist.getDescription()+"PID: "+plist.getSitem_no()+"is currently out of stock" %>
			
			<%
		}
		
		
	}
}


%>


<%=price %>

                             
                             
                             
                             
                             
                             
                        </div>     
                         
                         
                        </div> 
                     
                </div>     
                 </div>
</body>
</html>