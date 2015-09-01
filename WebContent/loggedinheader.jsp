<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
HttpSession getSession=request.getSession(false);
String user=(String)getSession.getAttribute("nameofcstmr");

%>
         <nav class="navbar navbar-default ">
   <div class="container" >
       <div class="navbar-header" >
           
           <a class="navbar-brand" >
               
               <b>Vichitra Bastralaya</b>
           </a>
           
       </div>
       
           
               <form action="SearchItem" method="get" class="navbar-form navbar-left">
                <div class="form-group" id="searchbar">
                        <div class="input-group input-group-150" >
                             
                  
                
                            
                            <input type="text" class="form-control" name="searchItem"               placeholder="Search this site..." >
                            <span class="input-group-addon">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                </div>
            
    
             
               </form>
            <ul class="nav navbar-nav navbar-right">
                <li class="navbar-text">Hello <%=user %></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> My Account <strong class="caret"></strong></a>
                  <ul class="dropdown-menu" role="menu">
                                            <li>
                                                <a href="#"> My account</a>
                                            </li>
                                            
                                            <li>
                                                <a href="#"> My Orders</a>
                                            </li>
                                            
                                            <li class="divider"></li>
                                            <li>
                                                <a href="#"> My Wishlist</a>
                                            </li>
                                            <li>
                                                <a href="#"> Sign out</a>
                                            </li>
                    
                  </ul>
                    
                    
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart" ></span> Cart <strong class="caret"></strong></a>
                  <ul class="dropdown-menu" role="menu">
                                            
                            
                      
                      <%
  
  Cookie[] cookies = request.getCookies();
  for (int i = 1; i < cookies.length; i++) {
                      %>
                      <li>
                      <%
   Cookie cookie = cookies[i];
   String cookieName = cookie.getName();
   String cookieValue = cookie.getValue();
  // display each value on jsp by iterating one by one 
  %>
  
   <div class="row">
     <div class="col-md-6">
       <%=cookieValue %>
       </div>
       <div class="col-md-6">
       
       <%-- 
       <a href="deletecookie?name=<%= cookieName %>">
       <button type="submit" name="delete"   id="removeicon"  onclick="removeicon()">
      <span class="glyphicon glyphicon-trash"></span>    
      </button></a>
       
       --%>
       

       </div>
   </div>
   
  </li>
                          <hr>
  <%
  }
 %>
      <form method="post" action="ProceedCheckOut">
<center><input type="submit" class="btn btn-warning" value="View Cart Items"></center> 
 </form>

                      
                      
                      
                                   
                            
                    
                  </ul>
                    
                    
                </li>
            </ul>   
           
       
   </div>
    
</nav>
   
</body>
</html>