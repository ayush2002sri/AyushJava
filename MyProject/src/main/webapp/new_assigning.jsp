
<%
if (session.getAttribute("uid") == null || session.getAttribute("ps") == null) {
	response.sendRedirect("/MyProject/login2.jsp");
}
String email = (String) session.getAttribute("uid");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>New Assigning Form</title>
<meta content="" name="description">
<meta content="" name="keywords">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Favicons -->
<link href="assets/img/download.png" rel="icon">
<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
</head>
<body>

	<!-- ======= Header ======= -->
	<header id="header"
		class="header fixed-top d-flex align-items-center justify-content-between">
		<div class="d-flex align-items-center justify-content-between">
			<a href="index.jsp" class="logo d-flex align-items-center"> <img
				src="assets/img/images.png" alt="" class="img-fluid ">
			</a> <i class="bi bi-list toggle-sidebar-btn"></i>
		</div>
		<h2 class="text-center fw-bold mb-0">ADMIN PANEL</h2>
		<div>
			<ul class="d-flex align-items-center" style="list-style: none">
				<li class="nav-item dropdown  pt-2"><a
					class="nav-link nav-profile d-flex align-items-center pe-0"
					href="#" data-bs-toggle="dropdown"> <span
						class="d-none d-md-block dropdown-toggle ps-2"
						style="color: #012970;"><%=email%></span>
				</a> <!-- End Profile Image Icon -->
					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li class="dropdown-header">
							<h6 style="color: #012970;">ADMIN</h6> <span>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a href="logout.jsp"
							class="dropdown-item d-flex align-items-center"> <i
								class="bi bi-box-arrow-right"></i> <span>Sign Out</span>
						</a></li>
					</ul> <!-- End Profile Dropdown Items --></li>
				<!-- End Profile Nav -->

			</ul>
		</div>

	</header>
	<!-- ======= Sidebar ======= -->
	<aside id="sidebar" class="sidebar">

		<ul class="sidebar-nav" id="sidebar-nav">

			<li class="nav-item"><a class="act " href="index.jsp"> <i
					class="bi bi-grid"></i> <span> &ensp;Dashboard</span>
			</a></li>
			<!-- End Dashboard Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
					<i class="fa fa-cubes" aria-hidden="true"></i><span>Stock</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="components-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="check_stock.jsp"> <i class="bi bi-circle"></i><span>Check
								Stock</span>
					</a></li>
					<li><a href="add_stock.jsp"> <i class="bi bi-circle"></i><span>Add
								Stock</span>
					</a></li></li>
		</ul>
		<!-- End Components Nav -->
		<li class="nav-item"><a class="nav-link "
			data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
				<i class="fa fa-book" aria-hidden="true"></i><span>Issued
					Products</span><i class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="tables-nav" class="nav-content collapse show "
				data-bs-parent="#sidebar-nav">
				<li><a href="assigned_products.jsp"> <i
						class="bi bi-circle"></i><span>Assigned Products</span>
				</a></li>
				<li><a href="new_assigning.jsp" class="active"> <i
						class="bi bi-circle"></i><span>New Assigning</span>
				</a></li>
			</ul></li>
		<!-- End Tables Nav -->
		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#tables-nav12" data-bs-toggle="collapse" href="#">
				<i class="fa fa-chain-broken" aria-hidden="true"></i><span>Faulty
					Products</span><i class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="tables-nav12" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="add_faulty.jsp"> <i class="bi bi-circle"></i><span>Add
							to Faulty </span>
				</a></li>
				<li><a href="faulty.jsp"> <i class="bi bi-circle"></i><span>
							Faulty Products</span>
				</a></li>
			</ul></li>
		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
				<i class="fa fa-bell-o" aria-hidden="true"></i><span>Requests</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="charts-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="approved-request.jsp"> <i class="bi bi-circle"></i><span>Approved</span>
				</a></li>
				<li><a href="new-request.jsp"> <i class="bi bi-circle"></i><span>New/Pending</span>
				</a></li>

			</ul></li>
		<!-- End Charts Nav -->

		<li class="nav-item"><a class=" act " href="logout.jsp"> <i
				class="fa fa-power-off poweroff" aria-hidden="true"></i> <span>
					&emsp;Logout</span>
		</a></li>
	</aside>
	<!-- End Sidebar-->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>New Assigning</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
					<li class="breadcrumb-item ">Issued Products</li>
					<li class="breadcrumb-item">New Assigning</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->
		<section class="section dashboard">
			<div class="row">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Assign Assets</h5>
						<div id="info" class="text-danger text-center fw-bold"></div>
						<!-- Multi Columns Form -->
						<form class="row g-3" method="post" action="newAssigning"
							onsubmit="confirm_assign()">
							<div class="col-md-12">
								<label for="name" class="form-label"> Name</label> <input
									type="text" class="form-control" id="name" name="txt_name"
									required="required">
							</div>
							<div class="col-md-6">
								<label for="email" class="form-label">Email</label> <input
									type="email" class="form-control" id="email" name="txt_email"
									required="required"
									onkeyup="validate_email_for_newAssigning(this.value)">
							</div>
							<div class="col-md-6">
								<label for="id" class="form-label">Employee Id</label> <input
									type="number" class="form-control" id="id" name="txt_empId"
									required="required">
							</div>
							<div class="col-3">
								<label for="MonID" class="form-label">Monitor ID </label> <input
									type="text" class="form-control" id="MonID" placeholder=""
									name="txt_monId" onkeyup="validate_assign(this.value)">
							</div>
							<div class="col-3">
								<label for="CpuId" class="form-label">CPU ID</label> <input
									type="text" class="form-control" id="Cpuid" placeholder=""
									name="txt_cpuId" onkeyup="validate_assign(this.value)">
							</div>
							<div class="col-3">
								<label for="KeyId" class="form-label">Keyboard ID</label> <input
									type="text" class="form-control" id="KeyId" placeholder=""
									name="txt_keyId" onkeyup="validate_assign(this.value)">
							</div>
							<div class="col-3">
								<label for="MouId" class="form-label">Mouse Id</label> <input
									type="text" class="form-control" id="MouId" placeholder=""
									name="txt_mouId" onkeyup="validate_assign(this.value)">
							</div>
							<div class="col-6">
								<label for="additional" class="form-label">Additional
									Products</label> <select class="form-control" id="additioanl"
									name="txt_additional">
									<option selected value="None">--Additonal Product--</option>
									<option value="Mobile Phone">Mobile Phone</option>
									<option value="Headphone">Headphone</option>
								</select>
							</div>
							<div class="col-6">
								<label for="lapId" class="form-label">Laptop Id</label> <input
									type="text" class="form-control" id="lapId" placeholder=""
									name="txt_lapId" onkeyup="validate_assign(this.value)">
							</div>
							<div class="col-6">
								<label for="AddId" class="form-label">Additional Product
									Id</label> <input type="text" class="form-control" id="AddId"
									placeholder="" name="txt_addId"
									onkeyup="validate_assign(this.value)">
							</div>
							<div class="text-center py-3">
								<button type="submit" class="btn btn-primary">Submit</button>
								<button type="reset" class="btn btn-secondary">Reset</button>
							</div>
						</form>
						<!-- End Multi Columns Form -->

					</div>
				</div>

			</div>
		</section>

	</main>
	<!-- End #main -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>


	<!-- Vendor JS Files -->
	<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/chart.js/chart.umd.js"></script>
	<script src="assets/vendor/echarts/echarts.min.js"></script>
	<script src="assets/vendor/quill/quill.min.js"></script>
	<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="assets/vendor/tinymce/tinymce.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
	<script lang="JavaScript" type="text/javascript"
		src="assets/js/prog.js"></script>
</body>

</html>