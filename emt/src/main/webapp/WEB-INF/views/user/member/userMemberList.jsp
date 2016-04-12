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
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="<c:url value="/js/logout.js"/>"></script>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->


<body class="hold-transition skin-blue layout-top-nav">
	<div class="wrapper">
		<header class="main-header">
			<nav class="navbar navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<a href="index" class="navbar-brand"><b>English</b>Mock Test</a>
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
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">게시판<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">공지사항</a>
									<li><a href="#">문제공유</a>
								</ul></li>
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
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">${sid }</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="userWrong">복습</a></li>
									<li><a href="userModify">정보수정</a></li>
									<li><a href="logout">로그아웃</a></li>
								</ul></li>
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

					<div class="box box-info">
						<div class="box-header with-border">
							<h3 class="box-title">내정보 수정</h3>
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
						<form action="update" method="post">
						<div class="box-body">
							<div class="table-responsive">

								<table class="table no-margin">
									<thead>
										<tr>
											<td><b>아이디</b></td>
											<td><input type="text" name="userId" value=${user.userId } readonly></td>
										</tr>
										<tr>
											<td><b>현재 비밀번호</b></td>
											<td><input type="password" value=${user.userPw } readonly></td>
										</tr>
										
										<tr>
											<td><b>가입일자</b></td>
											<td><input type="text" value=${user.userDate } readonly></td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><b>새 비밀번호(수정 가능)</b></td>
											<td><input type="password" name="userPw" placeholder="입력" required></td>
										</tr>
										<tr>
											<td><b>새 비밀번호 확인(수정 가능)</b></td>
											<td><input type="password" placeholder="입력" required></td>
										</tr>
										<tr>

										</tr>

										<tr>
											<td><b>이메일(수정 가능)</b></td>
											<td><input type="text" name="email" value=${user.email } required></td>
										</tr>

									</tbody>
								</table>
								
							</div>
							<div style="text-align: right;">

								<input type="submit" class="btn btn-default" value="수정">			 
								<button class="btn btn-default"  onclick="location.href='index'">취소</button>
								
							</div>
							
							<!-- /.table-responsive -->
						</div>
						</form>
						<!-- /.box-body -->
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

	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<!-- Bootstrap 3.3.5 -->
	<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
	<!-- SlimScroll -->
	<script src="<c:url value="/js/jquery.slimscroll.min.js"/>"></script>
	<!-- FastClick -->
	<script src="<c:url value="/js/fastclick.min.js"/>"></script>
	<!-- AdminLTE App -->
	<script src="<c:url value="/js/app.min.js"/>"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="<c:url value="/js/demo.js"/>"></script>
	
	