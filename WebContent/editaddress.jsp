<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>  
    <%@page import="javax.servlet.http.HttpSession" %>
    <%@page import="com.model.Customer" %>
    <%@page import="java.util.ArrayList" %>
    <%@page import="java.util.Collection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <!--<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">-->
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="practice1.css">

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
	     ArrayList<Customer> list=(ArrayList<Customer>)session.getAttribute("userDetails");
         for(Customer cstmr :list)
         {
        	 if(cstmr.getMiddleName()==null)
        	 {
        		  middleName="";
        	 }
        	 %>   
<form method="post" action="CheckOut">        
        
        <table>
                <tr>
               
                    <th>
                       Edit your Address
                    </th>
               </tr>
                               <tr>
                   <td>
                     <input type="hidden" name="firstname" value="<%=cstmr.getFirstName().toUpperCase()%>" id="first_name">
                   </td>
               </tr>
               
               <tr>
                   <td>
                      <input type="hidden" name="customer_no" value="<%=cstmr.getCustomer_no()%>">
                   </td>
               </tr>
               <tr>
                   
                   <td>
                     <input type="hidden" name="middlename" value="<%=middleName.toUpperCase()%>" id="middle_name">
                   </td>
               </tr>
               
               <tr>
                   <td>
                     <input type="hidden" name="lastname" value="<%=cstmr.getLastName().toUpperCase()%>" id="last_name">
                   </td>
               </tr>
               <tr>
                    <td>
                       <label for="street" >Street</label> 
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="text" name="street" value="<%=cstmr.getStreet().toUpperCase() %>" id="street">
                   </td>
               </tr>
               <tr>
                    <td>
                       <label for="zipcode" >Zip Code</label> 
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="text" name="zipcode" value="<%=cstmr.getZip_code()%>" id="zipcode">
                   </td>
               </tr>
               <tr>
                    <td>
                       <label for="city" >City</label> 
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="text" name="city" value="<%=cstmr.getCity().toUpperCase()%>" id="city">
                   </td>
               </tr>
               <tr>
                    <td>
                       <label for="state" >State</label> 
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="text" name="state" value="<%=cstmr.getState().toUpperCase() %>" id="state">
                   </td>
               </tr>
               <tr>
                    <td>
                       <label for="phone1" >Phone(Primary)</label> 
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="text" name="phone1" value="" id="phone1">
                   </td>
               </tr>
               <tr>
                    <td>
                       <label for="phone2" >Phone(Optional)</label> 
        
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="text" name="phone2" value="" id="phone2">
                   </td>
               </tr>
           
        
        
        
        
        
        
        
        
        	 
        	 
        	 <%
         }
         
         %>
         
         
         
         <%
         
         
         
}

%>
             
             
                <tr>
                    <td>
                        <input type="submit" value="Deliver to this address" width="60"></button>
   
                    </td>
                 
                 </tr>
                
             
             </form>
            <tr>
                <td>
                    <form action="finalcheckout.jsp">
                    
                       &nbsp;&nbsp;OR&nbsp;&nbsp;  <input type="submit" value="Return to Address Book" width="60"></button>
                    </form>
                    
                </td>
            </tr>
                
              </table>
	   </div> 
	    
    </div>
	    
	     <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    $('.image-placeholder').hover(function() {
		$(this).css('background-size','200px 200px');
	}, function() {
		$(this).css('background-size','150px 150px');
	});
    </script>
	    
	    </body>
</html>