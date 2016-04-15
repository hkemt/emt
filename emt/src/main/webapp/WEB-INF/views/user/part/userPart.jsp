<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List, emt.emt.common.domain.Question" %>
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

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>EMT - 파트별문제</title>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
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
							<li class="dropdown"><li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
								>게시판<span class="caret"></span></a>
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
					
					<div class="box box-info">
						<div class="box-header with-border">
							<h3 class="box-title">Part</h3>
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
							
							
					<!-- 이곳에 문제내용이 들어갑니다. -->
                     <div style="width:1000px; margin-left: auto; margin-right: auto; text-align: center">
						
						<c:set var="partQuestions" value="${partQuestion }"/>
						<%
						
							List<Question> parts = (List)request.getAttribute("partQuestion");
							
							int random = (int)(Math.random()*parts.size());
							
							Question part = parts.get(random);
							
							// 문제유형
							int type=part.getQuestionType();
							
							// 파일 경로
							String path="";
							
							switch (type)
							{
							case 1 : path="part1/"; break;
							case 2 : path="part2/"; break;
							case 3 : path="part3/"; break;
							case 4 : path="part4/"; break;
							case 5 : path="part5/"; break;
							case 6 : path="part6/"; break;
							}
							
							// 파일 이름
							String videoFile = part.getQuestionVideo();
						%>
						<!-- 파일 경로와 유형을 jstl로 -->
						<c:set var="part" value="<%=part %>"/>
						
						<c:set var="file" value="<%=path+videoFile %>"/>
						
						<video onended="gogo()" id="videos" controls="controls" autoplay="autoplay" width="800px" height="800px">
							<source src="<c:url value="/questions/${file }"/>" type="video/mp4"/>
						</video>
						
						
                     </div>	<!-- /.box-body -->
							<!-- /.table-responsive -->
					
					</div>
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
	
	<script type="text/javascript">
	function gogo(){
			
		// 문제를 저장한다
		alert("${part.questionType}");
		var no = "${part.questionNo}";
		var id = "${sessionScope.sid}";
		var type = "${part.questionType}";
		alert(no);
		alert(id);
		$.ajax({
			
			url: "saveReview",
			method : "POST",
			data : {
				questionNo : no,
				userId : id
			},
			success : function(result){
				if(result>0){
					alert("복습목록에 저장되었습니다");	
				}
				// 계속할지 묻는다
				if(confirm("계속하시겠습니까?")){
					
					location.replace("part"+type);
					
				} else {
					
					location.replace("index");
						
				}
					
				
			}
		});
	}
	</script>
	
	<!-- 로그아웃 -->
	<script src="<c:url value="/js/logout.js"/>"></script>
</body>
</html>