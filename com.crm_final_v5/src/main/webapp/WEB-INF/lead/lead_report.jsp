
<!-- header-->
<jsp:include page="/WEB-INF/common/header.jsp" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>All Lead List</h1>
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
						<!--   <div class="card-header">
                <h3 class="card-title">DataTable with minimal features & hover style</h3>
              </div> -->
						<!-- /.card-header -->

						<!-- /.card-body -->
					</div>
					<!-- /.card -->

					<div class="card">
						<div class="card-header">
							<h2 class="card-title">
								<b>Lead List</b>
							</h2>
							<div style="text-align: right;">
								<a href="/lead/leadcreate"><button type="submit"
										class="btn btn-primary ">Add Lead</button></a>

							</div>

						</div>

					</div>


					<!-- /.card-header -->
					<div class="card-body">


						<table id="myTable" class="table table-bordered table-striped">
							<thead align="center" style="color: white;"
								Black"" bgcolor=" #04AA6D">
								<tr>
								 <th scope="col">Lead Code</th>
									<!--   <th scope="col">Check</th> -->
									<th scope="col">Lead Name</th>

									<th scope="col">Job Title</th>
									<th scope="col">Lead Source</th>
									<th scope="col">Lead Status</th>
									<th scope="col">Annual Revenue</th>
									<th scope="col">Rating</th>
									<th scope="col">Email</th>
									<th scope="col">Mobile</th>
									<th scope="col">Website</th>
									<th scope="col">Address</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${Lead}" var="lead">
									<tr>
						
										<td>${lead.leadCode}</td>
										<td>${lead.leadFirstName} ${lead.leadLastName}</td>
										<td>${lead.jobTitle}</td>
										<td>${lead.leadSource}</td>
										<td>${lead.leadStatus}</td>
										<td>${lead.leadCompanyAnnualRevenue}</td>
										<td>${lead.leadRating}</td>
										<td>${lead.leadEmail}</td>
										<td>${lead.leadMobile}</td>
										<td>${lead.leadWebsite}</td>
										<td>${lead.leadCity},${lead.leadCountry}</td>
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
		<!-- /.container-fluid -->
	</section>
</div>


<jsp:include page="/WEB-INF/common/footer.jsp" />
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script>
<script>
	$('#myTable').DataTable();
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
</script>
