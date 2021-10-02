
<!-- header-->
<jsp:include page="/WEB-INF/common/header.jsp" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 >All Contact List</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">DataTables</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="card">

						<!-- /.card-body -->
					</div>
					<!-- /.card -->

					<div class="card">
						<div class="card-header">
							<h2 class="card-title">
								<b>Contact List</b>
							</h2>
							<div style="text-align: right;">
								<a href="/marketing/contactcreate"><button type="submit"
										class="btn btn-primary ">Add Contact</button></a>

							</div>

						</div>


						<!-- /.card-header -->
						<div class="card-body">
							<div style="text-align: center;">
								<button type="button" class="btn btn-info btn-lg" id="myBtn">Contact
									Report</button>

								<!-- Modal -->
								<div class="modal fade" id="myModal" role="dialog">
									<div class="modal-dialog">

										<!-- Modal content-->
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
												<h4 class="modal-title ">Contact Summary</h4>
											</div>
											<div class="modal-body">
												Total Contact : <lebel id ="" value="fn.rowCount">
												</lebel><br>
											
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">Close</button>
											</div>
										</div>

									</div>
								</div>

							</div>

							<table id="example1" class="table table-bordered table-fixed">
								<thead align="center" style="color: white; bordercolor="Black"" bgcolor=" #04AA6D"
									>
									<tr>
										<th>Contact Code</th>
										<th>Contact Name</th>
										<th>Account Name</th>
										<th>Email</th>
										<th>Phone</th>
										<th>Company</th>

									</tr>
								</thead>
								<tbody class="fn">

									<c:forEach items="${ContactsModel}" var="c">
										<tr>
											<td>${c.contactCode}</td>
											<td>${c.contactName}</td>
											<td>${c.accountName}</td>
											<td>${c.email}</td>
											<td>${c.phone}</td>
											<td>${c.company}</td>

										</tr>
									</c:forEach>
								</tbody>

							</table>






						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</section>
	<button type="button">Get Number of Rows</button>
	<div id= "print">
Hello
</div>
	
</div>






<jsp:include page="/WEB-INF/common/footer.jsp" />


<script>
	$(document).ready(function() {
		$("#myBtn").click(function() {
			$("#myModal").modal();
		});
	});
	$.fn.rowCount = function() {
	    return $('tr', $(this).find('tbody')).length;
	    document.getElementById("print").innerHTML =rowCount ;
	    
	};
</script>

<script>
    $(document).ready(function(){
        $("button").click(function(){
            var rowCount = $("#example1 tr").length;
            document.getElementById("print").innerHTML = rowCount ;
        });
        
    });
</script>