<jsp:include page="/WEB-INF/common/header.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

	 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>LeadsTables</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Leads Tables</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>Lead Code</th>
                  <th>Lead Name</th>
                  <th>Email</th>
                  <th>Mobile</th>
                  <th>Address</th>
                  <th>Status</th>
                  <th>Assigned to</th>
				  <th>Action</th>
				  <th></th>
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
            
                
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
	
<jsp:include page="/WEB-INF/common/footer.jsp" />

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



</script> 