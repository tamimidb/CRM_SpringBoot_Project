
<!-- header-->
<jsp:include page="/WEB-INF/common/header.jsp" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="container-fluid">
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>All Campaign List</h1>
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
									<b>Campaign List</b>
								</h2>
								<div style="text-align: right;">
									<a href="/marketing/campaigncreate"><button type="submit"
											class="btn btn-primary ">Create Campaign</button></a>

								</div>

							</div>
						</div>
						<!-- /.card-header -->
						<div class="card-body">

							<table id="example1" class="table table-bordered table-striped">
								<thead align="center" style="color: white;"
								Black"" bgcolor=" #04AA6D">
									<tr>
										<th>Campaign Code</th>
										<th>Campaign Name</th>
										<th>Type</th>
										<th>Status</th>
										<th>Start Date</th>
										<th>End Date</th>
										<th>Campaign Owner</th>
										<th>Expected Revenue</th>
										<th>Budgeted Cost</th>
										<th>Actual Cost</th>
										<th>Expected Response</th>
										<th>Created Time</th>
										<th>Modified Time</th>
										<th>Parent Campaign</th>
										<th>Description</th>
										<!-- <th>Action</th> -->


									</tr>
								</thead>
								<tbody>

									<c:forEach items="${campaign}" var="c">
										<tr>
											<td>${c.campaignCode}</td>
											<td>${c.campaignName}</td>
											<td>${c.status}</td>
											<td>${c.type}</td>
											<td>${c.startDate}</td>
											<td>${c.endDate}</td>
											<td>${c.campaignOwner}</td>
											<td>${c.expectedRevenue}</td>
											<td>${c.budgetedCost}</td>
											<td>${c.actualCost}</td>
											<td>${c.expectedResponse}</td>
											<td>${c.createdBy}</td>

											<td>${c.modifiedBy}</td>
											<td>${c.createdTime}</td>
											<td>${c.parentCampaign}</td>
											<td>${c.description}</td>
										
											<td><a class="btn btn-block btn-primary "
												href="/employee/editSalary/${c.id}">Generate </a></td>
											<td><a class="btn btn-block btn-danger "
												href="/employee/delete/${c.id}">Delete</a></td>

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






<jsp:include page="/WEB-INF/common/footer.jsp" />