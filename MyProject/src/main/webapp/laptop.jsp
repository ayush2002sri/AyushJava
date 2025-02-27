
<%
if (session.getAttribute("uid") == null || session.getAttribute("ps") == null) {
	response.sendRedirect("/MyProject/login2.jsp");
}
String email = (String) session.getAttribute("uid");
%>
<%@ page import="java.sql.*"%>
<%
Connection con = (Connection) application.getAttribute("CONN");
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Laptop</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/download.png" rel="icon">

<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
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
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="header fixed-top d-flex align-items-center justify-content-between">
		<div class="d-flex align-items-center justify-content-between">
			<a href="index.jsp" class="logo d-flex align-items-center"> <img
				src="assets/img/images.png" alt="" class="img-fluid ">
			</a> <i class="bi bi-list toggle-sidebar-btn"></i>
		</div>
		
		 
		

<h2 class="text-center fw-bold mb-0">ADMIN PANEL</h2>
<div>
			<ul class="d-flex align-items-center" style="list-style:none">





				

				<li class="nav-item dropdown  pt-2"><a
					class="nav-link nav-profile d-flex align-items-center pe-0"
					href="#" data-bs-toggle="dropdown" > <span
						class="d-none d-md-block dropdown-toggle ps-2"  style="color:#012970;" ><%=email%></span>
				</a> <!-- End Profile Iamge Icon -->

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li class="dropdown-header">
							<h6  style="color:#012970;">ADMIN</h6> <span>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>





						<li><a href="logout.jsp"
								class="dropdown-item d-flex align-items-center">
								<i class="bi bi-box-arrow-right"></i> <span>Sign Out</span>
							</a></li>



					</ul> <!-- End Profile Dropdown Items --></li>
				<!-- End Profile Nav -->

			</ul>
			</div>
					

			
		
	</header>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<aside id="sidebar" class="sidebar">

		<ul class="sidebar-nav" id="sidebar-nav">

			<li class="nav-item"><a class="nav-link " href="index.jsp">
					<i class="bi bi-grid"></i> <span>Dashboard</span>
			</a></li>
			<!-- End Dashboard Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
					<i class="fa fa-cubes" aria-hidden="true"></i><span>Stock</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="components-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="check_stock.jsp"> <i
							class="bi bi-circle"></i><span>Check Stock</span>
					</a></li>
					<li><a href="add_stock.jsp"> <i
							class="bi bi-circle"></i><span>Add Stock</span>
					</a></li>
								</a></li></li>
		</ul>
		</li>
		<!-- End Components Nav -->



		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
				<i class="fa fa-book" aria-hidden="true"></i><span>Issued
					Products</span><i class="bi bi-chevron-down ms-auto"></i>

		</a>
			<ul id="tables-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="assigned_products.jsp"> <i class="bi bi-circle"></i><span>Assigned
							Products</span>
				</a></li>
				<li><a href="new_assigning.jsp"> <i class="bi bi-circle"></i><span>New
							Assigning</span>
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
				<li><a href="add_faulty.jsp"> <i class="bi bi-circle"></i><span>Add to Faulty
							</span>
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

		<li class="nav-item"><a class=" act " href="login2.jsp"> <i
				class="fa fa-power-off poweroff" aria-hidden="true"></i> <span>
					&emsp;Logout</span>
		</a></li>

	</aside>
	<!-- End Sidebar-->

	<main id="main" class="main">

		<div class="pagetitle" style="justify-content: start;">
			<h1>Stock</h1>
			<nav>
					<ol class="breadcrumb"><li class="breadcrumb-item"><a href="">
							Stock</a></li>
					<li class="breadcrumb-item"><a href="check_stock.jsp">Check
							Stock</a></li>
					<li class="breadcrumb-item active">Laptop</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->
		<div class="row">
			<div class="col-md-12 mb-3">
				<a href="check_stock.jsp"><button
						class="btn btn-secondary float-end">
						<i class="fa fa-backward" aria-hidden="true"></i>&ensp;Back
					</button></a>
			</div>
		</div>
		<section class="section dashboard">
			<div class="row">


				<div class="col-lg-12">

					<div class="card">

						<div class="card-body mt-5">

							<!-- Table with stripped rows -->

							<table class="table table-striped my-2  display" id="example">

								<thead>
									<tr>
										<th scope="col">S.No</th>
										<th scope="col">Product ID</th>
										<th scope="col">Company</th>
										<th scope="col">Issed To</th>

									</tr>
								</thead>
								<tbody>

									<%
									Statement st = con.createStatement();
									String q = "select all_assets.*,new_assigning.Name from all_assets inner join new_assigning on all_assets.Product_ID=new_assigning.Laptop_Id where all_assets.Status='Assigned'";
									ResultSet rs = st.executeQuery(q);
									int a = 1;
									while (rs.next()) {
									%>
									<tr>
										<td><%=a%></td>
										<td><%=rs.getString(3)%></td>
										<td><%=rs.getString(2)%></td>
										<td><%=rs.getString(5)%></td>
									</tr>
									<%
									a++;
									}
									rs = st.executeQuery("select *  from all_assets where Status=\"New\" and Category='laptop'");
									while (rs.next()) {
									%>
									<tr>
										<td><%=a%></td>
										<td><%=rs.getString(3)%></td>
										<td><%=rs.getString(2)%></td>
										<td><%="---"%></td>
									</tr>
									<%
									a++;
									}
									rs = st.executeQuery("select *  from all_assets where Status=\"Faulty\" and Category='Laptop'");
									while (rs.next()) {
									%>
									<tr class="">
										<td><%=a%></td>
										<td><%=rs.getString(3)+"(faulty)"%></td>
										<td><%=rs.getString(2)%></td>
										<td><%="---"%></td>
									</tr>
									<%
									a++;
									}
									%>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Table with stripped rows -->
		<a href="#"
			class="back-to-top d-flex align-items-center justify-content-center"><i
			class="bi bi-arrow-up-short"></i></a>

	</main>
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
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script
		src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#example').DataTable({
				pagingType : 'full_numbers',
			});
		});
	</script>
</body>

</html>