<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>  
    <%@page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <!--<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">-->
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="practice1.css">
<title>Vichitra Bastralaya</title>
<script type="text/javascript">
    
        function checkconstraints()
        {
            
            if(document.f.password.value!=document.f.password2.value)
            	{
            	  alert("Password not matching");
            	  return false;
            	}else if(document.f.phone1.value==document.f.phone2.value)
            	{
            	  alert("Either give a different phone number or leave it blank");
            	  return false;
            	}else{
            		
            		return true;
            	}
        }
    </script>
</head>
<body>
<% request.getSession(false); %>
<form action="RegisterDetails" name="f" method="post" onload="return checkconstraints();">

<%String userId=(String)request.getAttribute("newUserId"); %>

<table>
                <tr>
               
                    <th>
                      Fill your details
                    </th>
               </tr>
               <tr>
                   <td>
                     <input type="hidden" name="email" value="<%=userId %>" id="first_name">
                   </td>
               </tr>
                <tr>
                    <td>
                       <label for="first_name" >First Name</label> 
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="text" name="firstname" value="" id="first_name">
                   </td>
               </tr>
               <tr>
                    <td>
                       <label for="middle_name" >Middle Name</label> 
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="text" name="middlename" value="" id="middle_name">
                   </td>
               </tr>
               <tr>
                    <td>
                       <label for="last_name" >Last Name</label> 
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="text" name="lastname" value="" id="last_name">
                   </td>
               </tr>
               <tr>
                    <td>
                       <label for="street" >Street</label> 
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="text" name="street" value="" id="street">
                   </td>
               </tr>
               <tr>
                    <td>
                       <label for="zipcode" >Zip Code</label> 
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="text" name="zipcode" value="" id="zipcode">
                   </td>
               </tr>
               <tr>
                    <td>
                       <label for="city" >City</label> 
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="text" name="city" value="" id="city">
                   </td>
               </tr>
               <tr>
                    <td>
                       <label for="state" >State</label> 
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="text" name="state" value="" id="state">
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
               <tr>
                    <td>
                       <label for="password" >Password</label> 
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="password" name="password" value="" id="password">
                   </td>
               </tr>
               <tr>
                    <td>
                       <label for="password2" >Confirm Password</label> 
                    </td>
                   
                    
               </tr>
               <tr>
                   <td>
                     <input type="password" name="password2" value="" id="password2">
                   </td>
               </tr>
               <tr>
                   <td>
                     <input type="submit" name="" value="Submit" >
                   </td>
               </tr>
            </table>
</form>
    

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