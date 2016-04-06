<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="<c:url value="/css/AdminLTE.min.css"/>">
<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="<c:url value="/css/_all-skins.min.css"/>">

<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav">
	<div class="wrapper">
		<header class="main-header">
			<nav class="navbar navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<a href="../../index2.html" class="navbar-brand"><b>English</b>Mock
							Test</a>
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar-collapse">
							<i class="fa fa-bars"></i>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse pull-left"
						id="navbar-collapse">
						<ul class="nav navbar-nav">
							<li><a href="#">토익스피킹 모의고사</a></li>
							<li><a href="#">문제공유</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">파트별문제풀기 <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Part1</a></li>
									<li><a href="#">Part2</a></li>
									<li><a href="#">Part3</a></li>
									<li><a href="#">Part4</a></li>
									<li><a href="#">Part5</a></li>
									<li><a href="#">Part6</a></li>
								</ul></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
					<!-- Navbar Right Menu -->
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">

							<c:choose>
								<c:when test="${sessionScope.sid==null }">
									<li><a href="#"> 로그인 </a></li>
									<li class="dropdown notifications-menu">
										<!-- Menu toggle button --> <a href="#"
										class="dropdown-toggle" data-toggle="dropdown"> 회원가입 </a>
									</li>
									<!-- 회원가입 -->
								</c:when>
								<c:otherwise>
									<li><a href="#"> 마이페이지 </a></li>
									<li class="dropdown notifications-menu">
										<!-- Menu toggle button --> <a href="#"
										class="dropdown-toggle" data-toggle="dropdown"> 로그아웃 </a>
									</li>
									<!-- 회원가입 -->
								</c:otherwise>
							</c:choose>

						</ul>
					</div>
					<!-- /.navbar-custom-menu -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>
		<!-- Full Width Column -->
		<div class="content-wrapper">
			<div class="container">
				<!-- Content Header (Page header) -->
				<section class="content-header"></section>

				<!-- Main content -->
				<section class="content">
					<!-- 이미지 슬라이드 -->
					<div class="box box-info">
						<div class="box-header with-border">
							<h3 class="box-title">1234</h3>
							<div class="box-tools pull-right">
								<button class="btn btn-box-tool" data-widget="collapse">
									<i class="fa fa-minus"></i>
								</button>
								<button class="btn btn-box-tool" data-widget="remove">
									<i class="fa fa-times"></i>
								</button>
							</div>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="box-body">
								<div id="carousel-example-generic" class="carousel slide"
									data-ride="carousel">
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0"
											class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"
											class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="2"
											class=""></li>
									</ol>
									<div class="carousel-inner">
										<div class="item active">
											<img src="Tulips.jpg" alt="First slide">
											<div class="carousel-caption">First Slide</div>
										</div>
										<div class="item">
											<img
												src="http://placehold.it/900x500/3c8dbc/ffffff&text=I+Love+Bootstrap"
												alt="Second slide">
											<div class="carousel-caption">Second Slide</div>
										</div>
										<div class="item">
											<img
												src="http://placehold.it/900x500/f39c12/ffffff&text=I+Love+Bootstrap"
												alt="Third slide">
											<div class="carousel-caption">Third Slide</div>
										</div>
									</div>
									<a class="left carousel-control"
										href="#carousel-example-generic" data-slide="prev"> <span
										class="fa fa-angle-left"></span>
									</a> <a class="right carousel-control"
										href="#carousel-example-generic" data-slide="next"> <span
										class="fa fa-angle-right"></span>
									</a>
								</div>
							</div>
							<!-- /.box-body -->
							<!-- /.table-responsive -->
						</div>
						<!-- /.box-body -->

					</div>
					<!-- 두번째 꺼 -->
					<div class="row">
						<div class="col-md-6">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">Latest Orders</h3>
									<div class="box-tools pull-right">
										<button class="btn btn-box-tool" data-widget="collapse">
											<i class="fa fa-minus"></i>
										</button>
										<button class="btn btn-box-tool" data-widget="remove">
											<i class="fa fa-times"></i>
										</button>
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<div class="table-responsive">
										<table class="table no-margin">
											<thead>
												<tr>
													<th>Order ID</th>
													<th>Item</th>
													<th>Status</th>
													<th>Popularity</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><a href="pages/examples/invoice.html">OR9842</a></td>
													<td>Call of Duty IV</td>
													<td><span class="label label-success">Shipped</span></td>
													<td><div class="sparkbar" data-color="#00a65a"
															data-height="20">90,80,90,-70,61,-83,63</div></td>
												</tr>
												<tr>
													<td><a href="pages/examples/invoice.html">OR1848</a></td>
													<td>Samsung Smart TV</td>
													<td><span class="label label-warning">Pending</span></td>
													<td><div class="sparkbar" data-color="#f39c12"
															data-height="20">90,80,-90,70,61,-83,68</div></td>
												</tr>
												<tr>
													<td><a href="pages/examples/invoice.html">OR7429</a></td>
													<td>iPhone 6 Plus</td>
													<td><span class="label label-danger">Delivered</span></td>
													<td><div class="sparkbar" data-color="#f56954"
															data-height="20">90,-80,90,70,-61,83,63</div></td>
												</tr>
												<tr>
													<td><a href="pages/examples/invoice.html">OR7429</a></td>
													<td>Samsung Smart TV</td>
													<td><span class="label label-info">Processing</span></td>
													<td><div class="sparkbar" data-color="#00c0ef"
															data-height="20">90,80,-90,70,-61,83,63</div></td>
												</tr>
											</tbody>
										</table>
									</div>
									<!-- /.table-responsive -->
								</div>
								<!-- /.box-body -->
							</div>
						</div>
						<!-- 두번째꺼 -->

						<!-- 두번째 꺼 -->
						<div class="col-md-6">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">Latest Orders</h3>
									<div class="box-tools pull-right">
										<button class="btn btn-box-tool" data-widget="collapse">
											<i class="fa fa-minus"></i>
										</button>
										<button class="btn btn-box-tool" data-widget="remove">
											<i class="fa fa-times"></i>
										</button>
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<div class="table-responsive">
										<table class="table no-margin">
											<thead>
												<tr>
													<th>Order ID</th>
													<th>Item</th>
													<th>Status</th>
													<th>Popularity</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><a href="pages/examples/invoice.html">OR7429</a></td>
													<td>iPhone 6 Plus</td>
													<td><span class="label label-danger">Delivered</span></td>
													<td><div class="sparkbar" data-color="#f56954"
															data-height="20">90,-80,90,70,-61,83,63</div></td>
												</tr>
												<tr>
													<td><a href="pages/examples/invoice.html">OR7429</a></td>
													<td>Samsung Smart TV</td>
													<td><span class="label label-info">Processing</span></td>
													<td><div class="sparkbar" data-color="#00c0ef"
															data-height="20">90,80,-90,70,-61,83,63</div></td>
												</tr>
												<tr>
													<td><a href="pages/examples/invoice.html">OR1848</a></td>
													<td>Samsung Smart TV</td>
													<td><span class="label label-warning">Pending</span></td>
													<td><div class="sparkbar" data-color="#f39c12"
															data-height="20">90,80,-90,70,61,-83,68</div></td>
												</tr>
												<tr>
													<td><a href="pages/examples/invoice.html">OR7429</a></td>
													<td>iPhone 6 Plus</td>
													<td><span class="label label-danger">Delivered</span></td>
													<td><div class="sparkbar" data-color="#f56954"
															data-height="20">90,-80,90,70,-61,83,63</div></td>
												</tr>
											</tbody>
										</table>
									</div>
									<!-- /.table-responsive -->
								</div>
								<!-- /.box-body -->
							</div>
						</div>
						<!-- 두번째꺼 -->
					</div>



				</section>
				<!-- /.content -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="container">
				<div class="pull-right hidden-xs">
					<b>Version</b> 2.3.0
				</div>
				<strong>Copyright &copy; 2014-2015 <a
					href="http://almsaeedstudio.com">Almsaeed Studio</a>.
				</strong> All rights reserved.
			</div>
			<!-- /.container -->
		</footer>
	</div>
	<!-- ./wrapper -->

<c:url value="/css/bootstrap.min.css"/>

	<!-- jQuery 2.1.4 -->
	<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!-- Bootstrap 3.3.5 -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- SlimScroll -->
	<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="plugins/fastclick/fastclick.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/app.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>