<!doctype html>
<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.qa.models.Book"%>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Shopping Cart | Week 3</title>
    <link rel="stylesheet" href="css/style.css">
    
    
  </head>
  <body>
    
    <form action="/checkoutProcess" method="post">
    
    
    <%
    
    double orderTotal = (Double) request.getAttribute("order_total");
    
   
    %>
    
   

<!-- Start Top Bar -->
    <div class="top-bar">
      <div class="top-bar-left">
        <ul class="menu">
          <li> <img src="images/Picture1.png" width="250" height="250"> </li>
          <li><a href="/">Home</a></li>
          <li><a href= "/about_us.html">About</a></li>
          <li><a href= "Contact_us.html"> Contact Us</a></li>
          <li> <input type = "text" placeholder = "Search for a book..."></li>
          
        </ul>
      </div>
      <div class="top-bar-right">
       	<ul class="menu">
       	<li><a href="/viewCart"><img src="images/cart.jpg" width="50" height="50"/></a>
       	
       	</ul>
             <ul class="dropdown menu" data-dropdown-menu>
            
            <li class="has-submenu">
              <a href="/login.jsp">Login/Register</a>
              <ul class="submenu menu vertical" data-submenu>
                <li><a href="/login">Login</a></li>  
                <li><a href="/register">Register</a></li>
              </ul>
            </li>
          
          </ul>
          
      </div>
    </div>
    <!-- End Top Bar -->
    <br>
    <!-- You can now combine a row and column if you just need a 12 column row -->
    <div class="row columns">
      <nav aria-label="You are here:" role="navigation">
        <ul class="breadcrumbs">
         
          <li><a href="/">Home</a></li>
          <li>
            <span class="show-for-sr">Current: </span> Payment Details
          </li>
        </ul>
      </nav>
    </div>

   <!--  <div class="row">  -->
 
      <div class="medium-6 columns">
      
       <h2> Payment Details  </h2>
        
        <div class="row small-up-shiping">
        
        <div class="creditCardForm">
    <div class="heading">
 
    </div>
    <div class="payment">
     
            <div class="form-group owner">
                <label for="owner">Owner</label>
                <input type="text" class="form-control" id="owner">
            </div>
            <div class="form-group CVV">
                <label for="cvv">CVV</label>
                <input type="text" class="form-control" id="cvv">
            </div>
            <div class="form-group" id="card-number-field">
                <label for="cardNumber">Card Number</label>
                <input type="text" class="form-control" id="cardNumber">
            </div>
            <div class="form-group" id="expiration-date">
                <label>Expiration Date</label>
                <select>
                    <option value="01">January</option>
                    <option value="02">February </option>
                    <option value="03">March</option>
                    <option value="04">April</option>
                    <option value="05">May</option>
                    <option value="06">June</option>
                    <option value="07">July</option>
                    <option value="08">August</option>
                    <option value="09">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
                <select>
                    
                    <option value="18"> 2018</option>
                    <option value="19"> 2019</option>
                    <option value="20"> 2020</option>
                    <option value="21"> 2021</option>
                    <option value="22"> 2022</option>
                    <option value="23"> 2023</option>
                </select>
            </div>
            <div class="form-group" id="credit_cards">
             <!--   <img src="images/visa.png" id="visa"> -->
                <img src="/images/payment-logo.jpg" id="mastercard">
           <!--     <img src="assets/images/amex.jpg" id="amex"> -->
            </div>
            <div class="form-group" id="pay-now">
                 <input type="submit" class="button expanded" value="Submit"/>   </div>
      
    </div>
</div>
        
        
        
        
          <!--   %>div class="columns">
            <label> Firstname * </label>
            <input type="text" name="firstName" id="firstName" size="30" required/> 
          </div>
          <div class="columns">
             <label> Lastname * </label>
            <input type="text" name="lastName" id="lastName" size="30" required/>
          </div>
          
          <div class="column">
           <label> Address 1 * </label>
            <input type="text" name="addressLine1" id="addressLine1" size="30" required/>
          </div>
          <div class="column">
            <label> Address 2 * </label>
            <input type="text" name="addressLine2" id="addressLine2" size="30" required/>
          </div>
          <div class="column">
            <label> City * </label>
            <input type="text" name="city" id="city" size="30" required/>
          </div>
          
       <div class="column">
            <label> Postcode / Zip code * </label>
            <input type="text" name="postcode" id="postcode" size="30" required/>
          </div>
          
          <div class="column">
            <label> State/Province * </label>
            <input type="text" name="state" id="state" size="30" required/>
          </div>
          
   <div class="column">
            <label> Country</label>
            <input type="text" name="country" id="country" size="30"/>
          </div>
          
           <div class="column">
            <label> Phone Number</label>
            <input type="text" name="phone" id="phone" size="30"/>
          </div>
          
          
           <div class="column">
            <label> Email * </label>
            <input type="text" name="email" pattern="[^ @]*@[^ @]*" id="email" size="30"/>
          </div>
          
          
          <div class="column">
            <input type="checkbox" name="same" id="same"/> My billing and shipping address are the same
          </div>
          
        </div>-->
        
        <div class="row small-up-4">
          
          <div class="column">
           
          </div>
        
        </div>
        
        <hr>
      
      </div>
       <div class="row small-up-4">
          
          <div class="column">
           
      <div class="medium-1 large-4 columns">
        <h3>Order Summary </h3>
        <p> </p>

        <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Cart Total</label>
          </div>
          <div class="small-3 columns">
             
            <label for="middle-label" class="middle" id="cart_total_label">$<%=orderTotal %></label>
           </div>
           
       </div>



          <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">VAT </label>
          </div>
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Applicable Tax </label>
           </div>
           
        </div>
    
        <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Order Total  </label>
          </div>
          <div class="small-3 columns">
          
            <label for="middle-label" class="middle" id="order_total_label">$<%=orderTotal%></label>
           </div>
      
        </div>
</div>
</div>
		  
		<input type="hidden" name="order_total" value="<%=orderTotal %>"/>   
       
      </div>  
   
 </div>
    <script src="js/platform.js"></script>
    <script>
      $(document).foundation();
    </script> 
    
   </form>
  </body>
</html>


    