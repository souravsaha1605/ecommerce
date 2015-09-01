<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>  
    <%@page import="javax.servlet.http.HttpSession" %>
    <%@page import="com.model.Customer" %>
    <%@page import="java.util.ArrayList" %>
    <%@page import="java.util.Collection" %>
    <%@ page import="com.model.StockItem" %>
    <%@page import ="java.util.List" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <!--<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">-->
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="shipdetails.css">

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
	    <div class="row" style="margin-top:30px;">
           
            <div class="col-lg-7" id="deliverto">
                <h3>
                    <div class="row">
                        Deliver to :
                    </div>
                   
                </h3>
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
  <%!public int extra=0; %>      
        </div>
        
        <div class="col-lg-4 col-md-4">
        
            
            <form  method="post" action="BillPayment" >
            
            
            
            <div class="row" style="margin-top:30px;">
            
                <input type="radio" name="dayselect" id="free" value="free" required>
                <label for="free">Free delivery(4-5 days)</label>
            </div>
            <div class="row" style="margin-top:30px;">
            
                <input type="radio" name="dayselect" id="next" value="next" required>
                <label for="next" >Next day delivery(Charge of Rs 70)</label>
            </div>
            <div class="row"style="margin-top:30px;">
                <input type="radio" name="dayselect" id="same" value="same" required>
                <label for="same">Same day delivery(Charge of Rs120)<br><sub>*Order to be given before 2 p.m.</sub></label>
            </div>
                
                
                
        </div>
    </div>
                 <div class="row" style="margin-top:30px;">
                     <div class="col-md-7">
                         
                        <div class="row">
                            <h3>
                              Shipped Items
                            </h3>
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
			
  
             
 
              <div class="row" style="margin-bottom:7px;">
               <div class="col-md-2" style="margin-right:10px;">
                 <img src="<%=plist.getProduct_url() %>" height="220" width="120" >
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

              <div class="panel panel-default" style="margin-top:15px;">
                  <div class="panel-heading">
                      
                      Price Summary
                      </div>
                  <div class="panel-body" >

                      <div class="row" padding:10px;>
                          <center>Subtotal&nbsp;(<%=count%>&nbsp;item):Rs.<div id="price"> <%=price+extra%></div> </center>
                          </div>
                      
                  <div class="row" style="margin-top:10px;">
                      <form action="BillPayment" method="get">
                  <center>
                       <input type="submit" class="btn btn-warning" value="Proceed to Checkout" name="ProceedAction">
                  </form>
                  </center>


</form>
                      </div>
                      <br> 
                      </div>
                  </div>
              
          </div>
                     
                </div>     
                 </div>
                 <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
        
        $('input:radio').change(
        	    function(){
        	    	var radioVal=$("input[type='radio']:checked").val();
        	    	var strNext="next";
        	    	var strSameDay="same";
        	    	
        	    	 if($.trim(radioVal)==strNext)
        	        	{        	    		
        	    		 <%extra=20;%>
        	    		 $('#price').html( <%=price+extra%>);        	    	
        	        	}
        	    	 else if($.trim(radioVal)==strSameDay)
        	    		 {
        	    		 <%extra=120;%>
        	    		 $('#price').html( <%=price+extra%>);
        	    		 }
        	    	 else
        	    		 {
        	    		 <%extra=0;%>
        	    		 $('#price').html( <%=price+extra%>);
        	    		 }
        	    	 
        	    	 
        	    }
        	);          

       
        });
   
    </script>
</body>
</html>