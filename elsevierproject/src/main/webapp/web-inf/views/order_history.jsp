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

    <div class="callout large">
      <div class="row column text-center">
        
        <h3>You have logged in as <%=c.getFirstName() %></h3>
       </div>
      </div>

<!-- Beginning of indexedDB order history -->

<script type = "text/javascript">
         
         //prefixes of implementation that we want to test
         window.indexedDB = window.indexedDB || window.mozIndexedDB || 
         window.webkitIndexedDB || window.msIndexedDB;
         
         //prefixes of window.IDB objects
         window.IDBTransaction = window.IDBTransaction || 
         window.webkitIDBTransaction || window.msIDBTransaction;
         window.IDBKeyRange = window.IDBKeyRange || window.webkitIDBKeyRange || 
         window.msIDBKeyRange
         
         if (!window.indexedDB) {
            window.alert("Your browser doesn't support a stable version of IndexedDB.")
         }
         
         const bookData = [
            { book_id: "1", title: "Gangsta Granny"},
            { book_id: "2", title: "Muddle Earth"}
         ];
         var db;
         var request = window.indexedDB.open("orderHistory", 1);
         
         request.onerror = function(event) {
            console.log("error: ");
         };
         
         request.onsuccess = function(event) {
            db = request.result;
            console.log("success: "+ db);
         };
         </script>
         
         <script type = "text/javascript">
         request.onupgradeneeded = function(event) {
            var db = event.target.result;
            var objectStore = db.createObjectStore("book", {keyPath: "book_id"});
            
            for (var i in bookData) {
               objectStore.add(bookData[i]);
            }
         }
         
         function read() {
            var transaction = db.transaction(["book"]);
            var objectStore = transaction.objectStore("book");
            var request = objectStore.get("1");
            
            request.onerror = function(event) {
               alert("Unable to retrieve data from database!");
            };
            
            request.onsuccess = function(event) {
               // Do something with the request.result!
               if(request.result) {
                  alert("title: " + request.result.title);
               } else {
                  alert("Gansta Granny couldn't be found in your history!");
               }
            };
         }
         
         function readAll() {
            var objectStore = db.transaction("book").objectStore("book");
            
            objectStore.openCursor().onsuccess = function(event) {
               var cursor = event.target.result;
               
               if (cursor) {
                  alert("Name for id " + cursor.key + " is " + cursor.value.title);
                  cursor.continue();
               } 
               else {
                  alert("No more entries!");
               }
            };
         }
         
         function add() {
            var request = db.transaction(["book"], "readwrite")
            .objectStore("book")
            .add({ book_id: "3", title: "The Lord of the Rings Deluxe Edition"});
            
            request.onsuccess = function(event) {
               alert("The Lord of the Rings has been added to your order history.");
            };
            
            request.onerror = function(event) {
               alert("Unable to add The Lord of the Rings to your order history");
            }
         }
         
         function remove() {
            var request = db.transaction(["book"], "readwrite")
            .objectStore("book")
            .delete("3");
            
            request.onsuccess = function(event) {
               alert("The Lord of the Rings has been removed from your database.");
            };
         }
      </script>
      
   </head>
   <!--<body>
      <button onclick = "read()">Read </button>
      <button onclick = "readAll()">Read all </button>
      <button onclick = "add()">Add data </button>
      <button onclick = "remove()">Delete data </button>
   </body> -->


<!--  End of indeedDB order history -->
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
