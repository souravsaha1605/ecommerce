<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="C:\Users\SOURAV SAHA\Desktop\during gfs\project gfs\collected from net\practice1.css">

<title>Vichitra Bastralaya</title>
</head>

<body>
    
<%@ page import="javax.servlet.http.Cookie;"%>
        <nav class="navbar navbar-default ">
   <div class="container" >
       <div class="navbar-header" >
           
           <a class="navbar-brand" >
               
               <b>Vichitra Bastralaya</b>
           </a>
       </div>
       
           
               <form action="" method="" class="navbar-form navbar-left">
                <div class="form-group" id="searchbar">
                        <div class="input-group input-group-150" >
                             
                  
                
                            
                            <input type="text" class="form-control"               placeholder="Search this site..." >
                            <span class="input-group-addon">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                </div>
            
    
             
               </form>
            <ul class="nav navbar-nav navbar-right">
                <li class="navbar-text">Hello user</li>
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
                    <li class="divider"></li>
                    <li><a href="#">Sign in</a></li>
                  </ul>
                    
                    
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> Cart <strong class="caret"></strong></a>
                  <ul class="dropdown-menu" role="menu">
                                            
                                            
                    
                  </ul>
                    
                    
                </li>
            </ul>   
           
       
   </div>
    
</nav>
   
  
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
                <a href="#"><td>Saree</td></a>
                
              </tr>
              <tr>
                  <a href="#"><td>Kurti</td></a>
                
              </tr>
              <tr>
                  <a href="#"><td>Kids</td></a>
                
              </tr>
            </tbody>
          </table>
        </div>
        <div class="col-md-8">
        
            
            <div id="carousel-example-generic" class="carousel" data-ride="carousel">
                          
                          
                        
                          <!-- Wrapper for slides -->
                          <div class="carousel-inner">
                                <div class="item active">
                                  <img src="http://adimohinimohankanjilal.com/modules/revsliderprestashop/uploads/9514291COD%20website%20banner2.jpg" alt="...">
                                  
                                </div>
                                <div class="item">
                                  <img src="https://martjackstorage.blob.core.windows.net/in-resources/55f607bb-6843-41a3-895f-df95999cc66c/Images/userimages/New%20Arrival%202/10.jpg" alt="...">
                                  <div class="carousel-caption">
                                    
                                  </div>
                                </div>
                                <div class="item">
                                  <img src="http://adimohinimohankanjilal.com/modules/revsliderprestashop/uploads/5225390COD%20website%20banner-2.jpg" alt="...">
                                  
                                </div>
                          </div>
                        </div>

            
        </div>
    </div>
    <div class="container">
    <div class="row">
    
        <div class="col-md-2">
        
            <b>Popular Products</b>
        </div>
        
    </div>
    <div class="row">
       
        <div class="col-md-3" >
            <div class="row">
            
            
            <a href="http://adimohinimohankanjilal.com/" ><center><img src="http://adimohinimohankanjilal.com/2151-large_default/kanjivaram-saree.jpg" title="Kanjivaram Saree" style="width: 160px;height: 230px;"></img></center></a>
            
            </div>
             <div class="row">
                 <center><b><font size="1" color="blue">Kanjivaram Saree</font></b></center>
                    
            </div>
             <div class="row">
                 <center><b><font size="3" color="red">Price : Rs 1800</font></b></center>
                    
            </div>
        <form action="Home.jsp" name="f" method="post">
            <input type="hidden" name="product" value="1001">
            <input type="number" name="qty" >
            <div class="row">
              <center> <input type="submit" name="atocart" value="+Add to cart" ></center> 
                    
            </div>
             <div class="row">
               <center> <input type="button" name="atowish" value="+Add to Wishlist"></center>
        </form>      
            </div>
        </div>
        

        <div class="col-md-3" >
            <div class="row">
            
            
            <a href="http://adimohinimohankanjilal.com/" ><center><img src="http://adimohinimohankanjilal.com/2151-large_default/kanjivaram-saree.jpg" title="Kanjivaram Saree" style="width: 160px;height: 230px;"></img></center></a>
            
            </div>
             <div class="row">
                 <center><b><font size="1" color="blue">Kanjivaram Saree</font></b></center>
                    
            </div>
             <div class="row">
                 <center><b><font size="3" color="red">Price : Rs 1800</font></b></center>
                    
            </div>
            <div class="row">
               <a href="#"><center>+Add to cart</center> </a>
                    
            </div>
             <div class="row">
               <a href="#"><center>+Add to Wishlist</center> </a>
                    
            </div>
        </div>
        <div class="col-md-3" >
            <div class="row">
            
            
            <a href="http://adimohinimohankanjilal.com/" ><center><img src="http://adimohinimohankanjilal.com/2151-large_default/kanjivaram-saree.jpg" title="Kanjivaram Saree" style="width: 160px;height: 230px;"></img></center></a>
            
            </div>
             <div class="row">
                 <center><b><font size="1" color="blue">Kanjivaram Saree</font></b></center>
                    
            </div>
             <div class="row">
                 <center><b><font size="3" color="red">Price : Rs 1800</font></b></center>
                    
            </div>
            <div class="row">
               <a href="#"><center>+Add to cart</center> </a>
                    
            </div>
             <div class="row">
               <a href="#"><center>+Add to Wishlist</center> </a>
                    
            </div>
        </div>
    
        <div class="col-md-3" >
            <div class="row">
            
            
            <a href="http://adimohinimohankanjilal.com/" ><center><img src="http://adimohinimohankanjilal.com/2151-large_default/kanjivaram-saree.jpg" title="Kanjivaram Saree" style="width: 160px;height: 230px;"></img></center></a>
            
            </div>
             <div class="row">
                 <center><b><font size="1" color="blue">Kanjivaram Saree</font></b></center>
                    
            </div>
             <div class="row">
                 <center><b><font size="3" color="red">Price : Rs 1800</font></b></center>
                    
            </div>
            <div class="row">
               <a href="#"><center>+Add to cart</center> </a>
                    
            </div>
             <div class="row">
               <a href="#"><center>+Add to Wishlist</center> </a>
                    
            </div>
        </div>
        

                
    </div>
    </div>
     

    <div class="container">
    <div class="row">
    
        <div class="col-md-2">
        
            <b>New Arrival</b>
        </div>
        
    </div>
    <div class="row">
       
        <div class="col-md-3" >
            <div class="row">
            
            
            <a href="http://adimohinimohankanjilal.com/" ><center><img src="http://adimohinimohankanjilal.com/2151-large_default/kanjivaram-saree.jpg" title="Kanjivaram Saree" style="width: 160px;height: 230px;"></img></center></a>
            
            </div>
             <div class="row">
                 <center><b><font size="1" color="blue">Kanjivaram Saree</font></b></center>
                    
            </div>
             <div class="row">
                 <center><b><font size="3" color="red">Price : Rs 1800</font></b></center>
                    
            </div>
            <div class="row">
               <a href="#"><center>+Add to cart</center> </a>
                    
            </div>
             <div class="row">
               <a href="#"><center>+Add to Wishlist</center> </a>
                    
            </div>
        </div>
        

        <div class="col-md-3" >
            <div class="row">
            
            
            <a href="http://adimohinimohankanjilal.com/" ><center><img src="http://adimohinimohankanjilal.com/2151-large_default/kanjivaram-saree.jpg" title="Kanjivaram Saree" style="width: 160px;height: 230px;"></img></center></a>
            
            </div>
             <div class="row">
                 <center><b><font size="1" color="blue">Kanjivaram Saree</font></b></center>
                    
            </div>
             <div class="row">
                 <center><b><font size="3" color="red">Price : Rs 1800</font></b></center>
                    
            </div>
            <div class="row">
               <a href="#"><center>+Add to cart</center> </a>
                    
            </div>
             <div class="row">
               <a href="#"><center>+Add to Wishlist</center> </a>
                    
            </div>
        </div>
        <div class="col-md-3" >
            <div class="row">
            
            
            <a href="http://adimohinimohankanjilal.com/" ><center><img src="http://adimohinimohankanjilal.com/2151-large_default/kanjivaram-saree.jpg" title="Kanjivaram Saree" style="width: 160px;height: 230px;"></img></center></a>
            
            </div>
             <div class="row">
                 <center><b><font size="1" color="blue">Kanjivaram Saree</font></b></center>
                    
            </div>
             <div class="row">
                 <center><b><font size="3" color="red">Price : Rs 1800</font></b></center>
                    
            </div>
            <div class="row">
               <a href="#"><center>+Add to cart</center> </a>
                    
            </div>
             <div class="row">
               <a href="#"><center>+Add to Wishlist</center> </a>
                    
            </div>
        </div>
    
        <div class="col-md-3" >
            <div class="row">
            
            
            <a href="http://adimohinimohankanjilal.com/" ><center><img src="http://adimohinimohankanjilal.com/2151-large_default/kanjivaram-saree.jpg" title="Kanjivaram Saree" style="width: 160px;height: 230px;"></img></center></a>
            
            </div>
             <div class="row">
                 <center><b><font size="1" color="blue">Kanjivaram Saree</font></b></center>
                    
            </div>
             <div class="row">
                 <center><b><font size="3" color="red">Price : Rs 1800</font></b></center>
                    
            </div>
            <div class="row">
               <a href="#"><center>+Add to cart</center> </a>
                    
            </div>
             <div class="row">
               <a href="#"><center>+Add to Wishlist</center> </a>
                    
            </div>
        </div>
        

                
    </div>
    </div>
</div>

    
    <script>

      <%
 // Checks for the value of name that it is null or not
  String product = request.getParameter("product");
  if (product != null && product.length() > 0) {
   String qty = request.getParameter("qty");
   Cookie retrieveCookies = new Cookie(product, qty);
  // add cookies to response object of jsp 
   response.addCookie(retrieveCookies);
  // redirects control to same page for new request
   response.sendRedirect("Home.jsp");
  }
  
  %>

 
  <%
  // getCookies() method returns array of Cookie 
  // we iterate over it and extract the name and value
  // into seperate variables cookieName and cookieValue
  Cookie[] cookies = request.getCookies();
  for (int i = 0; i < cookies.length; i++) {
   Cookie cookie = cookies[i];
   String cookieName = cookie.getName();
   String cookieValue = cookie.getValue();
  // display each value on jsp by iterating one by one 
  %>
  
   <%=cookieName%>
   <%=cookieValue %>
  

  <%
  }
 %>


        
        
</script>
    
    
	
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
<footer>
    
</footer>
</html>
