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
</head>
<body>
<% request.getSession(false); %>
<%String text=(String)request.getAttribute("userSession"); %>
<%--if the text is null then the user is logging in without proceeding for checkout --%>


<div class="container">
    
    
    <table align="center" width="500px" >
        <th align="right" width="500px">
       <%if(text==null)
{
	%>
	
<%="Sign In" %>
	
	<%
}else{
	%>
	<%=text %>
	
	<%
}
	%>
	
              </th>
    
    
    
    </table>
    
   <table align="center" >
       
       <form method="post" action="CheckNewLogin">
           <tr>
          <td style='padding:5px 10px 5px 0px'>
           <label for="emailregister">Email Address</label>
           
           </td>
           
           <td align="left" style='padding:5px 0px 10px 0px'>
             <input type="emailregister" id="email" name="email" placeholder="Enter email" autofocus required>
           </td>
       </tr>
       <tr>
       </tr>
       <tr>
           <td></td>
           <td style='padding:5px 0px 0px 0px'>
           <input type="radio" name="radiouser" id="newuser" value="new" required>
             <label for="newuser">I am a new user</label>
               <tr>
                   <td></td>
                    <td>
                         <text class="text-center">
                   
                (You'll create a password later)
               </text>
                   </td>
                   
               </tr>
               
               
           </td>
       </tr>
       <tr>
           <td></td>
           <td >
               <input type="radio" name="radiouser" id="olduser" value="old" required  onclick=requiredpassword()>
               <label for="olduser">I am an existing user</label>
           
           </td>
           
       </tr>
       <tr>
           <td align="left">
              <label for="passwordregister">
               Password
               </label>
           </td>
           <td> <input type=password name="password" id="passwordregister" placeholder="Enter password"></td>
       </tr>
       <tr>
       
           <td>
           
           </td>
           <td style='padding:20px 0px 0px 0px'>
              <input type="submit" value="Sign In">
           </td>
       </tr>
       </form>
       
    
    </table>
    
    
</div>

    <script>
    
        function requiredpassword()
        {
            
            $("input").prop("required","true");
        }
    </script>

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