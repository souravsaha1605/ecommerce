<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>  
    <%@page import="javax.servlet.http.HttpSession" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">  -->

    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
    
<!--<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">  -->
        <link rel="stylesheet" type="text/css" href="practice1.css">




<title>Vichitra Bastralaya</title>


</head>
<body>

<% HttpSession getSession=request.getSession(false);
String user=(String)getSession.getAttribute("nameofcstmr");


   if(user==null)
   {
	   %>
	<jsp:include page="unknownUser.jsp" /> 
	   
	   <%
   }else{
	   
	   %>
	   <jsp:include page="loggedinheader.jsp" /> 
	   <%
	   
   }
   
   %>

  
<div class="container">
    <div class="row">
        <div class="col-md-2">
         
            <table class="table table-hover">
            <thead>
              <tr>
                <th id="tableheader"><b>Category</b></th>
                
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><a href="saree/saree.jsp">Saree</a></td>
                
              </tr>
              <tr>
                 <td> <a href="kurti/kurti.jsp">Kurti</a></td>
                
              </tr>
              <tr>
                  <td><a href="kids/kids.jsp">Kids</a></td>
                
              </tr>
            </tbody>
          </table>
        </div>
        <div class="col-md-8">
        
            
            <div id="carousel-example-generic" class="carousel" data-ride="carousel">
                          
                          
                        
                          <!-- Wrapper for slides -->
                          <div class="carousel-inner">
                                <div class="item active">
                                  <img src="images/9514291COD website banner2.jpg" alt="...">
                                  
                                </div>
                                <div class="item">
                                   <img src="images/kids.jpg" alt="..."> 
                                  <div class="carousel-caption">
                                    
                                  </div>
                                </div>
                                <div class="item">
                                  <img src="images/9514291COD website banner3.jpg" alt="...">  
                                  
                                </div>
                          </div>
                        </div>

            
        </div>
    </div>
    
    
     <div class="row">
    
         <div class="col-md-3">
         
             <div class="row">
              <a href="#"><center><img src="images/lahenga 4850.jpg" title="Lahenga Saree" style="width: 160px;height: 230px;"></img></center></a>
             
         
             </div>
            <div class="row">
                 <center><b><font size="1" color="blue">Lahenga Saree</font></b></center>
                    
            </div>
             <div class="row">
                 <center><b><font size="3" color="red">Price : Rs 1800</font></b></center>
                    
            </div>
         <div class="row">
         
             <form method="post" action="cookies.jsp">
                    <input type="hidden" name=name size=20 value="1001" class="smalltext">
                    <input type="hidden" name=value size=20 value="Lehanga Saree"class="smalltext">
             <center><input type="submit" class="btn btn-info" value="+Add to cart" ></center>
         </form>
         </div>
         <div class="row">
         
             <a href="#"><center>+Wishlist</center> </a>
         </div>
         <div class="row">
            <a href="#"><center>Quick View</center> </a>  
         </div>
         
         
    
    </div>

    
          
    
    
    
             <div class="col-md-3">
         
             <div class="row">
            <a href="#"><center><img src="images/kanjivaram-saree 6870.jpg" title="Kanjivaram Saree" style="width: 160px;height: 230px;"></img></center></a>
         
             </div>
            <div class="row">
                 <center><b><font size="1" color="blue">Kanjivaram Saree</font></b></center>
                    
            </div>
             <div class="row">
                 <center><b><font size="3" color="red">Price : Rs 1800</font></b></center>
                    
            </div>
         <div class="row">
         
             <form method="post" action="cookies.jsp">
                    <input type="hidden" name=name size=20 value="1002" class="smalltext">
                    <input type="hidden" name=value size=20 value="Kanjivaram Saree"class="smalltext">
             <center><input type="submit" class="btn btn-info" value="+Add to cart" ></center>
         </form>
         </div>
         <div class="row">
         
             <a href="#"><center>+Wishlist</center> </a>
         </div>
         <div class="row">
            <a href="#"><center>Quick View</center> </a>  
         </div>
         
         
    
    </div>
                    <div class="col-md-3">
         
             <div class="row">
              <a href="#"><center><img src="images/chiffon-saree1950.jpg" title="Chiffon Saree" style="width: 160px;height: 230px;"></img></center></a>
             
         
             </div>
            <div class="row">
                 <center><b><font size="1" color="blue">Chiffon Saree</font></b></center>
                    
            </div>
             <div class="row">
                 <center><b><font size="3" color="red">Price : Rs 1950</font></b></center>
                    
            </div>
         <div class="row">
         
             <form method="post" action="cookies.jsp">
                    <input type="hidden" name=name size=20 value="1003" class="smalltext">
                    <input type="hidden" name=value size=20 value="Chiffon Saree"class="smalltext">
             <center><input type="submit" class="btn btn-info" value="+Add to cart" ></center>
         </form>
         </div>
         <div class="row">
         
             <a href="#"><center>+Wishlist</center> </a>
         </div>
         <div class="row">
            <a href="#"><center>Quick View</center> </a>  
         </div>
         
         
    
    </div>
        
        
        
        
        
        
    
    
    
</div>

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
   <!-- <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
  -->
  <script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
  <!--
  <script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>    
    -->
    
    <script type="text/javascript">
    $('.image-placeholder').hover(function() {
		$(this).css('background-size','200px 200px');
	}, function() {
		$(this).css('background-size','150px 150px');
	});
    </script>
</body>
</html>
