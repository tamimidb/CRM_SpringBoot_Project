<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Create Product</h1>
        <form action="/updateProduct" method="POST">
         ID<input type="text" name="name" value="${id}"/><br/>
            Name<input type="text" name="name" value="${name}"/><br/>
            Product Description<input type="text" name="name" value="${description}"/><br/>
            Product Quantity<input type="text" name="qty" value="${quantity}"/><br/>
       
            <input type="submit" value="Update" />
            <button type="submit" class="btn btn-primary">Update Product</button>&nbsp;&nbsp;
			<button class="btn btn-info text-white" href="/product" >Back</button>
        </form>
    </body>
</html>