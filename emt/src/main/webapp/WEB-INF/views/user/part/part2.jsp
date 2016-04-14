<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Insert title here</title>
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
							<li><a href="userQuestion.html">토익스피킹 모의고사</a></li>
							<li class="dropdown"><li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
								>게시판<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="notice">공지사항</a>
									<li><a href="board">문제공유</a>
								</ul>
							</li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">파트별문제풀기 <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="partMove?no=1">Part1</a></li>
									<li><a href="partMove?no=2">Part2</a></li>
									<li><a href="partMove?no=3">Part3</a></li>
									<li><a href="partMove?no=4">Part4</a></li>
									<li><a href="partMove?no=5">Part5</a></li>
									<li><a href="partMove?no=6">Part6</a></li>
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
									<li><a href="user/review/userReview?sid=${sid}">복습</a></li>
									<li><a href="userMemberList?userId=${sid}">정보수정</a></li>
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
                     <div style="width:500px; margin-left: auto; margin-right: auto; text-align: center">
						
						<!-- 문제내용 -->
						<div id="partContent"></div><br>
						
						<!-- 문제이미지 -->
						<div id="partImg"></div><br>
						
						<!-- 문제오디오 -->
						<div id="partMp3"></div>
						
						
                     	<!-- 문제 시간 -->
                     	<div id="partTime"></div>
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
	
	    <script>
		$(document).ready(function(){
				
					
				parts();
				
		});
		
		
	    function parts(){
			
			// 파트번호가 있을때
			if("${no}" !=null){
				
				var part = "${no}";
				
				alert("part"+part+"확인을 누르면 시작됩니다.");
				// 파트별 문제를 가져옵니다
				$.ajax({
					
					method: "Get",
					url : "partAll",
					data : {testType : part},
					success : function(partQtn){
						
						var random=Math.floor(((Math.random()*partQtn.length)));
						 
						
						// 이미지가 있을시에 넣음
						if(partQtn[random].testImg !=null){
							$("#partImg").html(partQtn[random].testImg);
							
						}
						
						// mp3가 있을시 넣음
						if(partQtn[random].testMp3 != null){
							$("#partMp3").html(partQtn[random].testMp3);
						}
						
						// 시간계산
						count(partQtn[random].testType);
					}
				});
			};
	 };
	 
	 	var partDate;
		
	 	
		// 파트문제 시간 가져오기
		function count(testType){
			// 유형별 시간
			var times = [5,10,15,20,25,30];
			 
			// 유형시간을 변수에 저장
		 	var partTime = times[testType-1];
			 
			partDate = new Date();
			
			partDate.setMilliseconds(partTime*1000+1000);
			
			countDown();
			
			 
		 };	
		 
		 
		 // 카운트다운
		 function countDown(){
			 	
			 	var now = new Date();
				var diff = partDate - now;

				if (diff > 1) {
					var ms = Math.floor(diff % 1000);
					diff = diff / 1000;
					var sec = Math.floor(diff % 60);
					diff = diff / 60;
					var min = Math.floor(diff % 60);
					diff = diff / 60;
					var hour = Math.floor(diff % 24);
					diff = diff / 24;
					var days = Math.floor(diff);

					if (sec < 10) {
						sec = "0" + sec;
					}
					if (min < 10) {
						min = "0" + min;
					}
						
						$("#partTime").html(min+ " : "+ sec);
						setTimeout('countDown()', 1000);
					}
					
					else if (diff<1){
						parts();
					}
				}
		
	
</script>
</body>
</html>