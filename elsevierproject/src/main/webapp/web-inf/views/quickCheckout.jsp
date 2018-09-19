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
<h1 style="text-align:center">QUICK BUY</h1>
	<%!
    
      Book book;
    
    
    
    
    %>


	<%
    
     book = (Book) request.getAttribute("book");
    
    
    
    
    %>



	
	


	<div class="row">
		<div class="medium-6 columns">
			<img class="thumbnail" src="<%=book.getBookImage()%>" />
			<div class="row small-up-4">
				
				

			</div>
		</div>
		<div class="medium-6 large-5 columns">
			<h3><%=book.getTitle() %></h3>
			<p><%=book.getDescription() %></p>
			
				<div class="column">
					Price : $<%=book.getPrice()%>
				</div>
			<label>Select the format <select required>
					<option value="" disabled selected>-- Select --</option>
					<option value="<%=book.getPaperISBN()%>">Paperback</option>
					<option value="<%=book.geteBookISBN()%>">eBook</option>
					<option value="printAndeBook">PrintBook and eBook</option>
			</select>
			</label> <a href="/addToCart?bookId=<%=book.getBookId()%>"
				class="button large expanded">Add to Cart</a>

			
		</div>
	</div>




	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script src="js/elsevier.js"></script>
	<script>
      $(document).foundation();
    </script>
</body>
</html>


