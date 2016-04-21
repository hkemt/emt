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
					<!-- /.box-header -->
					<div class="box-body">
						<form method="post" action="#" name="frm" id="frm">
							<div class="table-responsive">
								<div style="margin-left:auto; margin-right:auto; width:700px;">
							<table class="table no-margin">
									<thead>
										<tr>
											<td><input id="grammarQuiz" name="grammarQuiz" type="text" style="width:700px; border:none;" placeholder="질문"></td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><textarea id="grammarEx" name="grammarEx"
											rows="7" style="width:700px; resize:none; border:none;" placeholder="보기"></textarea></td>
										</tr>
										<tr>
											<td>
												<input type="text" id="grammarEx1" name="grammarEx1" style="border:none; width:700px;" value="①">
											</td>
										</tr>
										<tr>
											<td>
												<input type="text" id="grammarEx2" name="grammarEx2" style="border:none; width:700px;" value="②">
											</td>
										</tr>
										<tr>
											<td>
												<input type="text" id="grammarEx3" name="grammarEx3" style="border:none; width:700px;" value="③">
											</td>
											</tr>
										<tr>
											<td>
												<input type="text" id="grammarEx4" name="grammarEx4" style="border:none; width:700px;" value="④">
											</td>
										</tr>
										<tr>
										<td>
											<select id="grammarInning" name="grammarInning" required="required">
												<optgroup>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
												</optgroup>
											</select>
										</td>
										</tr>
										<tr>
											<td>
												<input type="number" id="grammarAnswer" name="grammarAnswer"
													placeholder="답"	min="1" max="4" style="border:none; width:650px;">
											</td>
										</tr>
									</tbody>
								</table>
									
							</div>		
								<div style="text-align: right;">
								<input type="submit" id="add" class="btn btn-default" value="등록">
								<input type="button"
										class="btn btn-default"
										onclick="location.replace('/emt/admin/grammarMove')" value="돌아가기">
								</div>
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
					<strong>Copyright &copy; 2016 <a
						href="/emt/index">English Mock Test</a>
					</strong> All rights reserved.
				</div>
			</footer>
	</div>
	<!-- ./wrapper -->
	<!-- 문제등록 스크립트파일 외부링크 -->
	<script src="<c:url value="/js/grammar/admin/grammarAdd.js"/>"></script>
</body>
</html>