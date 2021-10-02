<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<button class="btn btn-primary" id="btnShow" href="/product">Show All</button>
<table id="productTable" >
	<thead>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Quantity</th>
			<th>Price</th>
		</tr>
	</thead>
		<tbody>
			 <c:forEach items="${product}"  var="p">
                <tr>
                    <td>${p.id}</td>
                    <td>${p.name}</td>
                    <td>${p.description}</td>
                    <td>${p.quantity}</td>
                 
                    <td>
                        <a href="/editProduct/${p.id}">Edit</a>
                    </td>
                    <td>
                        <a href="/deleteProduct/${p.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
		</tbody>
</table>
<a class="btn btn-primary my-1" href="/addProductForm" >Add Product</a>
<a class="btn btn-primary my-1" href="/product" >Show All</a>
<br>
<!-- <button class="btn btn-danger" onclick="hideMe()">Hide</button>
<p id="myP">Hello world</p>
 -->

<!-- <form id="myForm">
	Name <input type="text" id="name" />
	Address <input type="text" id="address" />
	<button class="btn btn-primary" id="formSubmit">Submit</button>
</form>



<script>

$("#formSubmit").on("click", function(){
	$.ajax('/product/submit', {
	    type: 'POST',  // http method
	    data: $("#myForm").serialize(),
	    success: function (data, status) {
	    	
	        
	    }
	});
})






/* 
$("#myP").click(function(){
	console.log("hello");
}); */
$("#myP").on("click", function(){
	console.log("hello");
});


async function abc(){
	return 100;
}

console.log(abc() + 10);


$("#btnShow").on("click", function(){
	$.ajax('/product/view', {
	    type: 'GET',  // http method
	    success: function (data, status) {
	    	$("#productTable tbody").html("");
	    	var html = "";
			for(i=0; i<data.length; i++){
				html += "<tr>"
					 + "<td>"+data[i].id+"</td>"
					 + "<td>"+data[i].name+"</td>"
					 + "<td>"+data[i].quantity+"</td>"
					 + "<td>"+data[i].price+"</td>"
					 + "</tr>";
	    	}
			$("#productTable tbody").append(html);
	        
	    }
	});
})



</script> -->

<script type="text/javascript">
    $(document).ready(function() {
      var sum = $('#productTable').DataTable().column(6).data().sum();
      $('#mrp').html(sum);
    });
</script>