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
    
    <%!
    
      ArrayList<Book> books;
    
      Map<Integer,Integer> bookCounts;
    
      
    %>
    
    
    <%
    

    
    books  = (ArrayList<Book>) session.getAttribute("filtered_books");
    
    bookCounts = (Map<Integer,Integer>)  session.getAttribute("book_counts");
    
    double cartTotal = 0.0;
    
    double orderTotal = 0.0;
    
    double totalPrice =  0.0;
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
      <% 
     
      
      /* for(Book book : books)
      {
    	  
    	  int quantity = bookCounts.get(book.getBookId());
    	  double price = book.getPrice();
    	  totalPrice = book.getPrice() * quantity;
    	  cartTotal = cartTotal + book.getPrice()*quantity;
    	  System.out.println("Cart Total "+cartTotal);
    	  
      } */
      
      
      int i = 0;
      for(Book book : books)
      {
    	  
    	  int quantity = bookCounts.get(book.getBookId());
    	  double price = book.getPrice();
    	  totalPrice = book.getPrice() * quantity;
    	  cartTotal = cartTotal + book.getPrice()*quantity;
    	  System.out.println("Cart Total "+cartTotal);
    	  
      %>
       
        <img class="thumbnail" src="<%=book.getBookImage()%>"/>
        <div class="row small-up-4">
        
          <div class="column">
            eBook ISBN : <%=book.geteBookISBN()%>
          </div>
          <div class="column">
            Print book ISBN <%=book.getPaperISBN()%>
          </div>
          
          <div class="column">
           
          </div>
          <div class="column">
            Published On <%=book.getPublishedDate()%>
          </div>
          <div class="column">
            <form name="f1">
            	<input type="hidden" name="price" value="<%=price%>"/>
            	<input type="hidden" name="cart_total" value="<%=cartTotal%>"/>
            	Price <label id="price_label<%=i%>">$<%=totalPrice%></label>
            	<input type="hidden" name="cart_total" value="<%=price%>"/>
            	Quantity <input type="number"  min="1" name="quantity" value="<%=quantity%>" oninput="calculateTotalPrice(price.value,this.value,price_label<%=i%>)"/>
            </form>
          </div>
          
         
        </div>
        
        <div class="row small-up-4">
          
          <div class="column">
            <a href="/removeFromCart?bookId=<%=book.getBookId() %>"> Remove </a>
          </div>
        
        </div>
        
        <hr>
      <%
      i++;
      }
      %>
     
      </div>
      <div class="medium-6 large-5 columns">
        <h3>Order Summary </h3>
        <p> </p>

        <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Cart Total</label>
          </div>
          <div class="small-3 columns">
             <input type="hidden" name="order_total" id="cart_total" value="<%=cartTotal %>"/> 
            <label for="middle-label" class="middle" id="cart_total_label">$<%=cartTotal %></label>
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
            <input type="hidden" name="order_total" id="order_total" value="<%=cartTotal %>"/> 
            <label for="middle-label" class="middle" id="order_total_label">$<%=cartTotal%></label>
           </div>
      
        </div>

		<form action="/checkout" method="post" id="checkout_form">   
		<input type="hidden" name="order_total" value="<%=cartTotal %>"/>   
        <input type="submit" class="button large expanded" value="Proceed to Checkout"/>
        </form> 
      </div>  
 </div>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script src="js/update_cart.js"></script>
     <script src="js/validation.js"></script>
    <script>
      $(document).foundation();
    </script> 
  </body>
</html>


    