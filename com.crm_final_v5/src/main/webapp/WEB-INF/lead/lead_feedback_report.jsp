
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
					<h1>All Lead Feedback List</h1>
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
								<b>Lead Feedback List</b>
							</h2>
							<div style="text-align: right;">
								<a href="/marketing/showcampavgrating"><button type="submit"
										class="btn btn-info">Campaign Rating Avg </button></a>

								<a href="/marketing/showproavgrating"><button type="submit"
										class="btn btn-info ">Product Rating Avg </button></a>

						
								<a href="/marketing/create"><button type="submit"
										class="btn btn-primary ">Add Feedback</button></a>

							</div>

						</div>
					</div>


					<!-- /.card-header -->
					<div class="card-body">


						<table id="myTable" class="table table-bordered table-striped">
							<thead align="center" style="color: white;"
								Black"" bgcolor=" #04AA6D">
								<tr>
									<!--   <th scope="col">Check</th> -->
									<th scope="col">ID</th>
									<th scope="col">Feedback Type</th>
									<th scope="col">Selected Name</th>
									<th scope="col">Rating</th>
									<th scope="col">Description</th>
									<th scope="col">Lead Name</th>
									<th scope="col">Lead Email</th>
									
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${lead_feedback}" var="lead">
									<tr>
										<!-- <td><input type="checkbox" /></td> -->

										<td>${lead.id}</td>
										<td>${lead.feedbackType}</td>
										<td>${lead.selectedName}</td>
										<td>${lead.rating}</td>
										<td>${lead.description}</td>
										<td>${lead.leadFirstName}   ${lead.leadLastName}</td>
										<td>${lead.leadEmail}</td>
										
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


<jsp:include page="/WEB-INF/common/footer.jsp" />
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script>
<script>
	$('#myTable').DataTable();
</script>
