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
    
   


<<!-- Start Top Bar -->
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
       	<li><a href="/viewCart"><img src="images/cart.png" width="50" height="50"/></a>
       	
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
            <span class="show-for-sr">Current: </span> Cart Details
          </li>
        </ul>
      </nav>
    </div>

    <div class="row">
 
      <div class="medium-6 columns">
      
       <h2> Shipping Address </h2>
        
        <div class="row small-up-shiping">
        
          <div class="columns">
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
            <input type="text" name="email" pattern="[^ @]*@[^ @]*" id="email" size="30" required/>
          </div>
          
          
          <div class="column">
            <input type="checkbox" name="same" id="same" required/> My billing and shipping address are the same
          </div>
          
        </div>
        
        <div class="row small-up-4">
          
          <div class="column">
           
          </div>
        
        </div>
        
        <hr>
      
      </div>
      <div class="medium-6 large-5 columns">
      
      
        <!--  <div class="login_in_shipping">
    

        <div class="row">
          <div class="small-3 columns">
            <h4>Already have an account </h4>
            <p> Login to check out using your saved details </p>
            <label> Email * </label>
            <input type="text" name="email" placeholder="Enter your email ID" size="40"/>   
             <label> Password * </label>
            <input type="password" name="password" placeholder="Enter your password" size="40"/>   
           
           <input type="submit" id="login_submit" value="Login"/>
             
          </div>
          
           
       </div>
      
      </div> -->
      
           <h3>Already have an account </h3>
        <p> Please login using saved details</p>

        <div class="row">
        
          <div class="small-3 columnsee">
          
          <!--     Email *
             <input type="text" id="email" name="email" size="30"/> 
             
             Password *
             <input type="password" id="password" name="password" size="30"/>  -->
             <a href="/loginThroughCheckout?order_total=<%=orderTotal%>" class="button large expanded">Login</a>
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

		<form action="Thank_You.html" id="Thank_you.html">
		<input type="hidden" name="order_total" value="<%=orderTotal%>"/>   
       <!--   <input type="submit" class="button large expanded" value="Checkout"/>-->
            
        <script
          src="https://checkout.stripe.com/checkout.js" class="stripe-button"
          data-key="pk_test_TYooMQauvdEDq54NiTphI7jx"
          data-amount=<%=orderTotal *100%>
          data-name="clojjersbookstore.com"
          data-description="Cart Total"
          data-image="https://stripe.com/img/documentation/checkout/marketplace.png"
          data-locale="auto"
          data-zip-code="true">
       </script>
        <script>
        // Hide default stripe button, be careful there if you
        // have more than 1 button of that class
        document.getElementsByClassName("stripe-button-el")[0].style.display = 'none';
   		</script>
       	<input type="submit" class="stripe-button" style="background-color:rgb(60, 179, 113)"  value="Pay with card"/>
       
       </form> 
      </div> 
      
      
      <br>
      
        <%-- <h3>Order Summary </h3>
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
      
        </div> --%>

		  
		<%-- <input type="hidden" name="order_total" value="<%=orderTotal %>"/>   
        <input type="submit" class="button large expanded" value="Checkout"/> --%>
       
      </div>  
   
</div>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script src="js/update_cart.js"></script>
    <!-- need to multipl java orderTotal by 100 for data-amount--> 


    <script src="js/validations.js"></script>
    <script>
      $(document).foundation();
    </script> 
     <div class="form-group" id="credit_cards">
                <img src="/images/payment-logo.jpg" style="width:380px;height:256px; id="payment">

            </div>
   </form>
  </body>
</html>


    