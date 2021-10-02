
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/common/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/dt/dt-1.10.25/datatables.min.css" />


<div class="container-fluid">
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>All Product List</h1>
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
						
						</div>
						<!-- /.card -->

						<div class="card">
							<div class="card-header">
								<h2 class="card-title">
									<b>Product List</b>
								</h2>
								<div style="text-align: right;">
									<a href="/product/create"><button type="submit"
											class="btn btn-primary ">Add Product</button></a>

								</div>

							</div>
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
											Total Contact :
											<lebel id="" value="fn.rowCount"> </lebel>
											<br>

										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!-- /.card-header -->
						<div class="card-body">

							<table id="example1" class="table table-bordered table-striped">
								<thead align="center" style="color: white;"
								Black"" bgcolor=" #04AA6D">
									<tr>
										<th>Product Code</th>
										<th>Parent Product</th>
										<th>Product Name</th>
										<th>Stock</th>
										<th>Rate</th>
										<th>MRP</th>
										<th>Cost Price</th>
										<th>Case Size</th>
										<th>Weight Per Product</th>
										<th>Description</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach items="${Product}" var="p">
										<tr>
											<td>${p.productCode}</td>
											<td>${p.parentProduct}</td>
											<td>${p.productName}</td>
											<td>${p.stock}</td>
											<td>${p.rate}</td>
											<td>${p.mrp}</td>
											<td>${p.costPrice}</td>
											<td>${p.caseSize}</td>
											<td>${p.weightPerPieces}</td>
											<%-- 	<td>${p.priceOfProduct}</td> --%>
											<td>${p.description}</td>
											<td><button class="btn btn-primary">Feedback</button></td>

											<%-- 
											<td><a href="/product/edit/${p.id}">Edit</a></td>
											<td><a href="/product/delete/${p.id}">Delete</a></td> --%>
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
</div>
</div>


<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<!-- 	<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.25/datatables.min.js"></script>
	 -->
<script>
	$(document).ready(function() {
		$('#example1').DataTable({
			"paging" : false,
			"ordering" : false,
			"info" : false
		});
	});
</script>


<script>
	$(document).ready(function() {
		$("#myBtn").click(function() {
			$("#myModal").modal();
		});
	});
	$.fn.rowCount = function() {
		return $('tr', $(this).find('tbody')).length;
		document.getElementById("print").innerHTML = rowCount;

	};
</script>

<script>
	$(document).ready(function() {
		$("button").click(function() {
			var rowCount = $("#example1 tr").length;
			document.getElementById("print").innerHTML = rowCount;
		});

	});
