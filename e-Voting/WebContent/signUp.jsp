<!DOCTYPE html>
<html lang="en">
<head>
<title>SignUp</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">
<!--[if lt IE 9]>
	<script type="text/javascript" src="http://info.template-help.com/files/ie6_warning/ie6_script_other.js"></script>
	<script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
</head>
<body id="page5">
	<div class="body2">
		<div class="body7">
			<div class="body3">
				<div class="body4">
					<div class="main">
						<div class="body1"></div>
						<jsp:include page="header.jsp"></jsp:include>
						<div id="banners"></div>
						<div class="container">
							<center>
								<font color="green"><h4>
										<%=(request.getAttribute("Message") != null ? request.getAttribute("Message") : "")%></h4></font>
								<h2>Registration Page</h2>
								<h3><%=(request.getAttribute("msg") != null ? request.getAttribute("msg") : "")%></h3>
								<form class="form-horizontal" action="SignUpcontroller.do"
									method="post">
									<div class="form-group">
										<span><label class="control-label col-sm-2" for="fname">First
												Name:</label></span>
										<div class="col-sm-8">
											<span><input type="text" class="form-control"
												id="fname" placeholder="Enter your First name @sAm"
												name="fname" required="true"></span>
										</div>
									</div>
									<div class="form-group">
										<span><label class="control-label col-sm-2" for="lname">Last
												Name:</label></span>
										<div class="col-sm-8">
											<span><input type="text" class="form-control"
												id="lname" placeholder="Enter your Last name" name="lname"
												required="true"></span>
										</div>
									</div>
									<div class="form-group">
										<span><label class="control-label col-sm-2" for="email">Email:</label></span>
										<div class="col-sm-8">
											<span><input type="email" class="form-control"
												id="email" placeholder="Enter E-mail" name="email"
												required="true"></span>
										</div>
									</div>
									<div class="form-group">
										<span><label class="control-label col-sm-2" for="pwd">Password:</label></span>
										<div class="col-sm-8">
											<span><input type="password" class="form-control"
												id="password" onkeypress="validateLength();"
												onblur="clearMessage();" placeholder="Enter your password"
												name="password" required="true"></span>
										</div>
										<span id="passLengthMessage" />
									</div>
									<div class="form-group">
										<span><label class="control-label col-sm-2" for="pwd">Confirm
												Password:</label></span>
										<div class="col-sm-8">
											<span><input type="password" class="form-control"
												id="cpassword" min="6" placeholder="Enter your re-password"
												name="cpassword" required="true"></span>
										</div>
										<span id="passMessage" />
									</div>
									<div class="form-group">
										<span><label class="control-label col-sm-2" for="cnct">Adhaar:</label></span>
										<div class="col-sm-8">
											<span><input type="number" class="form-control"
												id="adhaar" min="10" placeholder="Enter adhaar no."
												name="adhaar" required="true"></span>
										</div>
									</div>
									<div class="form-group">
										<span><label class="control-label col-sm-2" for="cnct">Contact:</label></span>
										<div class="col-sm-8">
											<span><input type="number" class="form-control"
												id="phone" min="10" placeholder="Enter phone no."
									
									
												name="phone" required="true"></span>
										</div>
									</div>
									<div class="form-group">
										<span><label class="control-label col-sm-2" for="add">Address:</label></span>
										<div class="col-sm-8">
											<span><input type="text" class="form-control"
												id="address" placeholder="Enter Address" name="address"
												></span>
										</div>
									</div>
								</div>
								<center>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10"></div>
								<button type="submit" class="btn btn-default"
									onclick="return validation()">Submit</button>
							</div>
						</div>
						</center>
						
					<!--End Main Container -->

				</div>
			</div>
		</div>
	</div>
	</div>
	<div class="body5">
		<div class="body6">
			<div class="main">
				<jsp:include page="footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>