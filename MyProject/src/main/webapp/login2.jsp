
<!DOCTYPE html>
<%@page import="javax.swing.JOptionPane"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<title>LOGIN</title>
<style>
.divider:after, .divider:before {
	content: "";
	flex: 1;
	height: 1px;
	background: #eee;
}

.h-custom {
	height: calc(100% - 73px);
}

.loginbtn {
	border-radius: 35px;
	color: white;
	/* background-color: aquamarine; */
}

body {
	background-color: aliceblue;
}

.form-control {
	border-radius: 30px !important;
	font-size: 18px;
}

@media ( max-width : 450px) {
	.h-custom {
		height: 100%;
	}
}
</style>
</head>

<body>


	<section class="vh-100">
		<div class="container-fluid h-custom">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-md-9 col-lg-6 col-xl-5">
					<img
						src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
						class="img-fluid" alt="Sample image">
				</div>
				<div class="col-md-8 col-lg-6 col-xl-5 ">
					<form class=" px-lg-3 " method="post" action="login">
						<div class="text-center my-4">
							<h1>
								<u>LOGIN</u>
							</h1>
							<!-- <h4>Please Enter Your Email and Password</h4> -->
						</div>

                           <div class="text-center text-danger my-4">
							<h5>
								<%
								String value=request.getParameter("login");
								if(value!=null&&value.equals("false")){
								%>
								<span>Sorry Wrong Email Id Or Password !</span>
								<%} %>
								<%if(value==null){ %>
								
								<%} %>
							</h5>
						</div>

						<!-- Email input -->
						<div class="form-outline mb-4 mx-auto  fw-bold"
							style="font-size: 18px;">
							<h5>
								<label class="form-label" for="form3Example3">Email
									address</label>
							</h5>
							<input type="email" id="form3Example3" name="txt_email"
								class="form-control form-control-lg"
								placeholder="Enter your email id" required="required" />

						</div>

						<!-- Password input -->
						<div class="form-outline mb-3  fw-bold" style="font-size: 18px;">
							<label class="form-label" for="form3Example4">Password</label> <input
								type="password" id="form3Example4" name="txt_password"
								class="form-control form-control-lg"
								placeholder="Enter password" required="required" />

						</div>

						<div
							class="d-flex justify-content-between align-items-center mx-auto ">
							<!-- Checkbox -->
							<div class="form-check mb-0 fw-bold mt-2"
								style="font-size: 18px;">
								<input class="form-check-input me-2" type="checkbox" value=""
									id="form2Example3" /> <label class="form-check-label"
									for="form2Example3"> Remember me </label>
							</div>
							<a href="ForgotPassword.jsp" class="text-body fw-bold">Forgot
								password?</a>
						</div>

						<div class="text-center text-lg-start mt-4 pt-2 mx-auto ">
							<input type="submit" value="Login"
								class="btn btn-lg bg-primary fw-bold w-100 loginbtn"
								style="padding-left: 2.5rem; padding-right: 2.5rem;">
							<p class="small fw-bold mt-2 pt-1 mb-0 fw-bold mt-3"
								style="font-size: 18px;">
								Don't have an account? <a href="/MyProject/registration.jsp"
									class="link-primary fw-bold">Register</a>
							</p>
						</div>
					</form>
				</div>
			</div>
		</div>

	</section>

</body>

</html>