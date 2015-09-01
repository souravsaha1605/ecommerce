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
<link href="order.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<% request.getSession(false); %>

<div class="container">
    
    
    <div class="row">
         <div class="col-md-9">
            <div class="row" class="headingcart">
                
                     
                 <font size="6"> Shopping Cart </font> 
                
                
                 
             </div>
             
             <%

ArrayList<ArrayList<StockItem>> listOfList =  ( ArrayList<ArrayList<StockItem>>)session.getAttribute("stockKey");


 
 
 

int price=0;
int count=0;

String item_no;

for(ArrayList<StockItem> sItem: listOfList)
{
	for(StockItem plist: sItem)
	{
		 
				 
		if(plist.getStock_avail()>0)
		{
             count++;
			%>
			
  
             
 
              <div class="row">
               <div class="col-md-2">
                 <img src="<%=plist.getProduct_url() %>" alt="<%=plist.getProduct_url() %>" height="220" width="120" >
                 </div>
                 <div class="col-md-5" style="margin:20px;">
                 
                     <div class="row">
             <h4><%=plist.getDescription().toUpperCase() %></h4>
             
			
		      </div>
                         <div class="row">
                         <%="PID :"+plist.getSitem_no() %>
                         </div>
                     <div class="row">
                 
                 <span class="badge">In Stock</span>
                     </div>
                     <div class="row">
                      <span>
                           <i class="glyphicon glyphicon-tags"></i>

                          <%=plist.getPrice() %>
                         </span>
                     </div>
                         

                         <div class="row">
                          <a href="deletecookie?name=<%=plist.getSitem_no()%>">Delete</a>           
                         &nbsp;
                         <a href="#">Save for later</a>
                     </div>
                     
                 </div>
             </div>
	
		
	<%  price=price+plist.getPrice(); 
       
      
       
		}else{
			
			%>
			<%="Sorry for the incovenience,your order for the product"+plist.getDescription()+"PID: "+plist.getSitem_no()+"is currently out of stock" %>
			
			<%
		}
		
		
	}
}


%>




            
                      
                     
                      
                            
                     
             

        
         </div>
        
          <div class="col-md-3">

              <div class="panel panel-default">
                  <div class="panel-heading">
                      
                      Price Summary
                      </div>
                  <div class="panel-body" >

                      <div class="row" padding:10px;>
                          <center>Subtotal&nbsp;(<%=count%>&nbsp;item):Rs.<%=price %></center>
                          </div>
                      
                  <div class="row">
                      <form action="SessionCheck" method="get">
                  <center>
                       <input type="submit" class="btn btn-warning" value="Proceed to Checkout" name="ProceedAction">
                  
                  </center>


</form>
                      </div>
                      <br>
              
                      
                      </div>
                  </div>
              
          </div>
    </div>
</div>    



<%--ArrayList<StockItem>  list = (ArrayList<StockItem>)request.getAttribute("pstockKey"); --%>

  
 
 
  

<script type="text/javascript">
 function deletecookie(var arg){
	 
	 $.get("deletecookie?name="+arg);
	 
	
	  // getCookies() method returns array of Cookie 
	  // we iterate over it and extract the name and value
	  // into seperate variables cookieName and cookieValue
	  
	 
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