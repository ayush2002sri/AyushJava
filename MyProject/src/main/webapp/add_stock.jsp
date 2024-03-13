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
  <title>Add Stock</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
    integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- Favicons -->
<link href="assets/img/download.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
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
  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link collapsed" href="index.jsp">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link " data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="fa fa-cubes" aria-hidden="true"></i><span>Stock</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="check_stock.jsp">
              <i class="bi bi-circle"></i><span>Check Stock</span>
            </a>
          </li>
          <li>
            <a href="add_stock.jsp" class="active">
              <i class="bi bi-circle"></i><span>Add Stock</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="fa fa-book" aria-hidden="true"></i><span>Issued Products</span><i
            class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="assigned_products.jsp">
              <i class="bi bi-circle"></i><span>Assigned Products</span>
            </a>
          </li>
          <li>
            <a href="new_assigning.jsp">
              <i class="bi bi-circle"></i><span>New Assigning</span>
            </a>
          </li>
        </ul>
      </li><!-- End Tables Nav -->
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
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
          <i class="fa fa-bell-o" aria-hidden="true"></i><span>Requests</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="approved-request.jsp">
              <i class="bi bi-circle"></i><span>Approved</span>
            </a>
          </li>
          <li>
            <a href="new-request.jsp">
              <i class="bi bi-circle"></i><span>New/Pending</span>
            </a>
          </li>

        </ul>
      </li><!-- End Charts Nav -->
      <li class="nav-item">
        <a class=" act " href="logout.jsp">
          <i class="fa fa-power-off poweroff" aria-hidden="true"></i>
          <span> &emsp;Logout</span>
        </a>
      </li><!-- End Dashboard Nav -->

    </ul>

  </aside><!-- End Side bar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Add Stock</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
          <li class="breadcrumb-item">Stocks</li>
          <li class="breadcrumb-item active">Add Stock</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <div class="col-lg-12">

      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Add Product</h5>

          <!-- Vertical Form -->
          <form class="row g-3"  method="post" action="assets" onsubmit="confirmation()">

            <div class="col-6">
              <label for="inputEmail4" class="form-label">Category</label>
              <select name="prod_category" id="" class="form-control" required="required" >

                <option value="" selected>--Select Category--</option>
                <option value="Monitor">Monitor</option>
                <option value="CPU">CPU</option>
                <option value="Keyboard">Keyboard</option>
                <option value="Mouse">Mouse</option>
                <option value="Headphone">Headphone</option>
                   <option value="laptop">Laptop</option>
                      <option value="Mobile Phone">Mobile Phone</option>
              </select>
            </div>
            
        
        <div class="col-6">
          <label for="inputPassword4" class="form-label">Company</label>
          <select name="prod_company" id="" class="form-control " required="required">
            <option value="selected ">--Select Company--</option>
            <option value="Dell">Dell</option>
            <option value="Asus">Asus</option>
            <option value="HP">HP</option>
            <option value="Acer">Acer</option>
            <option value="Logitech">Logitech</option>
             <option value="Samsung">Samsung</option>
              <option value="Redmi">Redmi</option>
               <option value="Realme">Realme</option>
                <option value="Vivo">Vivo</option>
                 <option value="Apple">Apple</option>
          </select>
        </div>
        <div class="col-6">
          <label for="inputNanme4" class="form-label">Product ID</label>
          <input type="text" class="form-control" id="inputNanme4" name="prod_id" onkeyup="validate_addStock(this.value)" required="required">
        <div id="info" class="text-danger pt-1 fw-bold"></div>
        </div>
        <div class="col-6">
          <label for="inputAddress" class="form-label">Status</label>
          <select name="prod_status" id="" class="form-control" required="required">

            <option value="" selected>--Product Status--</option>
            <option value="Assigned">Assigned</option>
            <option value="New">New</option>
          </select>
        </div>
        <div class="text-center py-3">
          <button type="submit" class="btn btn-primary">Submit</button>
          <button type="reset" class="btn btn-secondary">Reset</button>
        </div>
        </form><!-- Vertical Form -->
      </div>
    </div>

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
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
<script lang="JavaScript" type="text/javascript" src="assets/js/prog.js"></script>
</body>

</html>