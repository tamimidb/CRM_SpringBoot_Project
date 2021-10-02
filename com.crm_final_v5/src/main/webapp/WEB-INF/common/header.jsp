<!DOCTYPE html>
<html lang="en">
<head class="tm-gray-bg">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>CRM | Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/app-assets/plugins/fontawesome-free/css/all.min.css">
<!-- DataTables -->
<link rel="stylesheet"
	href="../../app-assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="../../app-assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet"
	href="../../app-assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="/app-assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="/app-assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet" href="/app-assets/plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/app-assets/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="/app-assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="/app-assets/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet"
	href="/app-assets/plugins/summernote/summernote-bs4.min.css">
<style>
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: #333;
}

.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 10px 13px;
	text-decoration: none;
	font-size: 15px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #04AA6D;
	color: white;
}

.topnav-right {
	float: right;
}
</style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
  
  </div>
			<div class="topnav">
				<!-- Navbar -->
				<nav
					class="main-header navbar navbar-expand navbar-white navbar-dark-primary elevation-4 fixed-top d-flex flex-row"
					style="background-color: menutext; font-weight: bolder;">
					<!-- Left navbar links -->
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link"
							data-widget="pushmenu" href="#" role="button"><i
								class="fas fa-bars"></i></a></li>
						<li class="nav-item d-none d-sm-inline-block"><a
							href="/index" class="active">Home</a></li>
						<li class="nav-item d-none d-sm-inline-block"><a
							href="/lead/leadreport" class="nav-link">Leads</a></li>
						<li class="nav-item d-none d-sm-inline-block"><a
							href="/marketing/contactreport" class="nav-link">Contacts</a></li>
						<li class="nav-item d-none d-sm-inline-block"><a
							href="/marketing/accountreport" class="nav-link">Accounts</a></li>
						<li class="nav-item d-none d-sm-inline-block"><a
							href="/sales/dealreport" class="nav-link">Deals</a></li>

						<li class="nav-item d-none d-sm-inline-block"><a
							href="/marketing/show" class="nav-link">Feedback</a></li>
						<li class="nav-item d-none d-sm-inline-block"><a
							href="/task/activitiesReport" class="nav-link">Activities</a></li>
						<!-- <li class="nav-item d-none d-sm-inline-block"><a
						href="/servicereport" class="nav-link"> Service </a></li> -->
						<!-- <li class="nav-item d-none d-sm-inline-block"><a
						href="reports" class="nav-link">Reports</a></li> -->
						<li class="nav-item d-none d-sm-inline-block"><a
							href="/task/taskreport" class="nav-link">Task</a></li>
						<li class="nav-item d-none d-sm-inline-block"><a
							href="/product/show" class="nav-link">Product</a></li> -->
						<!-- Right navbar links 
					<ul class="navbar-nav ml-auto">
						<!-- Navbar Search -->
						<li class="nav-item">
					</ul>


					<!-- Messages Dropdown Menu -->
					<li class="nav-item dropdown"><a class="nav-link"
						data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
							<span class="badge badge-danger navbar-badge">3</span>
					</a>
						<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
							<a href="#" class="dropdown-item"> <!-- Message Start -->
								<div class="media">
									<img src="/app-assets/dist/img/user1-128x128.jpg"
										alt="User Avatar" class="img-size-50 mr-3 img-circle">
									<div class="media-body">
										<h3 class="dropdown-item-title">
											Brad Diesel <span class="float-right text-sm text-danger"><i
												class="fas fa-star"></i></span>
										</h3>
										<p class="text-sm">Call me whenever you can...</p>
										<p class="text-sm text-muted">
											<i class="far fa-clock mr-1"></i> 4 Hours Ago
										</p>
									</div>
								</div> <!-- Message End -->
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <!-- Message Start -->
								<div class="media">
									<img src="/app-assets/dist/img/user8-128x128.jpg"
										alt="User Avatar" class="img-size-50 img-circle mr-3">
									<div class="media-body">
										<h3 class="dropdown-item-title">
											John Pierce <span class="float-right text-sm text-muted"><i
												class="fas fa-star"></i></span>
										</h3>
										<p class="text-sm">I got your message bro</p>
										<p class="text-sm text-muted">
											<i class="far fa-clock mr-1"></i> 4 Hours Ago
										</p>
									</div>
								</div> <!-- Message End -->
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <!-- Message Start -->
								<div class="media">
									<img src="/app-assets/dist/img/user3-128x128.jpg"
										alt="User Avatar" class="img-size-50 img-circle mr-3">
									<div class="media-body">
										<h3 class="dropdown-item-title">
											Nora Silvester <span class="float-right text-sm text-warning"><i
												class="fas fa-star"></i></span>
										</h3>
										<p class="text-sm">The subject goes here</p>
										<p class="text-sm text-muted">
											<i class="far fa-clock mr-1"></i> 4 Hours Ago
										</p>
									</div>
								</div> <!-- Message End -->
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item dropdown-footer">See All
								Messages</a>
						</div></li>
					<!-- Notifications Dropdown Menu -->
					<li class="nav-item dropdown"><a class="nav-link"
						data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
							class="badge badge-warning navbar-badge">15</span>
					</a>
						<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
							<span class="dropdown-item dropdown-header">15
								Notifications</span>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <i
								class="fas fa-envelope mr-2"></i> 4 new messages <span
								class="float-right text-muted text-sm">3 mins</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <i
								class="fas fa-users mr-2"></i> 8 friend requests <span
								class="float-right text-muted text-sm">12 hours</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <i
								class="fas fa-file mr-2"></i> 3 new reports <span
								class="float-right text-muted text-sm">2 days</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item dropdown-footer">See All
								Notifications</a>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-widget="fullscreen" href="#" role="button"> <i
							class="fas fa-expand-arrows-alt"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						data-widget="control-sidebar" data-slide="true" href="#"
						role="button"> <i class="fas fa-th-large"></i>
					</a></li>
					</nav>
			</div>
			
		
		
			<!-- /.navbar -->

	
			<!-- Main Sidebar Container -->
			<aside class="main-sidebar sidebar-dark-primary elevation-4">
				<!-- Brand Logo -->
				<a href="index3.html" class="brand-link"> <img src="" alt=""
					class="brand-image img-circle elevation-3" style="opacity: .8">
					<span class="brand-text font-weight-light">CRM @ Admin</span>
				</a>

				<!-- Sidebar -->
				<div class="sidebar" style="background-color: menutext;">
					<!-- Sidebar user panel (optional) -->
					<div class="user-panel mt-3 pb-3 mb-3 d-flex">
						<div class="image">
							<img src="/app-assets/dist/img/avatar5.png"
								class="img-circle elevation-2" alt="User Image">
						</div>
						<div class="info">
							<a href="#" class="d-block"><b>Tamim Ahmed</b></a>
						</div>
					</div>

					<!-- SidebarSearch Form -->
					<div class="form-inline">
						<div class="input-group" data-widget="sidebar-search">
							<input class="form-control form-control-sidebar" type="search"
								placeholder="Search" aria-label="Search">
							<div class="input-group-append">
								<button class="btn btn-sidebar">
									<i class="fas fa-search fa-fw"></i>
								</button>
							</div>
						</div>
					</div>

					<!-- Sidebar Menu -->
					<nav class="mt-2">
						<ul class="nav nav-pills nav-sidebar flex-column"
							data-widget="treeview" role="menu" data-accordion="false">
							<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->





							<li class="sub-menu"><a href="javascript:;" class=""> <i
									class="icon_table"></i> <span>CRM</span> <span
									class="menu-arrow arrow_carrot-right"></span>
							</a>
							<li class="nav-item"><a href="#" class="nav-link active">
									<i class="nav-icon fas fa-tachometer-alt"></i>
									<p>
										Marketing Team <i class="right fas fa-angle-left"></i>
									</p>
							</a>
								<ul class="nav nav-treeview">

									<li class="nav-item"><a href="/marketing/campaignreport"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Campaign Report</p>
									</a></li>

										<li class="nav-item"><a href="/lead/leadreport"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Leads Report</p>
									</a></li>

									<li class="nav-item"><a href="/marketing/contactreport"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Contacts Report</p>
									</a></li>


									<!-- 	<li class="nav-item"><a href="/sales/opportunitiesreport"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Opportunities</p>
									</a></li> -->
									<li class="nav-item"><a href="/marketing/show"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Customer Feedback & Rating</p>
									</a></li>
								</ul></li>






							<li class="nav-item"><a href="#" class="nav-link active">
									<i class="nav-icon fas fa-plus-square"></i>
									<p>
										Sales Team<i class="right fas fa-angle-left"></i>
									</p>
							</a>
								<ul class="nav nav-treeview">
									

									<li class="nav-item"><a href="/marketing/accountreport"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Accounts Report</p>
									</a></li>
									<li class="nav-item"><a href="/sales/dealsreport"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Deals Report</p>
									</a></li>
								<!-- <li class="nav-item"><a href="/sales/corporatehousereport"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Corporate House</p>
									</a></li> -->
									<li class="nav-item"><a href="/product/show"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Products Report</p>
									</a></li>


									<li class="nav-item"><a href="/sales/salesreport"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Sales Reporting</p>
									</a></li>
								</ul></li>

							<li class="nav-item"><a href="#" class="nav-link active">
									<i class="nav-icon fas fa-tachometer-alt"></i>
									<p>
										Support & Service Team<i class="fas fa-angle-left right"></i>
									</p>
							</a>
								<ul class="nav nav-treeview">
									<!-- <li class="nav-item"><a href="pages/tables/simple.html"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Business Service</p>
									</a></li> -->
								
									<!-- 	<li class="nav-item"><a href="/task/taskreport"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Task</p>
									</a></li> -->
									<li class="nav-item"><a href="pages/tables/data.html"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Activities Report</p>
									</a></li>
									
										<li class="nav-item"><a href="pages/tables/simple.html"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Customer Complain</p>
									</a></li>
									<!-- <li class="nav-item"><a href="pages/tables/simple.html"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Case Report</p>
									</a></li> -->
									<li class="nav-item"><a href="pages/tables/jsgrid.html"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Solution Report</p>
									</a></li>
								</ul></li>


							<li class="nav-item"><a href="#" class="nav-link active">
									<i class="nav-icon fas fa-table"></i>
									<p>
										Admin <i class="right fas fa-angle-left"></i>
									</p>
							</a>
								<ul class="nav nav-treeview">
									<!-- 	<li class="nav-item"><a href="/admin/businessreport"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Business Report</p>
									</a></li> -->

									<li class="nav-item"><a href="/admin/crmreport"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>CRM Report</p>
									</a></li>
									<li class="nav-item"><a href="/admin/assigncrmreport"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Assign CRM</p>
									</a></li>
									<li class="nav-item"><a href="./index2.html"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Assign Leads</p>
									</a></li>
									<!-- <li class="nav-item"><a href="/admin/cmreport"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Customer Manager Report</p>
									</a></li> -->

									<li class="nav-item"><a href="./index3.html"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>All Reports</p>
									</a></li>

								</ul></li>


							<li class="nav-header">Others</li>
							<li class="nav-item"><a href="pages/calendar.html"
								class="nav-link"> <i class="nav-icon far fa-calendar-alt"></i>
									<p>
										Calendar <span class="badge badge-info right">2</span>
									</p>
							</a></li>
							<li class="nav-item"><a href="pages/gallery.html"
								class="nav-link"> <i class="nav-icon far fa-image"></i>
									<p>Gallery</p>
							</a></li>

							<li class="nav-item"><a href="/login/gmail" class="nav-link">
									<i class="nav-icon far fa-envelope"></i>
									<p>
										Mailbox <i class="fas fa-angle-left right"></i>
									</p>
							</a>
								<ul class="nav nav-treeview">
									<li class="nav-item"><a href="pages/mailbox/mailbox.html"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Inbox</p>
									</a></li>
									<li class="nav-item"><a href="pages/mailbox/compose.html"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Compose</p>
									</a></li>
									<li class="nav-item"><a
										href="pages/mailbox/read-mail.html" class="nav-link"> <i
											class="far fa-circle nav-icon"></i>
											<p>Read</p>
									</a></li>
								</ul></li>
							<li class="nav-item"><a href="#" class="nav-link"> <i
									class="nav-icon fas fa-book"></i>
									<p>
										Pages <i class="fas fa-angle-left right"></i>
									</p>
							</a>
								<ul class="nav nav-treeview">
									
									<li class="nav-item"><a href="pages/examples/profile.html"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>Profile</p>
									</a></li>


									<li class="nav-item"><a href="pages/examples/faq.html"
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
											<p>FAQ</p>
									</a></li>
									<li class="nav-item"><a
										href="pages/examples/contact-us.html" class="nav-link"> <i
											class="far fa-circle nav-icon"></i>
											<p>Contact us</p>
									</a></li>
								</ul></li>
							<li class="nav-item"><a href="#" class="nav-link"> <i
									class="nav-icon far fa-plus-square"></i>
									<p>
										Extras <i class="fas fa-angle-left right"></i>
									</p>
							</a>
								<ul class="nav nav-treeview">
									<li class="nav-item"><a href="#" class="nav-link"> <i
											class="far fa-circle nav-icon"></i>
											<p>
												Login & Register <i class="fas fa-angle-left right"></i>
											</p>
									</a>
										<ul class="nav nav-treeview">
											<li class="nav-item"><a href="pages/examples/login.html"
												class="nav-link"> <i class="far fa-circle nav-icon"></i>
													<p>Login</p>
											</a></li>
											<li class="nav-item"><a
												href="pages/examples/register.html" class="nav-link"> <i
													class="far fa-circle nav-icon"></i>
													<p>Register</p>
											</a></li>
											<li class="nav-item"><a
												href="pages/examples/forgot-password.html" class="nav-link">
													<i class="far fa-circle nav-icon"></i>
													<p>Forgot Password</p>
											</a></li>
											<li class="nav-item"><a
												href="pages/examples/recover-password.html" class="nav-link">
													<i class="far fa-circle nav-icon"></i>
													<p>Recover Password</p>
											</a></li>
										</ul></li>

								</ul>
						</ul>
					</nav>

					<!-- /.sidebar-menu -->
				</div>

				<!-- /.sidebar -->
			</aside>

	<!-- /.control-sidebar -->