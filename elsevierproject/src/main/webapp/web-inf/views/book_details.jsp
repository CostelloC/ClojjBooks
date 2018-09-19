<!doctype html>
<%@page import="com.qa.models.Book"%>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Foundation | Welcome</title>
    <link rel="stylesheet" href="css/style.css">
    
    
    
    
    
  </head>
  <body>
    
    <%!
    
      Book book;
    
    
    
    
    %>
    
    
    <%
    
     book = (Book) request.getAttribute("book");
    
    
    
    
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
            <span class="show-for-sr">Current: </span> Book Details
          </li>
        </ul>
      </nav>
    </div>

    <div class="row">
      <div class="medium-6 columns">
        <img class="thumbnail" src="<%=book.getBookImage()%>"/>
        <div class="row small-up-4">
          <div class="column">
            eBook ISBN : <%=book.geteBookISBN()%>
          </div>
          <div class="column">
            Print book ISBN <%=book.getPaperISBN()%>
          </div>
          <div class="column">
           Price :       $<%=book.getPrice()%>
          </div>
          <div class="column">
            Published On <%=book.getPublishedDate()%>
          </div>
        
        </div>
      </div>
      <div class="medium-6 large-5 columns">
        <h3><%=book.getTitle() %></h3>
        <p><%=book.getDescription() %></p>

        <label>Select the format
        <select required>
          <option value="" disabled selected>-- Select --</option>
          <option value="<%=book.getPaperISBN()%>">Paperback</option>
          <option value="<%=book.geteBookISBN()%>">eBook</option>
          <option value="printAndeBook">PrintBook and eBook</option>
        </select>
        </label>
        

        <a href="/addToCart?bookId=<%=book.getBookId()%>" class="button large expanded">Add to Cart</a>

        <div class="small secondary expanded button-group">
            <a class="button">Facebook</a>
            <a class="button">Twitter</a>
            <a class="button">Yo</a>
          </div>
        </div>
    </div>

    <div class="column row">
      <hr>
      <ul class="tabs" data-tabs id="example-tabs">
        <li class="tabs-title is-active"><a href="#panel1" aria-selected="true">Reviews</a></li>
        <li class="tabs-title"><a href="#panel2">Similar Products</a></li>
      </ul>
      <div class="tabs-content" data-tabs-content="example-tabs">
        <div class="tabs-panel is-active" id="panel1">
          <h4>Reviews</h4>
          <div class="media-object stack-for-small">
            <div class="media-object-section">
              <img class="thumbnail" src="http://placehold.it/200x200">
            </div>
            <div class="media-object-section">
              <h5>Mike Stevenson</h5>
              <p>I'm going to improvise. Listen, there's something you should know about me... about inception. An idea is like a virus, resilient, highly contagious. The smallest seed of an idea can grow. It can grow to define or destroy you.</p>
            </div>
          </div>
          <div class="media-object stack-for-small">
            <div class="media-object-section">
              <img class="thumbnail" src="http://placehold.it/200x200">
            </div>
            <div class="media-object-section">
              <h5>Mike Stevenson</h5>
              <p>I'm going to improvise. Listen, there's something you should know about me... about inception. An idea is like a virus, resilient, highly contagious. The smallest seed of an idea can grow. It can grow to define or destroy you</p>
            </div>
          </div>
          <div class="media-object stack-for-small">
            <div class="media-object-section">
              <img class="thumbnail" src="http://placehold.it/200x200">
            </div>
            <div class="media-object-section">
              <h5>Mike Stevenson</h5>
              <p>I'm going to improvise. Listen, there's something you should know about me... about inception. An idea is like a virus, resilient, highly contagious. The smallest seed of an idea can grow. It can grow to define or destroy you</p>
            </div>
          </div>
          <label>
            My Review
            <textarea placeholder="None"></textarea>
          </label>
          <button class="button">Submit Review</button>
        </div>
        <div class="tabs-panel" id="panel2">
          <div class="row medium-up-3 large-up-5">
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/350x200">
              <h5>Other Product <small>$22</small></h5>
              <p>In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam.</p>
              <a href="#" class="button hollow tiny expanded">Buy Now</a>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/350x200">
              <h5>Other Product <small>$22</small></h5>
              <p>In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam.</p>
              <a href="#" class="button hollow tiny expanded">Buy Now</a>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/350x200">
              <h5>Other Product <small>$22</small></h5>
              <p>In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam.</p>
              <a href="#" class="button hollow tiny expanded">Buy Now</a>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/350x200">
              <h5>Other Product <small>$22</small></h5>
              <p>In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam.</p>
              <a href="#" class="button hollow tiny expanded">Buy Now</a>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/350x200">
              <h5>Other Product <small>$22</small></h5>
              <p>In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam.</p>
              <a href="#" class="button hollow tiny expanded">Buy Now</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="row column">
      <hr>
      <ul class="menu">
        <li>Online Shopping</li>
        <li><a href="/">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
        <li class="float-right">Copyright 2017</li>
      </ul>
    </div>


 
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script>
      $(document).foundation();
    </script> 
  </body>
</html>


    