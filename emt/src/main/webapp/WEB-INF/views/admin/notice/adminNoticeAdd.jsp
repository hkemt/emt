<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${loginMsg!=null }">
		<script>
			alert("${loginMsg}");
			<%
		    %>
		</script>
	</c:when>
</c:choose>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>EMT</title>
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
						<a href="/emt/admin/adminMain" class="navbar-brand"><b>English</b>Mock
							Test</a>
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar-collapse">
							<i class="fa fa-bars"></i>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
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
						<div class="box-header with-border" style="text-align: center;">
							<h3 id="title" class="box-title">글쓰기</h3>
							
							<div class="box-tools pull-right">

							</div>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="table-responsive" style="text-align: center;">
								<table class="table no-margin">
									<thead>
										<tr>
											<th class="col-md-1">제목</th>
											<td><input id="noticeTitle" type="text" style="width:80%;" placeholder="제목을 입력하시오."></td>
											
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>내용</th>
											<td><textarea id="noticeContent"
											rows="15" style="width:80%; resize:none" placeholder="내용을 입력하시오."></textarea></td>
										</tr>
										<tr>
											<th><input class="btn btn-default" type="button" onclick="location.href='/emt/admin/adminNotice'" value="목록보기"></th>
											<td><div style="text-align: right;"><input class="btn btn-default" onclick="noticeAdd()" type="button" value="등록하기"></div></td>
										</tr>	
									</tbody>
								</table>

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
	<!-- 로그아웃 스크립트 -->
	<script src="<c:url value="/js/logout.js"/>"></script>
	
	<!-- 공지사항 글등록 -->
	<script>
		function noticeAdd(){
			
			var id = "${sid}";
			var title = $("#noticeTitle").val();
			var content = $("#noticeContent").val();
			
			if(id != null){
				
				$.ajax({
					
					url : "/emt/admin/noticeAdd",
					method : "POST",
					data : {
						userId : id,
						boardTitle : title,
						boardContent : content
					},
					
					success : function(result){
						if(result>0){
							alert("등록성공했습니다.");
							location.replace("/emt/admin/adminNotice");
						}
						else {
							alert("등록 실패했습니다.");
						}
					}
					
					
				});
			}
		}
	</script>	
</body>
</html>