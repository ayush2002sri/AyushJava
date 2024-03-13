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
<title>Forgot Password</title>

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
						"
                        class="img-fluid " alt="Sample image">
				</div>
				<div class="col-md-8 col-lg-6 col-xl-5 ">
					<form class=" px-lg-3 " method="post" action="RecoverPassword.jsp">
						<div class="text-center my-4">
							<h1>
								<u>Forgot Password?</u>
							</h1>
							<br>
							<h5 class="">Enter your Email and we'll ask your Security
								Question to reset your Password.</h5>
						</div>
						<!-- Email input -->
						<div class="form-outline mb-4 mx-auto  fw-bold"
							style="font-size: 18px;">
							<h5>
								<label class="form-label" for="form3Example3">Email
									Id</label>
							</h5>
							<input type="email" id="txt_email" name="txt_email"
								class="form-control form-control-lg"
								placeholder="Enter your email id" />
						</div>
						<div class=" text-center my-3" id="info">
						</div>
						<div class="text-center fw-bold mt-4 pt-2 mx-auto ">
							<center>
								<p class="text-center btn btn-dark " onclick="getQuest();">Get
									Question</p>
							</center>
						</div>
					</form>
					<center>
					 <a href="login2.jsp"><button class="btn btn-dark">Back
										to Login</button></a>
										</center>
				</div>
			</div>
		</div>
	</section>
	<script src="assets/js/prog.js"></script>
</body>
</html>