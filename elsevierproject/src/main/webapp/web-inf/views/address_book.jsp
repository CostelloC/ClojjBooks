<!doctype html>
<%@page import="com.qa.models.Customer"%>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Clojjers Bookstore </title>
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
  
  <%!
  
  Customer c;
  
  %>
  
  
  <%
 		c = (Customer) session.getAttribute("logged_in_customer");
  %>
    
     <!-- Start Top Bar -->
    <div class="top-bar">
      <div class="top-bar-left">
        <ul class="menu">
          <li> <img src="images/Picture1.png" width="250" height="250"> </li>
          <li><a href="/">Home</a></li>
          <li><a href= "/about_us.html">About</a></li>
          <li><a href= "Contact_us.html"> Contact Us</a></li>
          <!--  <div class="dropdown"> -->
<li><div class="dropdown">
<button onclick="myFunction()" class="menu">Search</button>
  <div id="myDropdown" class="dropdown-content">
    <input type="text" placeholder="Type title here.." id="myInput" onkeyup="filterFunction()"> 
	      <a href="/bookDetails?bookId=1">Gangsta Granny</a>
          <a href= "/bookDetails?bookId=2">Muddle Earth</a>
          <a href= "/bookDetails?bookId=3"> The Lord of the Rings Deluxe Edition</a>
        	<a href="/bookDetails?bookId=4">Harry Potter and the Philosopher's Stone</a>
		<a href="/bookDetails?bookId=5">The Phoenix Project</a>
		<a href="/bookDetails?bookId=6">The Communist Manifesto</a>
		<a href="/bookDetails?bookId=7">Charlie and the Chocolate Factory</a>
		<a href="/bookDetails?bookId=8">Of Mice and Men</a>
	</div></div></li>
	</ul>  		 
		
     
      </div>
  


<script>
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

function filterFunction() {
    var input, filter, ul, li, a, i;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    div = document.getElementById("myDropdown");
    a = div.getElementsByTagName("a");
    for (i = 0; i < a.length; i++) {
        if (a[i].innerHTML.toUpperCase().indexOf(filter) > -1) {
            a[i].style.display = "";
        } else {
            a[i].style.display = "none";
        }
    }
}
</script>

      <div class="top-bar-right">
       	<ul class="menu">
       	 <li><a href="/profile">Personal Details</a></li>
            <li><a href="/addressBook">Address Book</a></li>
            <li><a href="/password">Change Password </a></li>
            <li><a href="/orderHistory">Order History </a></li>
             <li><a href="/">Logout</a></li>
       	<li><a href="/viewCart"><img src="images/cart.png" width="50" height="50"/></a>
       	
       	</ul>
           
       
      </div>
    </div>
    
    <!-- End Top Bar -->
    
       
       <div class="row">
        
       
        <div class="large-6 columns">
           <h3> Billing Address </h3>
                
              <form action="/updateAddress" method="post">
               <label>Address Line1 * </label>
               <input type="text" placeholder="Enter AddressLine2" name="addressLine1" id="addressLine1"/> 
               <label>Address Line2 * </label>
               <input type="text" placeholder="Enter Address Line2" name="addressLine2" id="addressLine2"/> 
               <label>City * </label>
                <input type="text" placeholder="Enter City" name="city" id="city"/> 
                  <label>Postcode * </label>
                <input type="text" placeholder="Enter Postcode" name="postcode" id="postcode"/> 
                
                
                  <label>State/County * </label>
                <input type="text" placeholder="Enter State/County" name="state" id="state"/> 
                
                
                  <label>Country * </label>
                <input type="text" placeholder="Enter Country" name="country" id="county"/> 
                
                
                  <label>Phone Number * </label>
                <input type="text" placeholder="Enter Phone number" name="phoneNumber" id="phoneNumber"/> 
                
                 
                <input type="hidden" name="addressType" id="addressType" value="billing"/> 
                
                
                <input type="submit" class="button create account" value="Update Billing Address">
               </form>
            </div>
            
          
               <div class="medium-6 columns">
                <h3> Shipping Address </h3>
                
                <input type="checkbox" class="ba" checked="checked" /> Different from billing address
                
              <form action="/updateAddress" method="post">
               <label>Address Line1 * </label>
               <input type="text" placeholder="Enter AddressLine2" name="addressLine1" id="addressLine1" class="tex"/> 
               <label>Address Line2 * </label>
               <input type="text" placeholder="Enter Address Line2" name="addressLine2" id="addressLine2" class="tex"/> 
               <label>City * </label>
                <input type="text" placeholder="Enter City" name="city" id="city" class="tex"/> 
                  <label>Postcode * </label>
                <input type="text" placeholder="Enter Postcode" name="postcode" id="postcode" class="tex"/> 
                
                
                  <label>State/County * </label>
                <input type="text" placeholder="Enter State/County" name="state" id="state" class="tex"/> 
                
                
                  <label>Country * </label>
                <input type="text" placeholder="Enter Country" name="country" id="county" class="tex"/> 
                
                
                  <label>Phone Number * </label>
                <input type="text" placeholder="Enter Phone number" name="phoneNumber" id="phoneNumber" class="tex"/> 
                
                 
                <input type="hidden" name="addressType" id="addressType" value="shipping"/> 
                
                
                <input type="submit" class="button create account" value="Update Shipping Address">
               </form>
            </div>
             
     
      </div>
      
  
       
       
  <!--   </div> -->
    
    
         
       
    </div>
    
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier2.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>


    