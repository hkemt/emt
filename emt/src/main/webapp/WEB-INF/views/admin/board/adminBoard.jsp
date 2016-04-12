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
						<a href="../admin/adminMain.html" class="navbar-brand"><b>English</b>Mock
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
							<li><a href="../adminMember">회원관리</a></li>
							<li><a href="../adminQuestion">문제관리</a></li>
							<li><a href="../adminBoard">게시판관리</a></li>
							
						</ul>
					</div>
					<!-- /.navbar-collapse -->
					<!-- Navbar Right Menu -->
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
<!-- 									<li><a href="login.html"> 로그인 </a></li>
									<li><a href="join.html"> 회원가입 </a> -->
									</li>
									<!-- 회원가입 -->
									<!-- <li><a href="#"> 마이페이지 </a></li>
									<li id="logout"><a href=""> 로그아웃 </a>
									</li> -->
									<!-- 회원가입 -->
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
							<h3 class="box-title">게시판관리 게시판목록보기</h3>
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
		<th></th>
		<th>게시판번호</th>
		<th>제목</th>
		<th>내용</th>
		<th>아이디</th>
		<th>날짜</th>
		<th>조회수</th>

	</tr>
									</thead>
									<tbody>
	<c:forEach var="board" items="${board }">
	<tr>
		<td><input type="radio" name="boardNo" value="${board.boardNo }"></td>
		<td>${board.boardNo }</td>
		<td>${board.boardTitle }</td>
		<td>${board.boardContent }</td>
		<td>${board.userId }</td>
		<td>${board.boardDate }</td>
		<td>${board.boardCount }</td>

	</tr>
	</c:forEach>
									</tbody>
								</table>
							</div>
							<input type="button" onclick="location.href='adminBoardList.html'" style="float: right" value="삭제">
							<input type="button" onclick="location.href='adminBoardInsert.html'" style="float: right" value="등록"> 
							<!-- /.table-responsive -->
						</div>
						<!-- /.box-body -->		
				
					
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