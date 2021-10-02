<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/common/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="resources/assets/css/bottom-header/style.css">
<link rel="stylesheet" href="resources/assets/css/crm/crmStyle.css">

</head>
<body>
<!-- Content Header (Page header) -->
<section class="content-header" style="background-color: aqua;">
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper" style="background-color: aqua;">
		<div class="container-fluid">
	<form action="/marketing/campaignsave" method="post">
		<div class="crm-image">


			<!--Header-->

			<div class="bottom__header">
				<div class="bottom__header__left">
					<h4 class="bottom__header__title">Campaign Information</h4>
				</div>
				<div class="bottom__header__right">
					<input type="submit" class="bottom__header__button__save"
						value="Save" />
					<!--                        <button id="button_save" class="bottom__header__button__save">Save</button>-->
					<button class="bottom__header__button__saveAndNew">Save
						and New</button>
					<a href="/marketing/campaignreport"><input type="button"
						class="bottom__header__button__cancel" value="Cancel"></a>
				</div>
			</div>
			<!--Header End-->

			<div class="crm-create-body">
				<table class="crm__table">

					<tr>
						<td><label for="campaignCode" class="field-label">Campaign
								Code</label></td>
						<td><input type="text" class="form-control" name="campaignCode" />
						</td>
					</tr>
					<tr>
						<td><label for="campaignName" class="field-label">Campaign
								Name</label></td>
						<td><input type="text" class="form-control" name="campaignName" />
						</td>
					</tr>
					<tr>
						<td><label for="type" class="field-label">Type</label></td>
						<td><select class="form-control-select" name="type">
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
					</tr>


				
					<tr>
						<td><label for="status" class="field-label">Status</label></td>
						<td><select class="form-control-select" name="status">
								<option>Please Select</option>

								<option>None</option>
								<option>Planning</option>
								<option>Active</option>
								<option>Inactive</option>
								<option>Complete</option>

						</select></td>
					</tr>

					<tr>
						<td><label for="startDate" class="field-label">Start
								Date</label></td>
						<td><input type="date" class="form-control" name="startDate" /></td>
					</tr>
					<tr>
						<td><label for="endDate" class="field-label">End Date</label></td>
						<td><input type="date" class="form-control" name="endDate" /></td>
					</tr>
					<tr>
						<td><label for="expectedRevenue" class="field-label">Expected
								Revenue</label></td>
						<td><input type="text" class="form-control"
							name="expectedRevenue" /></td>
					</tr>


					<tr>
						<td><label for="budgetedCost" class="field-label">Budgeted
								Cost</label></td>
						<td><input type="text" class="form-control"
							name="budgetedCost" /></td>
					</tr>
					<tr>
						<td><label for="actualCost" class="field-label">Actual
								Cost</label></td>
						<td><input type="text" class="form-control" name="actualCost" /></td>
					</tr>
					
					<tr>
						<td><label for="expectedResponse" class="field-label">Expected Response
								</label></td>
						<td><input type="text" class="form-control" name="expectedResponse" /></td>
					</tr>
						<tr>
						<td><label for="modifiedBy" class="field-label">Modified By</label></td>
						<td><input type="text" class="form-control"
							name="modifiedBy" /></td>
					</tr>
						<tr>
						<td><label for="createdBy" class="field-label">Created By</label></td>
						<td><input type="text" class="form-control"
							name="createdBy" /></td>
					</tr>
					
						<tr>
						<td><label for="createdTime" class="field-label">Created Time</label></td>
						<td><input type="text" class="form-control"
							name="createdTime" /></td>
					</tr>
						<tr>
						<td><label for="modifiedTime" class="field-label">Modified Time</label></td>
						<td><input type="text" class="form-control"
							name="modifiedTime" /></td>
					</tr>
						<tr>
						<td><label for="parentCampaign" class="field-label">Created Time</label></td>
						<td><input type="text" class="form-control"
							name="parentCampaign" /></td>
					</tr>
					
					<tr>
						<td><label for="description" class="field-label">Description</label></td>
						<td><input type="text" class="form-control" name="description" /></td>
					</tr>
					
				</table>
			</div>
		</div>
	</form>
	</div>
	</div>
	</section>
</body>
</html>
<jsp:include page="/WEB-INF/common/footer.jsp" />