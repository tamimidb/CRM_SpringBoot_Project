<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/common/header.jsp" />



<body>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" >
			<div class="container-fluid">
				<div className="lead">
					<div class="bottom__header">
						<div class="bottom__header__left">
							<h4 class="bottom__header__title">Activities Report</h4>

						</div>
						
						<div class="bottom__header__right">
						<button class="bottom__header__button__save" id="ne">Done</button>
							<button class="bottom__header__button__save">Call</button>
							<button class="bottom__header__button__saveAndNew">Meeting</button>
							<a href="/task/taskcreate"><button
									class="bottom__header__button__cancel">Task</button></a>
						</div>
					</div>

					<div class="activities-report-card">
						<div class="activities">
							<table class="table table-bordered table-striped">
								<thead>
									<tr>
										<th scope="col">Lead Name</th>
										<th scope="col">Product Name</th>
										<th scope="col">Task Subject</th>
										<th scope="col">Due Date</th>
										<th scope="col">Related Person</th>
										<th scope="col">Status</th>
										<th scope="col">Priority</th>
										<th scope="col">Description</th>
										<th scope="col">Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${Task}" var="task">
										<tr>
											<td>${task.taskOwner}</td>
											<td>${task.productName}</td>
											<td>
												<button class="btn btn-info">${task.taskSubject}</button>
											</td>
											<td>${task.taskDueDate}</td>
											<td>${task.relatedPerson}</td>
											<td onclick="taskAction('${task.taskStatus}')">${task.taskStatus}</td>
											<td>${task.taskPriority}</td>
											<td>${task.taskDescription}</td>
											
											<td><a href="/task/edit/${task.id}"><input
													type="button" value="Edit" class="btn btn-info" /></a> <a
												href="/task/delete/${task.id}"><input type="button"
													value="Delete" class="btn btn-danger" /></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="/WEB-INF/common/footer.jsp" />