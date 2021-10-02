<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/common/header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.css">
<link rel="stylesheet"
	href="resources/assets/css/bottom-header/style.css">
<link rel="stylesheet" href="resources/assets/css/activities/style.css">
<link rel="stylesheet"
	href="resources/assets/css/report/businessReport.css">

<title>Activities Report</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style>
#ne {
	display: none;
	margin-top: 2px;
	margin-left: 23px;
}
</style>
</head>
<body>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>All Activities List</h1>
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




		<!-- Content Header (Page header) -->
		<section class="content-header ">

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
										<b>Activities List</b>
									</h2>
									<div style="text-align: right;">
										<a href="/task/activitiesCreate"><button type="submit"
												class="btn btn-primary ">Create Activities</button></a>

									</div>

								</div>
							</div>
							<!-- /.card-header -->

						</div>
						<div>
							<button class="bottom__header__button__save" id="ne">Done</button>
						</div>
						<div class="bottom__header__center" >
							<button class="bottom__header__button__save btn btn-primary">Call</button>
							<button class="bottom__header__button__saveAndNew btn btn-info">Meeting</button>
							<a href="/task/activitiesCreate"><button
									class="bottom__header__button__cancel btn btn-primary">Task</button></a>
						</div>
					</div>


					<!-- /.card-header -->
					<div class="card-body">
						<div class="activities-report-card">
							<div class="activities">
								<table class="table table-bordered table-striped" id="myTable">
									<thead align="center" style="color: white;"
										Black"" bgcolor=" #04AA6D">
										<tr>
											<th scope="col">Lead Name</th>
											<th scope="col">Activity Type</th>
											<th scope="col">Issue Name</th>
											<th scope="col">Subject</th>

											<th scope="col">Due Date</th>

											<th scope="col">Status</th>
											<th scope="col">Priority</th>
											<th scope="col">Description</th>
											<th scope="col">Action</th>
											<!--<th>Action</th>-->

										</tr>
									</thead>
									<tbody>
										<c:forEach items="${Activities}" var="task">
											<tr>
												<td>${task.leadName}</td>
												<td>${task.type}</td>
												<td>${task.isueeName}</td>
												<td><a href="activity-details" class="activity-type"
													style="text-decoration: none;">${task.activitiesSubject}</a></td>
												<td>${task.activitiesDueDate}</td>
												<td id="test1" font-weight:bold;">${task.activitiesStatus}</td>
												<td>${task.activitiesPriority}</td>
												<td>${task.activitiesDescription}</td>
												<td><button id="btn1" class="btn btn-success">Complete</button></td>

												<%-- 	<td><c:if test="${task.activitiesStatus == 'Done'}">
														<label>Task Completed</label>
														<input type="hidden" value="${task.activitiesStatus}"
															class="task-status" />
													</c:if> <c:if test="${task.activitiesStatus != 'Done'}">
														<button type="button" onclick="changeAction(this)">Change</button>
														<input type="hidden" value="${task.activitiesStatus}"
															class="task-status" />
														<input type="hidden" value="${task.id}" class="task-id" />
													</c:if></td> --%>


											</tr>




										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
	</div>

</body>
</html>
<jsp:include page="/WEB-INF/common/footer.jsp" />


<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script>

<script>
	$(document).ready(function() {
		$("#btn1").click(function() {
			$("#test1").text("Completed");
		});
	});
	$('#myTable').DataTable();

	/* function changeAction(el) {
	 var activitiesStatus = $(el).closest("tr").find(".task-status").val();
	 var taskID = $(el).closest("tr").find(".task-id").val();
	 //console.log(taskStatus)
	 $(el).closest("tr").find(".input-status").val("Done");
	 $(el).attr("disabled", "disabled");

	 $.post("/taskupdate", {
	 id : taskID,
	 status : activitiesStatus
	 }, function(data, status) {
	 });
	 }  */
</script>