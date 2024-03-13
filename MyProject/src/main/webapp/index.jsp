
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
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
<title>Inventory Management</title>
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
<style>
.move:hover {
	transform: translateY(-8px);
	transition: all.1.5s;
}

.move:hover .card-title {
	color: #4154f1 !important;
}

.card-title {
	font-size: 22px !important;
}
</style>
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
					<li><a href="check_stock.jsp"> <i class="bi bi-circle"></i><span>Check
								Stock</span>
					</a></li>
					<li><a href="add_stock.jsp"> <i class="bi bi-circle"></i><span>Add
								Stock</span>
					</a></li>
					</a></li>
			</li>
		</ul>
		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
				<i class="fa fa-book" aria-hidden="true"></i><span>Issued
					Products</span><i class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="tables-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="assigned_products.jsp"> <i
						class="bi bi-circle"></i><span>Assigned Products</span>
				</a></li>
				<li><a href="new_assigning.jsp"> <i class="bi bi-circle"></i><span>New
							Assigning</span>
				</a></li>
			</ul></li>
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
		<li class="nav-item"><a class=" act " href="logout.jsp"> <i
				class="fa fa-power-off poweroff" aria-hidden="true"></i> <span>
					&emsp;Logout</span>
		</a></li>
	</aside>
	<!-- End Sidebar-->
	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">

						<!-- Total Assets -->
						<div class="col-xxl-4 col-md-6 move">
							<div class="card info-card sales-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<a href="check_stock.jsp">
										<h5 class="card-title">Total Assets</h5>
									</a>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<img src="assets/img/warehouse.png" alt="">
										</div>
										<div class="ps-3">
											<h6>
												<%
												Statement st = con.createStatement();
												ResultSet rs = st.executeQuery("select count(Category) from all_assets");
												%>
												<%
												rs.next();
												%><%=rs.getString(1)%></h6>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End Total Assets -->
						<!-- Issued Products -->
						<div class="col-xxl-4 col-md-6 move">
							<div class="card info-card revenue-card">
								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>
										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>
								<%
							    Statement mon = con.createStatement();
								ResultSet rp = mon.executeQuery("select count(Monitor_Id) from new_assigning where Monitor_Id !=''");
								rp.next();
								int m = Integer.parseInt(rp.getString(1));
								rp = mon.executeQuery("select count(CPU_Id) from new_assigning where CPU_Id!=''");
								rp.next();
								int c = Integer.parseInt(rp.getString(1));
								rp = mon.executeQuery("select count(Keyboard_Id) from new_assigning where Keyboard_Id!=''");
								rp.next();
								int k = Integer.parseInt(rp.getString(1));
								rp = mon.executeQuery("select count(Mouse_Id) from new_assigning where Mouse_Id!='' ");
								rp.next();
								int m2 = Integer.parseInt(rp.getString(1));
								rp = mon.executeQuery("select count(Laptop_Id) from new_assigning where Laptop_Id !=\"\" ");
								rp.next();
								int l = Integer.parseInt(rp.getString(1));
								rp = mon.executeQuery("select count(AdditionalProduct_Id) from new_assigning where AdditionalProduct_Id!=''");
								rp.next();
								int ad = Integer.parseInt(rp.getString(1));
								int sum = m + c + k + m2 + l + ad;
								%>

								<div class="card-body">
									<a href="assigned_products.jsp">
										<h5 class="card-title">Issued Products</h5>
									</a>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<img src="assets/img/to-do.png" alt="">
										</div>
										<div class="ps-3">
											<h6><%=sum%></h6>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End Issued Products  -->

						<!-- Scrap Material -->
						<div class="col-xxl-4 col-md-6 move">
							<div class="card info-card revenue-card">
								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>
										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<a href="scrap.jsp">
										<h5 class="card-title">Scrap Material</h5>
									</a>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<img src="assets/img/garbage.png" alt="">
										</div>
										<div class="ps-3">
											<h6>
												<%
												rs = st.executeQuery("select count(Product_Id) from scrap_material");
												rs.next();
												%>
												<%=rs.getString(1)%>
											</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End Scrap Material -->

						<!-- Faulty Products -->

						<div class="col-xxl-4 col-md-6 move">
							<div class="card info-card revenue-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<a href="faulty.jsp">
										<h5 class="card-title">Faulty Products</h5>
									</a>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<img src="assets/img/broken.png" alt="">
										</div>
										<div class="ps-3">
											<h6>
												<%
												rs = st.executeQuery("select count(Product_Id) from faulty_products");
												rs.next();
												%><%=rs.getString(1)%></h6>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!--  End Faulty Products -->

					</div>
					<%
					ResultSet moni = st.executeQuery("select count(Category) from all_assets where Category=\"Monitor\"");
					moni.next();
					String m1 = moni.getString(1);
					ResultSet cpu = st.executeQuery("select count(Category) from all_assets where Category=\"CPU\"");
					cpu.next();
					String c1 = cpu.getString(1);
					ResultSet key = st.executeQuery("select count(Category) from all_assets where Category=\"Keyboard\"");
					key.next();
					String k1 = key.getString(1);
					ResultSet mous = st.executeQuery("select count(Category) from all_assets where Category=\"Mouse\"");
					mous.next();
					String m3 = mous.getString(1);
					ResultSet lap = st.executeQuery("select count(Category) from all_assets where Category=\"Laptop\"");
					lap.next();
					String l1 = lap.getString(1);
					ResultSet phn = st.executeQuery("select count(Category) from all_assets where Category=\"Mobile Phone\"");
					phn.next();
					String p1 = phn.getString(1);
					ResultSet headphn = st.executeQuery("select count(Category) from all_assets where Category=\"Headphone\"");
					headphn.next();
					String h1 = headphn.getString(1);
					%>

					<!-- chart -->
					<div class="card move">
						<div class="filter">
							<a class="icon" href="#" data-bs-toggle="dropdown"><i
								class="bi bi-three-dots"></i></a>
							<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
								<li class="dropdown-header text-start">
									<h6>Filter</h6>
								</li>

								<li><a class="dropdown-item" href="#">Today</a></li>
								<li><a class="dropdown-item" href="#">This Month</a></li>
								<li><a class="dropdown-item" href="#">This Year</a></li>
							</ul>
						</div>

						<div class="card-body pb-0">
							<h5 class="card-title">Asset Chart</h5>

							<div id="trafficChart" style="min-height: 400px;" class="echart"></div>

							<script>
                document.addEventListener("DOMContentLoaded", () => {
                  echarts.init(document.querySelector("#trafficChart")).setOption({
                    tooltip: {
                      trigger: 'item'
                    },
                    legend: {
                      top: '5%',
                      left: 'center'
                    },
                    series: [{
                      name: '',
                      type: 'pie',
                      radius: ['40%', '70%'],
                      avoidLabelOverlap: false,
                      label: {
                        show: false,
                        position: 'center'
                      },
                      emphasis: {
                        label: {
                          show: true,
                          fontSize: '18',
                          fontWeight: 'bold'
                        }
                      },
                      labelLine: {
                        show: false
                      },
                      data: [{
                          value: <%=m1%>,
                          name: 'Monitor'
                        },
                        {
                          value:<%=c1%>,
                          name: 'CPU'
                        },
                        {
                          value:  <%=k1%>,
                          name: 'Keyboard'
                        },
                        {
                          value:  <%=m3%>,
                          name: 'Mouse'
                        },
                        {
                          value: <%=l1%>,
                          name: 'Laptop'
                        },
                        {
                        	value: <%=p1%>,
                        	name:'Mobile Phone'
                        },
                        {
                        	value: <%=h1%>,
                        	name:'Headphone'
                        }
                      ]
                    }]
                  });
                });
              </script>
						</div>
					</div>
					<!--chart end-->

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

	<!--  Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

</html>