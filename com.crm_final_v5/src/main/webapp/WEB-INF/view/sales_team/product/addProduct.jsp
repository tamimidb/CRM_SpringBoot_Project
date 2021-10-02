<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<head>

	<title>Add Product</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="container fw-bold"><br><br>

	<div class="text-center text-success"><h2>Add New Product</h2></div>

	<form action="/saveproduct"  method="POST">
		
			<label for="name" class="form-label">Product Name :</label>
			<input type="text" class="form-control" name="name" id="name" />
		
	
		
			<label for="desc" class="form-label">Product Description :</label>
			<input type="text" class="form-control"  name="description" id="desc" />
	
	
	
			<label for="qty" class="form-label">Product Quantity :</label>
			<input type="number" class="form-control"  name="quantity" id="qty" /><br>
		
			<button type="submit" class="btn btn-success">Save Product</button>&nbsp;&nbsp;
			<button class="btn btn-info text-white" href="/product" >Back</button>&nbsp;&nbsp;
			<button type="reset" class="btn btn-secondary">Reset</button>
	</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>