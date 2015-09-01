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
	    %>
        <hr>
	    <div class="row">
           
            <div class="col-md-3" id="deliverto">
            <%
         ArrayList<Customer> list=(ArrayList<Customer>)session.getAttribute("userDetails");
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
             <form action="shipdetails.jsp">
             
             <input type="submit" value="Deliver to this address" width="60"></button> 
             </form >
            
                 <br>
                 <a href="editaddress.jsp">Edit your Address</a>
             </div>
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