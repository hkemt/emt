<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="<c:url value="/css/AdminLTE.min.css" />">
<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="<c:url value="/css/_all-skins.min.css" />">
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="<c:url value="/js/question/questionAdd.js" />"></script>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav">
	<div class="wrapper">
		<header class="main-header">
			<nav class="navbar navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<a href="/emt/admin/adminMain" class="navbar-brand"><b>English</b>Mock
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
							<li><a href="/emt/admin/adminMember">회원관리</a></li>
							<li><a href="/emt/admin/adminQuestion">문제관리</a></li>
							<li><a href="/emt/admin/adminBoard">게시판관리</a></li>
							<li><a href="/emt/admin/adminNotice">공지관리</a></li>
							<li><a href="/emt/admin/grammarMove">문법관리</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
					<!-- Navbar Right Menu -->
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">${sid }</a>
								<ul class="dropdown-menu" role="menu">
									<li id="logout"><a>로그아웃</a></li>
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
							<h3 class="box-title">문제추가</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<form enctype="multipart/form-data" method="post" name="frm"
								id="frm">
								<div class="table-responsive">
									<table class="table no-margin">
										<thead>
											<tr>
												<th>문제유형</th>

												<td><input type="hidden" name="questionType"
													id="questionType"> <input type="radio"
													name="_questionType" value="part1"> 1 &nbsp; <input
													type="radio" name="_questionType" value="part2"> 2
													&nbsp; <input type="radio" name="_questionType"
													value="part3"> 3 &nbsp; <input type="radio"
													name="_questionType" value="part4"> 4 &nbsp; <input
													type="radio" name="_questionType" value="part5"> 5
													&nbsp; <input type="radio" name="_questionType"
													value="part6"> 6 &nbsp;</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>동영상 파일</th>
												<td><input type="file" name="uploadFile"
													id="uploadFile" placeholder="동영상 파일"></td>
											</tr>

											<tr>
												<th>문제 미리 보기</th>
												<td><div id="video">이곳에 동영상이 들어갑니다</div></td>
											</tr>

										</tbody>
									</table>
								</div>
								<div style="text-align: right;">
									<input type="submit" id="add" class="btn btn-default"
										value="등록"> <input type="button"
										class="btn btn-default"
										onclick="location.href='adminQuestionList.html'" value="돌아가기">

								</div>

							</form>
						</div>
					</div>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer navbar-fixed-bottom">
			<div class="container">
				<div class="pull-right hidden-xs">
					<b>Version</b> 1.0.0
				</div>
				<strong>Copyright &copy; 2016 <a href="/emt/index">English
						Mock Test</a>
				</strong> All rights reserved.
			</div>
		</footer>
	</div>
	<!-- ./wrapper -->
</body>
</html>