<jsp:include page="/WEB-INF/common/header.jsp" />
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

	 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
 
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Leads Tables</li>
            </ol>
          </div>
       
     
<button class="btn btn-primary" id="btnShow">Show All</button>

              <table id="example" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>Lead Code</th>
                  <th>Lead Name</th>
                  <th>Company</th>
                  <th>Birth Day</th>
                  <th>Gender</th>
                  <th>Email</th>
                  <th>Mobile</th>
                  <th>Address</th>
                  <th>Lead Source</th>
                  <th>Contact Date</th>
                  <th>Assigned to</th>
				  <th>Status</th>
				  <th>Action</th>
                </tr>
                </thead>
                <tbody>
			 <c:forEach items="${leads}" var="p">
                <tr>
                  
                    <td>${p.lead_code}</td>
                    <td>${p.lead_name}</td>
                    <td>${p.company}</td>
                    <td>${p.rating}</td>
                    <td>${p.birth_day}</td>
                    <td>${p.gender}</td>
                    <td>${p.email}</td>
                   <td>${p.phone}</td>
                   <td>${p.address}</td>
                   <td>${p.lead_source}</td>
                   <td>${p.contact_date}</td>
                   <td>${p.assign_to}</td>
                   <td>${p.status}</td>
                 
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
      
	
<jsp:include page="/WEB-INF/common/footer.jsp" />

<!-- <script>


<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js" ></script>
	<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.25/datatables.min.js"></script>

<script>
$(document).ready(function() {
$('#example').DataTable( {
    "paging":   false,
    "ordering": false,
    "info":     false
} );
} );
</script> -->

<!-- 
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

 -->
<%-- $("#btnShow").on("click", function(){
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
 --%>

<!-- 
</script> --> 