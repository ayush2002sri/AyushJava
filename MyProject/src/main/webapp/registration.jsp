
<!DOCTYPE html>
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
<title>Registration</title>
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
					<form class="  px-lg-3" method="post" action="Register"
						onsubmit="return Registration()">
						<div class="text-center my-4">
							<h1>
								<u>REGISTER</u>
							</h1>
							<%@include file="message.jsp"%>
							<div id="setContent" class="text-danger fw-bold"></div>
							<!-- <h4>Please Enter Your Email and Password</h4> -->
						</div>




						<div class="form-outline mb-4 mx-auto  fw-bold"
							style="font-size: 18px;">
							<label class="form-label" for="Name">Name</label> <input
								type="text" id="Name" name="txt_name"
								class="form-control form-control-lg"
								placeholder="Enter your Name" required="required" />

						</div>
						<!-- Email input -->
						<div class="form-outline mb-4 mx-auto  fw-bold"
							style="font-size: 18px;">
							<label class="form-label" for="email">Email</label> <input
								type="email" id="email" name="txt_email"
								class="form-control form-control-lg"
								placeholder="Enter your email id" required="required"
								onkeyup="validate_email(this.value)" />
							<div class="text-danger" id="info"></div>
						</div>

						<!-- Password input -->
						<div class="row">
							<div class=" col-lg-6 col-xl-6 ">
								<div class="form-outline mb-3  fw-bold "
									style="font-size: 18px;">
									<label class="form-label" for="password">Password</label> <input
										type="password" id="password" name="txt_password"
										class="form-control form-control-lg "
										placeholder="Enter password" required="required" />


								</div>
							</div>
							<div class="col-lg-6 col-xl-6 ">
								<div class=" mb-3  fw-bold " style="font-size: 18px;">
									<label class="form-label" for="confirm"> Confirm
										Password</label> <input type="password" id="confirm"
										name="txt_confirmpassword"
										class="form-control form-control-lg"
										placeholder="Re-Enter password" required="required" />
								</div>
							</div>

						</div>
						<div class="col-12 ">
							<label for="SecurityQuestion" class="form-label fw-bold"
								style="font-size: 18px;">Security Question</label> <select
								id="SecurityQuestion" class="form-control"
								name="txt_securityQues" required="required">

								<option value="" selected>--Select Security Question--</option>
								<option value="Which was your First School?">Which was
									your First School?</option>
								<option value="What is your Nickname">What is your
									Nickname?</option>
								<option value="Your Favourite book?">Your Favourite
									book?</option>
								<option value="Your Pet Name?">Your Pet Name?</option>


							</select>
						</div>
						<div class="form-outline mb-4 mx-auto  fw-bold mt-3"
							style="font-size: 18px;">
							<label class="form-label" for="answer">Answer</label> <input
								type="text" id="answer" name="txt_securityAns"
								class="form-control form-control-lg"
								placeholder="Enter your Answer" required="required" />

						</div>
						<!-- Password input -->



						<div class="text-center text-lg-start mt-4 pt-2 mx-auto ">
							<input type="submit" value="Register"
								class="btn btn-lg bg-primary fw-bold w-100 loginbtn"
								style="padding-left: 2.5rem; padding-right: 2.5rem;">

							<p class="small fw-bold mt-2 pt-1 mb-0 fw-bold mt-3"
								style="font-size: 18px;">
								Already have an account? <a href="login2.jsp"
									class="link-primary fw-bold">Sign in</a>
							</p>
						</div>

					</form>
				</div>
			</div>
		</div>

	</section>
	<script lang="JavaScript" type="text/javascript"
		src="assets/js/prog.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>