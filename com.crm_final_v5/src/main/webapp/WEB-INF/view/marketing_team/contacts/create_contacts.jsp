
<jsp:include page="/WEB-INF/common/header.jsp" />





<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper ">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Contact Form</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Contact Form</li>
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
				<!-- left column -->
				<div class="col-md-12">
					<!-- general form elements -->
					<div class="card card-primary">
						<!--    <div class="card-header">
                <h3 class="card-title">Quick Example</h3>
              </div> -->
						<!-- /.card-header -->
						<!-- form start -->
						<form action="/marketing/contactsave" method="POST">

							<!-- /.card -->

							<!-- Input addon -->

							<!-- general form elements disabled -->
							<div class="card card-warning">
								<div class="card-header">
									<h1 class="card-title">Contact Information</h1>

								</div>

								<div class="row" style="align-self: center;">

									<tr>
										<td><label for="contactCode" class="field-label">Contact
												Code</label></td>
										<td><input type="text" class="form-control"
											name="contactCode" /></td>
									</tr>

								</div>

								<div class="row" style="align-self: center;">
									<tr>
										<td><label for="contactName" class="field-label">Contact
												Name</label></td>
										<td><input type="text" class="form-control"
											name="contactName" /></td>
									</tr>

								</div>


								<div class="row" style="align-self: center;">
									<tr>
										<td><label for="accountName" class="field-label">Account
												Name</label></td>
										<td><input type="text" class="form-control"
											name="accountName" /></td>
									</tr>

								</div>
								
								<div class="row" style="align-self: center;">
									<tr>
										<td><label for="email" class="field-label">Email</label></td>
										<td><input type="text" class="form-control" name="email" /></td>
									</tr>

								</div>
								<div class="row" style="align-self: center;">
									<tr>
										<td><label for="phone" class="field-label">Phone</label></td>
										<td><input type="text" class="form-control" name="phone" /></td>
									</tr>

								</div>
								<div class="row" style="align-self: center;">
									<tr>
										<td><label for="company" class="field-label">Company</label></td>
										<td><input type="text" class="form-control"
											name="company" /></td>
									</tr>

								</div><br>



								<div class="row" style="align-self: center;">
									
										<button type="submit" value="Save"
											class="btn btn-block btn-success">Contact Save</button>
									
								</div>
							</div>
						</form>
					</div>
					<!-- /.card -->


				</div>
				<!-- /.card-body -->
			</div>
			<!-- /.card -->
		</div>
		<!--/.col (right) -->
</div>
<!-- /.row -->

<!-- /.content -->




<jsp:include page="/WEB-INF/common/footer.jsp" />