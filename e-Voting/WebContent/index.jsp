<!DOCTYPE html>
<html lang="en">
<head>
<title>Main</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
<!--[if lt IE 9]>
	<script type="text/javascript" src="http://info.template-help.com/files/ie6_warning/ie6_script_other.js"></script>
	<script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
</head>
<body id="page1">
	<div class="body2">
		<div class="body7">
			<div class="body3">
				<div class="body4">
					<div class="main">
						<div class="body1"></div>
						<jsp:include page="header.jsp"></jsp:include>

						<center>
							<font color="green"><h2>
									<%=(request.getAttribute("Message") != null ? request.getAttribute("Message") : "")%></h2></font>
						</center>

						<font color="red"><h2><%=(request.getAttribute("ErrorMessage") != null ? request.getAttribute("ErrorMessage") : "")%></h2></font>
						<!-- content -->
						<section id="content">
							<div class="wrapper">
								<div class="box_shadow">
									<div class="box">
										<div class="wrapper">
											<div class="pad_right">
												<h2>Main Principle - Stability in the Future!</h2>
												<div class="wrapper pad_bot1">
													<figure class="left marg_right1">
														<img src="images/page1_img1.jpg" alt="">
													</figure>
													<p>At vero eoset accusamus iusto odio dignissimos
														ducimus qui blanditiis praese ntium voluptatum deleniti
														atque corrupti quos dolores et quas molestias exceuri sint
														occaecati cupiditate non provident, similique sunt in
														culpa officia deserunt mollitia ducimus qui.</p>
												</div>
											</div>
											<h2>Our Latest News</h2>
											<div class="wrapper">
												<article class="cols">
													<figure>
														<img src="images/page1_img2.jpg" alt="" class="pad_bot1">
													</figure>
													<p class="font1">At vero eoset accusamus iusto</p>
													<p>Odio dignissimos ducimus qui blanditiis praese ntium
														voluptatum deleniti digiatque corrupti quos dolores.</p>
												</article>
												<article class="cols pad_left1">
													<figure>
														<img src="images/page1_img3.jpg" alt="" class="pad_bot1">
													</figure>
													<p class="font1">Quas molestias exceuri</p>
													<p>Sint occaecati cupiditate rovident similique suculpa
														officia deserunt mollitia ducimus qui blanditiis animi, id
														blanditiis.</p>
												</article>
												<article class="cols pad_left1">
													<figure>
														<img src="images/page1_img4.jpg" alt="" class="pad_bot1">
													</figure>
													<p class="font1">Nam libero tempore, cum soluta</p>
													<p>Hobis est eligendi optio cumque nihmpedit quo.minus
														id quod maxime placeat facere possimus, omnis.</p>
												</article>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="wrapper line1">
								<article class="col1 pad_left2">
									<h2>Overall Fundraising Leaders</h2>
									<div class="wrapper pad_bot1">
										<figure class="left marg_right1">
											<img src="images/page1_img5.jpg" alt="">
										</figure>
										<p class="font1">Jason Lorre</p>
										<p>Feum voluptatum deleniti digiatque corrupti quos
											dolores et quas molestias exceuri sint occaecati cupiditate
											non provident, similique sunt in culpa officia deserunt .</p>
									</div>
									<div class="wrapper pad_bot1">
										<figure class="left marg_right1">
											<img src="images/page1_img6.jpg" alt="">
										</figure>
										<p class="font1">Leonard Betts</p>
										<p>Nam libero tempore, cum soluta nobis est eligendi optio
											cumque nihil impedit quo. Lorem ipsum dolor sit amet,
											consectetur adipisicing elit.</p>
									</div>
									<div class="wrapper">
										<figure class="left marg_right1">
											<img src="images/page1_img7.jpg" alt="">
										</figure>
										<p class="font1">Howard Dogget</p>
										<p>Sed ut perspiciatis unde omnis iste natus error sit
											voluptatem accusantium doloremque laudantium, totam rem
											aperiam, eaque ipsa quae ab illo inventore.</p>
									</div>
								</article>
								<article class="col2 pad_left3">
									<h2>State Results</h2>
									<p>Lorem ipsum dolor amet, consectetuer adipi scingelit
										praesent vestibu lumolestie lacus.</p>
									<ul class="list1 pad_bot1">
										<li><a href="#">Fusce euismod consequat teoremsum dol</a></li>
										<li><a href="#">Or st ameui onecuedipiscing
												elitellent</a></li>
										<li><a href="#">Esqesed dolorliquam congue fermentumn</a></li>
										<li><a href="#">Mauris accumsan nulla vel diam</a></li>
										<li><a href="#">Sed in lacus ut enim adipiscing
												aliquetulla</a></li>
										<li><a href="#">Venenatisn pede mi, aliquet sit amet,
												eui</a></li>
									</ul>
									<p>Phasellus portaus ce suscipit varius mi scetur ridiculus
										mus nulla dui.</p>
									<ul class="list1">
										<li><a href="#">Esqesed dolorliquam congue fermentumn</a></li>
										<li><a href="#">Mauris accumsan nulla vel diam</a></li>
										<li><a href="#">Sed in lacus ut enim adipiscing
												aliquetulla</a></li>
										<li><a href="#">Venenatisn pede mi, aliquet sit amet,
												eui</a></li>
									</ul>
								</article>
							</div>
						</section>
						<!-- / content -->
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