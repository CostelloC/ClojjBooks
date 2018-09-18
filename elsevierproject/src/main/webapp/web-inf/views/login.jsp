<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Online Shopping </title>
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    
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

    <div class="callout large">
      <div class="row column">
        
        
        <div class="medium-6">
           <h3> Please login using your stored credentials  </h3>
                
               <form action="loginProcess" method="post"> 
              
               <label>Email * </label>
                <input type="text" placeholder="Enter email" pattern="[^ @]*@[^ @]*"   name="email" id="email" required/> 
                <label>Password * </label>
				<input type="password" placeholder="Enter Password" name="password" id="password" required/>
            	<input type="submit" class="button expanded" value="Login">
              
              </form>
            </div>
      
      <div class="medium-6">
           
           <p> New Customer?  </p> <a href="/register" class="button large expanded">Register</a>
         
            </div>
      
       
      </div>
    </div>
    
   
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>


    