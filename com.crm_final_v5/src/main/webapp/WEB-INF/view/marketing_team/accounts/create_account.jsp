
<jsp:include page="/WEB-INF/common/header.jsp" />





<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Account Form</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Account Form</li>
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
						<form action="/marketing/accountsave" method="POST">

							<!-- /.card -->

							<!-- Input addon -->

							<!-- general form elements disabled -->
							<div class="card card-warning">
								<div class="card-header">
									<h1 class="card-title">Account Information</h1>

								</div>
							
									<div class="row" style="align-self: center;">
										<tr>
											<td><label for="accountCode" class="field-label">Account
													Code</label></td>
											<td><input type="text" class="form-control"
												name="accountCode" /></td>
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
											<td><label for="parentAccount" class="field-label">
													Parent Account Name</label></td>
											<td><input type="text" class="form-control"
												name="parentAccount" /></td>
										</tr>
									</div>
									<div class="row" style="align-self: center;">
										<tr>
											<td><label for="accountNumber" class="field-label">
													Account Number</label></td>
											<td><input type="text" class="form-control"
												name="accountNumber" /></td>
										</tr>
									</div>
									<div class="row" style="align-self: center;">
										<tr>
											<td><label for="annualRevenue" class="field-label">
													Annual Revenue</label></td>
											<td><input type="text" class="form-control"
												name="annualRevenue" /></td>
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
											<td><label for="website" class="field-label">Website</label></td>
											<td><input type="text" class="form-control"
												name="website" /></td>
										</tr>
									</div>
									<br>
									<div class="row" style="align-self: center;">
										<tr>
											<td><label class="field-label">Rating</label></td>
											<td><select class="form-control-select" name="rating"
												id="rating">
													<option>None</option>
													<option>Acquired</option>
													<option>Active</option>
													<option>Market Failed</option>
													<option>Project Cancelled</option>
													<option>Shut Down</option>
											</select></td>
										</tr>
									</div>
									<br>


									<div class="row" style="align-self: center;">
										<button type="submit" value="Save"
											class="btn btn-block btn-success">Account Save</button>
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
</div>
<!-- /.container-fluid -->
</section>
<!-- /.content -->




<jsp:include page="/WEB-INF/common/footer.jsp" />