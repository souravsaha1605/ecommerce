<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>  
      <%@ page import="com.model.StockItem" %>
    <%@page import ="java.util.List" %>
    <%@page import ="java.util.ArrayList" %>
    <%@page import="javax.servlet.http.HttpSession" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <!--<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">-->
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>
<% request.getSession(false); %>
<%--
<%
       int dCharge=Integer.parseInt(request.getParameter("dCharges"));
       
       %>
 --%>
    
    <div class="container">
    
    


<div class="row">
    
    <div class="col-md-6">
    <h3>Select a Payment method</h3>
        <div class="jumbotron">
            
             <form method="post" action="PlaceOrder">
            
                <!--  <input type="text" name="deliverycharge" value="dCharge"> -->
            
            
            <div class="row">
                <input type="radio" name="paymentmethod" id="creditcard" required>
            <label for="creditcard" >Credit Card</label>
                
            </div>
            
             
            
            <div class="row">
                <input type="radio" name="paymentmethod" id="debitcard" required>
            <label for="debitcard" >Debit Card</label>
                
            </div>
            <hr>
            
            
            
            <div class="row">
                 <input type="radio" name="paymentmethod" id="cod" required>
            <label for="cod" >Cash on Delivery</label>
                
            </div>
                 
                 <input type="submit" value="Place order">
            </form>
        </div>
    </div>
    
</div>
    
    
    
    
    </div>

                
                
                



</body>
</html>