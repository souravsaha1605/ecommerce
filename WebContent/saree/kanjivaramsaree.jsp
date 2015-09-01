<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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


</head>
<body>

<% HttpSession getSession=request.getSession(false);
String user=(String)getSession.getAttribute("nameofcstmr");


   if(user==null)
   {
	   %>
	<jsp:include page="/unknownUser.jsp" /> 
	   
	   <%
   }else{
	   
	   %>
	   <jsp:include page="/loggedinheader.jsp" /> 
	   <%
	   
   }
   
   %>
   
   
   <%
 // Checks for the value of name that it is null or not
  String name = request.getParameter("name");
  if (name != null && name.length() > 0) {
   String value = request.getParameter("value");
   Cookie retrieveCookies = new Cookie(name, value);
  retrieveCookies.setMaxAge(24 * 60 * 60);
  // add cookies to response object of jsp 
   response.addCookie(retrieveCookies);
  // redirects control to same page for new request
   response.sendRedirect("cookies.jsp");
  }
  
  %>

 

  
  
  
  
 
 
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
    $('.image-placeholder').hover(function() {
		$(this).css('background-size','200px 200px');
	}, function() {
		$(this).css('background-size','150px 150px');
	});
    </script>
</body>
</html>
   
