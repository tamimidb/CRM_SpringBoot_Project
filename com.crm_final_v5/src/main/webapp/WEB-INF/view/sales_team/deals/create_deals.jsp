
<jsp:include page="/WEB-INF/common/header.jsp" />





<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Deals Form</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Deals Form</li>
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
						<form action="/sales/dealsave" method="POST">

							<!-- /.card -->

							<!-- Input addon -->

							<!-- general form elements disabled -->
							<div class="card card-warning">
								<div class="card-header">
									<h1 class="card-title">Deals Information</h1>

								</div>
								<div>
									<tr>
										<td><label for="dealCode" class="field-label">Deal
												Code</label></td>
										<td><input type="text" class="form-control"
											name="dealCode" /></td>
									</tr>
									<tr>
										<td><label for="dealName" class="field-label">Deal
												Name</label></td>
										<td><input type="text" class="form-control"
											name="dealName" /></td>
									</tr>


									<tr>
										<td><label for="accountName" class="field-label">Account
												Name</label></td>
										<td><input type="text" class="form-control"
											name="accountName" /></td>
									</tr>
									<tr>
										<td><label class="field-label">Type</label></td>
										<td><select class="form-control-select" name="type"
											id="type">
												<option>None</option>
												<option>Cold Lead</option>
												<option>Warm Lead</option>
												<option>Hot Lead</option>
										</select></td>
									</tr>
									<br>
									<div class="">
										<td><label class="field-label" for="leadSource">Lead
												Source</label></td>
										<td><select class="form-control-select" name="leadSource">
												<option>Please Select</option>
												<option>Advertisement</option>
												<option>Employee Referral</option>
												<option>External Referral</option>
												<option>Online Store</option>
												<option>Partner</option>
												<option>Public Relations</option>
												<option>Trade Show</option>
												<option>Web Research</option>
										</select></td>
									</div>
									<tr>
										<td><label for="amount" class="field-label">Amount</label></td>
										<td><input type="text" class="form-control" name="amount"
											id="amount" /></td>
									<tr>
										<td><label for="closingDate" class="field-label">Closing
												Date</label></td>
										<td><input type="date" class="form-control"
											name="closingDate" /></td>
									</tr>


									<br>
									<td><label class="field-label">Stage</label></td>
									<td><select class="form-control-select" name="stage"
										id="stage">
											<option>Qualification</option>
											<option>Needs Analysis</option>
											<option>Closed Won</option>
											<option>Cloased Lost</option>
									</select></td>
									</tr>
									<br>

									<tr>

										<td><label for="probability" class="field-label">Probability
												(%)</label></td>
										<td><input type="text" class="form-control"
											name="probability" id="probability" onchange="getTotal()" /></td>
									</tr>


									<tr>

										<td><label for="expectedRevenue" class="field-label">Expected
												Revenue:-</label></td>
										<td><input type="hidden" class="form-control"
											name="expectedRevenue" id="expectedRevenue" />
										 <td><lebel id="expectedRevenue"></lebel></td> 
									</tr>
									<br>

									<tr>
										<td><label class="field-label">Campaign Source</label></td>
										<td><select class="form-control-select"
											name="campaignSource" id="campaignSource">
												<option>None</option>
												<option>Cold Call</option>
												<option>Online Store</option>
												<option>Employee Referral</option>
										</select></td>
									</tr>
									<br>
									<tr>

										<td><label for="contactName" class="field-label">Contact
												Name</label></td>
										<td><input type="text" class="form-control"
											name="contactName" /></td>
									</tr>
									<br>

								</div>

								<div class="col-md-2">
									<button type="submit" value="Save"
										class="btn btn-block btn-success">Save</button>
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

<script>
	function getTotal() {
		var amount = parseInt(document.getElementById("amount").value)
		var vat = parseInt(document.getElementById("probability").value)
		var totalCost = amount - (amount * vat / 100);
		document.getElementById("expectedRevenue").innerHTML = totalCost;
		document.getElementById("expectedRevenue").value = totalCost;
		//  alert(totalCost);

	}
</script>