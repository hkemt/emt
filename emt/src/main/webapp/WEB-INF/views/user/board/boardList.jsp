<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Insert title here</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
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
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
</head>
<body class="hold-transition skin-blue layout-top-nav">
	<div class="wrapper">
		<header class="main-header">
			<nav class="navbar navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<a href="../userMain.html" class="navbar-brand"><b>English</b>Mock
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
							<li><a href="../question/userQuestion.html">토익스피킹 모의고사</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
								>게시판<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="notice.html">공지사항</a>
									<li><a href="boardList.html">문제공유</a>
								</ul>
							</li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">파트별문제풀기 <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="../question/userPart.html">Part1</a></li>
									<li><a href="../question/userPart.html">Part2</a></li>
									<li><a href="../question/userPart.html">Part3</a></li>
									<li><a href="../question/userPart.html">Part4</a></li>
									<li><a href="../question/userPart.html">Part5</a></li>
									<li><a href="../question/userPart.html">Part6</a></li>
								</ul></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
					<!-- Navbar Right Menu -->
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">userId</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="../member/userReview.html">복습</a></li>
									<li><a href="../member/userModify.html">정보수정</a></li>
									<li><a href="../../index.html">로그아웃</a></li>
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
								<h3 class="box-title">게시판</h3>
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
								<div id="boardView" class="table-responsive">
									<table class="table no-margin">
										<thead>
											<tr>

												<th>게시판번호</th>
												<th>제목</th>
												<th>날짜</th>
												<th>조회수</th>
												<th>아이디</th>
											</tr>
										</thead>
										<tbody>
											<tr>
													<td>1</td>
													<td><a href="boardDetailView.html">this가 왜 this인지 아시는분?</a></td>
													<td>2016-12-15</td>
													<td>0</td>
													<td>may5014</td>
												</tr>
											<tr>

												<td>7</td>
												<td><a href="boardDetailView.html">저 위자드 지원좀</a></td>
												<td>2016-10-04</td>
												<td>0</td>
												<td>andrew01</td>
											</tr>
										</tbody>
									</table>
									
								</div>
								
							<!-- 페이징링크 -->	
							<div id="pages" class="box-footer clearfix">
								<ul  class="pagination pagination-sm no-margin pull-right">
									<li><a href="#">«</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">»</a></li>
								</ul>
							</div>
								
								
								<div style="text-align: right">
								<input type="button" class="btn btn-default" onclick="location.href='boardWrite.html'" style="float:right" value="글쓰기" >
								</div>
								<!-- /.table-responsive -->
							</div>
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
	
	<!-- boardList.js 링크 -->
	<script src="<c:url value="/js/board/boardList.js"/>"></script>
</body>
</html>