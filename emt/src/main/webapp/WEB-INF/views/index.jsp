<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
						
<c:choose>
	<c:when test="${loginMsg!=null }">
		<script>
			alert("${loginMsg}");
			<%
	    	session.removeAttribute("loginMsg");
		    %>
		</script>
	</c:when>
</c:choose>

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
						<a href="/emt/index" class="navbar-brand"><b>English</b>Mock
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
							<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">게시판
							<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="/emt/notice">공지사항</a>
									<li><a href="/emt/board">문제공유</a>
								</ul>
							</li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">파트별문제풀기 <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="/emt/user/part/part1">Part1</a></li>
									<li><a href="/emt/user/part/part2">Part2</a></li>
									<li><a href="/emt/user/part/part3">Part3</a></li>
									<li><a href="/emt/user/part/part4">Part4</a></li>
									<li><a href="/emt/user/part/part5">Part5</a></li>
									<li><a href="/emt/user/part/part6">Part6</a></li>
								</ul></li>
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
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">${sid }</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="/emt/user/review/userReview?sid=${sid }">복습</a></li>
									<li><a href="/emt/user/member/userMemberList?userId=${sid }">정보수정</a></li>
									<li id="logout"><a>로그아웃</a></li>
								</ul></li>
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
							<h3 class="box-title"></h3>
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
									data-ride="carousel" >
									<ol class="carousel-indicators" style="float:right">
										<li data-target="#carousel-example-generic" data-slide-to="0"
											class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"
											class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="2"
											class=""></li>
									</ol>
									<div class="carousel-inner">
										<div class="item active">
											<img src="<c:url value="/img/1.jpg"/>" alt="First slide" style="margin-left:auto; margin-right:auto;">
											<div class="carousel-caption">First Slide</div>
										</div>
										<div class="item">
											<img
												src="<c:url value="/img/2.jpg"/>"
												alt="Second slide" style="margin-left:auto; margin-right:auto;">
											<div class="carousel-caption">Second Slide</div>
										</div>
										<div class="item">
											<img
												src="<c:url value="/img/3.jpg"/>"
												alt="Third slide" style="margin-left:auto; margin-right:auto;">
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
									<h3 class="box-title">최근 공지사항</h3>
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
									<div id="noticeView" class="table-responsive">

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
									<h3 class="box-title">최근 게시판 목록</h3>
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
								<div  class="box-body">
									<div id="boardView" class="table-responsive">
										
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
		</footer>
		</div>
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
	<script src="<c:url value="/js/index/indexNotice.js"/>"></script>
	<script src="<c:url value="/js/index/indexBoard.js"/>"></script>
	
	

	
	