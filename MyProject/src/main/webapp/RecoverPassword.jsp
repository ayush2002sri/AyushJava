
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Recover Password</title>
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
<script lang="JavaScript" type="text/javascript">
		function  crossCheckPass()
			{
				if(document.getElementById("ps1").value != document.getElementById("ps2").value)
					{
					
						alert("Password Mismatch!");
						
						return false;
					}
				else
					{
					
						return true;
					}
			
			}

</script>
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
				<%
				
						String uid=request.getParameter("txt_email");
						String answer=request.getParameter("txt_answer");
					
						Connection cn=(Connection)application.getAttribute("CONN");
					
						PreparedStatement ps=cn.prepareStatement("select * from registration  where Email=? and Security_Answer=?");
						ps.setString(1, uid);
						ps.setString(2, answer);
						
						ResultSet rs=ps.executeQuery();
						if(rs.next())
							{
								%>
					<form class=" px-lg-3 " method="post" action="UpdatePassword.jsp" onsubmit="return crossCheckPass()">
					<input type="hidden" name="hid_uid" value="<%=uid%>">
									
						<div class="text-center my-4">
							<h1>
								<u>Recover Password</u>
							</h1>
							<!-- <h4>Please Enter Your Email and Password</h4> -->
						</div>



						<!-- Email input -->
						<div class="form-outline mb-4 mx-auto  fw-bold"
							style="font-size: 18px;">
							<h5>
								<label class="form-label" for="ps1">Enter New Password
									</label>
							</h5>
							<input type="password" id="ps1" name="txt_pass1"
								class="form-control form-control-lg"
								placeholder="Enter New Password" required="required" />

						</div>

						<!-- Password input -->
						<div class="form-outline mb-3  fw-bold" style="font-size: 18px;">
							<label class="form-label" for="ps2">Re-enter Your Password</label> 
							<input
								type="password" id="ps2" name="txt_pass2"
								class="form-control form-control-lg"
								placeholder="Re-Enter Your Password" required="required" />

						</div>

						

						<div class="text-center text-lg-start mt-4 pt-2 mx-auto ">
							<input type="submit" value="Update Password"
								class="btn btn-lg bg-primary fw-bold w-100 loginbtn"
								style="padding-left: 2.5rem; padding-right: 2.5rem;">
						
						</div>

					</form>
					<%
							}
						else
						{
							
							%>
							
							<h3 align="center"><font color="red">Wrong Answer! <a href="ForgotPassword.jsp" >Try Again!</a></font></h3>
							<%
						}
				%>
				</div>
			</div>
		</div>
	</section>
<script lang="JavaScript" type="text/javascript" src="js/prog.js"></script>
</body>
</html>