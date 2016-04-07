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
							<li><a href="/emt/user/member/userReview">복습</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
					<!-- Navbar Right Menu -->
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">

							<c:choose>
								<c:when test="${sessionScope.sid==null }">
									<li><a href="/emt/login/login"> 로그인 </a></li>
									<li><a href="/emt/join/join"> 회원가입 </a>
									</li>
									<!-- 회원가입 -->
								</c:when>
								<c:otherwise>
									<li><a href="#"> 마이페이지 </a></li>
									<li id="logout"><a href=""> 로그아웃 </a>
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
			<!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<c:url value="/css/AdminLTE.min.css"/>">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<c:url value="/css/_all-skins.min.css"/>">
 <!-- TABLE: LATEST ORDERS -->
              <div class="box box-info" style="margin-top: 50px;">
                <div class="box-header with-border">
                  <h3 class="box-title">복습코너</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <div class="table-responsive">
                    <table class="table no-margin">
                      <thead>
                        <tr>
                          <th>문제번호</th>
                          <th>문제유형</th>
                          <th>문제제목</th>
                          <th>다시보기</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>01</td>
                          <td><span class="label label-success">파트1</span></td>
                          <td>문제 읽기</td>
                          <td><div class="sparkbar" data-color="#00a65a" data-height="20">문제 다시풀기</div></td>
                        </tr>
                        <tr>
                          <td>02</td>
                          <td><span class="label label-warning">파트2</span></td>
                          <td>사진묘사하기</td>
                          <td><div class="sparkbar" data-color="#f39c12" data-height="20">문제 다시풀기</div></td>
                        </tr>
                        <tr>
                          <td>03</td>
                          <td><span class="label label-danger">파트3</span></td>
                          <td>질문에 답변하기</td>
                          <td><div class="sparkbar" data-color="#f56954" data-height="20">문제 다시풀기</div></td>
                        </tr>
                        <tr>
                          <td>04</td>
                          <td><span class="label label-info">파트4</span></td>
                          <td>표를 보고 문제 해결하기</td>
                          <td><div class="sparkbar" data-color="#00c0ef" data-height="20">문제 다시풀기</div></td>
                        </tr>
                      </tbody>
                    </table>
                  </div><!-- /.table-responsive -->
                </div><!-- /.box-body -->
				

				
				<!-- /.content -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer" style="margin-top: 200px;">
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