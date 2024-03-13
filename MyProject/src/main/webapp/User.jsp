
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
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
.userTable {
	margin: 75px 0px;
}

.display {
	margin-top: 60px;
}

.card-body {
	padding: 0 20px 0px 20px;
}
</style>

</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header"
		class="header fixed-top d-flex align-items-center justify-content-between">

		<div class="d-flex align-items-center justify-content-between">
			<a href="User.jsp" class="logo d-flex align-items-center"> <img
				src="assets/img/images.png" alt="" class="img-fluid ">
			</a>
		</div>
		<!-- End Logo -->
		<h3 class="mb-0 fw-bold" style="color: #012970;">USER PANEL</h3>
		<div>
			<ul class="d-flex align-items-center" style="list-style: none">
				<li class="nav-item dropdown pe-3 pt-2"><a
					class="nav-link nav-profile d-flex align-items-center pe-0"
					href="#" data-bs-toggle="dropdown"> <span
						class="d-none d-md-block dropdown-toggle ps-2"
						style="color: #012970;"><%=email%></span>
				</a> <!-- End Profile Iamge Icon -->

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li class="dropdown-header">
							<h6 style="color: #012970;">Employee</h6>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><p data-bs-toggle="modal" data-bs-target="#exampleModal2"
								class="dropdown-item d-flex align-items-center">
								<i class="bi bi-box-arrow-right"></i> <span>Sign Out</span>
							</p></li>
					</ul> <!-- End Profile Dropdown Items --></li>
				<!-- End Profile Nav -->

			</ul>
		</div>

		<!-- End Icons Navigation -->

	</header>
	<br>
	<br>
	<!-- End Header -->

	<div class="container-fluid ">
		<div class="row">
			<div class="col-lg-3 col-xl-3 col-xxl-3 col-md-3 mt-5"></div>
			<div class="col-lg-6 userTable">
				<div class="card">

					<div class="card-body mt-3">

						<button data-bs-toggle="modal" data-bs-target="#exampleModal"
							class="btn btn-secondary float-end">Send Request</button>


						<!-- Table with stripped rows -->
						<table class="table table-striped display text-center"
							id="example">

							<thead>
								<tr>
									<td colspan=3><h4 class="fw-bold">ASSIGNED PRODUCTS</h4></td>
								</tr>
								<tr>
									<th scope="col">S.No.</th>
									<th scope="col">Product</th>
									<th scope="col">Product ID</th>
								</tr>
							</thead>
							<tbody>
								<%
								Statement st = con.createStatement();
								String q = "select * from new_assigning where Email_Id='" + email + "'";
								ResultSet rp = st.executeQuery(q);
								while (rp.next()) {
								%>

								<tr>
									<td>1</td>
									<td>Monitor</td>
									<td><%=rp.getString(4)%></td>


								</tr>
								<tr>
									<td>2</td>
									<td>CPU</td>
									<td><%=rp.getString(5)%></td>


								</tr>
								<tr>
									<td>3</td>
									<td>Mouse</td>
									<td><%=rp.getString(7)%></td>


								</tr>
								<tr>
									<td>4</td>
									<td>Keyboard</td>
									<td><%=rp.getString(6)%></td>


								</tr>
								<tr>
									<td>5</td>
									<td>Laptop</td>
									<td><%=rp.getString(9)%></td>


								</tr>
								<tr>
									<td>6</td>
									<td>Mobile Phone</td>
									<td><%=rp.getString(10)%></td>


								</tr>
								<tr>
									<td>7</td>
									<td>Headphone</td>
									<td><%=rp.getString(10)%></td>


								</tr>

								<%
								}
								%>

							</tbody>
						</table>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Request For a
						Product</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="container-fluid ">
						<div class="row">

							<div class="col-lg-12 col-md-12 col-xl-12 col-xxl-12">

								<div class="card">
									<div class="card-body">



										<form class="row g-3" method="post" action="request">

											<div class="col-12">
												<label for="name" class="form-label mt-3">Name </label> <input
													type="text" id="name" class="form-control" name="text_name"
													placeholder="Enter Your Name">
											</div>
											<div class="col-12">
												<label for="empId" class="form-label">Employee Id </label> <input
													type="text" id="empId" class="form-control"
													name="text_empId" placeholder="Enter Your Employee Id">
											</div>
											<div class="col-12 ">
												<label for="product" class="form-label ">Which
													Product You are Requesting For? </label> <select
													name="prod_category" id="product" class="form-control">

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
											<div class="col-12">
												<label for="reason" class="form-label">What's the
													Problem With Your Existing Product? </label> <input type="text"
													id="reason" class="form-control" name="text_reason">
											</div>
											<div class="col-12">
												<label for="return_prod" class="form-label">
													Existing Product Id </label> <input type="text" id="return_prod"
													class="form-control" name="text_returnId">
											</div>
											<div class="text-center py-3">
												<input type="submit" class="btn btn-primary" value="Send">
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%String value=request.getParameter("decision");
       if(value!=null&&value.equals("Yes")){
    	   session.invalidate();
    	   response.sendRedirect("/MyProject/login2.jsp");
    	  
       }
       else if(value!=null&&value.equals("No")){
    	   response.sendRedirect("/MyProject/User.jsp");
       }
       else{}
      
       %>
	<!-- Modal 2 -->
	<div class="modal fade" id="exampleModal2" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">Logout</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center">



					<p class="fw-bold my-3">Are you sure you want to logout ?</p>
					<div>
						<form>

							<input type="radio" id="yes" name="decision" value="Yes">
							<label for="yes"> Yes</label> &emsp; <input type="radio" id="no"
								name="decision" value="No"> <label for="no"> No</label><br>
							<input type="submit" value="Submit" class="my-3">
						</form>
					</div>


					<!-- End Left side columns -->




				</div>


			</div>
		</div>
	</div>



	<!-- Vendor JS Files -->

	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/quill/quill.min.js"></script>
	<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="assets/vendor/tinymce/tinymce.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>
	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
	<script type="text/javascript">
    history.pushState(null, null, location.href);
    window.onpopstate = function () {
        history.go(1);
        window.location.href = "/MyProject/login2.jsp"; // Replace "/desired-page" with the URL you want to redirect to
    };
</script>
	
</body>

</html>