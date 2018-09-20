<!doctype html>
<%@page import="com.qa.models.Customer"%>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Clojjers Bookstore</title>
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
	<li>
       		 
         
        <a> <b>logged in as <%=c.getFirstName() %></b></a>
       
  
       	</li>
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
            <li><a href="/changePassword">Change Password </a></li>
            <li><a href="/orderHistory">Order History </a></li>
             <li><a href="/logout">Logout</a></li>
       	<li><a href="/viewCart"><img src="images/cart.png" width="50" height="50"/></a>
       	
       	</ul>
           
       
      </div>
    </div>
    
    <!-- End Top Bar -->

             
   


    
       
        <h1>SUCCESSFUL</h1>
    <h3> </h3>
    <h2> Your Address has been Updated!</h2>
    
       
       
       
    </div>
    
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>


    