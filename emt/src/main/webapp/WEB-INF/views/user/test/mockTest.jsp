<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>EMT - 파트별문제</title>
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
	
	<!-- 작은 모달 -->
	<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header" id="modalHeader">
		<button type="button"  class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="modalTitle">EMT 알림메시지</h4>
	      </div>
	      <div class="modal-body" id="modalContent">
			로그아웃 되었습니다.
	      </div>
	      <div class="modal-footer" id="modalBtns">
		<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div><!-- 모달 END -->
	
	<!-- 로그아웃용 작은 모달 -->
	<div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header" id="modalHeader1">
		<button type="button"  class="close" onclick="moveIndex()"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="modalTitle1">EMT 알림메시지</h4>
	      </div>
	      <div class="modal-body" id="modalContent1">
			...
	      </div>
	      <div class="modal-footer" id="modalBtns1">
		<button type="button" class="btn btn-primary" onclick="moveIndex()" >확인</button>
	      </div>
	    </div>
	  </div>
	</div><!-- 모달 END -->
	
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
							<li><a href="/emt/user/test/mockTest">토익스피킹 모의고사</a></li>
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
							<li><a href="userGrammarList">문법문제</a></li>	
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">게시판 <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="/emt/notice">공지사항</a>
									<li><a href="/emt/board">문제공유</a>
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
									<li><a href="/emt/join/join"> 회원가입 </a></li>
									<!-- 회원가입 -->
								</c:when>
								<c:otherwise>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown">${sid }</a>
										<ul class="dropdown-menu" role="menu">
											<li><a href="/emt/user/review/userReview?sid=${sid }">복습</a></li>
											<li><a
												href="/emt/user/member/userMemberList?userId=${sid }">정보수정</a></li>
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
						<!-- /.box-header -->
						<div class="box-body">
							<div
								style="width: 1000px; margin-left: auto; margin-right: auto; text-align: center">
								<video width="700" height="500" id="videoPlayer"
									controls="controls"
									src="<c:url value="/upload/part1/${part1 }"/>"
									autoplay="autoplay" width="800px" height="800px">
								</video>
							</div>
						</div>
						<!-- /.box-body -->
						<!-- /.table-responsive -->

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

	<!-- 로그아웃 -->
	
	 <div class="modal" id="mymodal">
        <div class="modal-dialog" id="sss">
            <div class="modal-content">
                <div class="modal-body">
                    <h3>시험이 종료되었습니다. 확인 버튼을 누르시면 메인화면으로 돌아갑니다.</h3>
                </div>
                <div class="modal-footer">
                    <button id="goindex" type="button" class="btn btn-primary">확인</button>
                </div>
            </div>
        </div>
    </div>
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
	<script src="<c:url value="/js/logout.js"/>"></script>
	<script type="text/javascript">
		var i = 1;
		//"part1/"+${part1} -> 파트별로 동영상 경로 가져오기 위함
		var parts = [ "part1/" + "${part1}" , "part2/" + "${part2}",
				"part3/" + "${part3}", "part4/" + "${part4}",
				"part5/" + "${part5}", "part6/" + "${part6}" ];
		//video 요소를 가져옴
		var videoPlayer = document.getElementById("videoPlayer");
		//동영상 하나가 끝나면 i값을 증가시켜 다음 동영상 플레이. i가 6이되면 모달을 띄워 시험 종료를 알림.
		videoPlayer.onended = function() {
			if (i == parts.length) {
				$("#modalContent1").html("토익스피킹이 끝났습니다.<br>" + 
										"확인버튼을 누르면 메인으로 돌아갑니다.");
				$("#modal1").modal({show:true});
			}
			videoPlayer.src = "/emt/upload/" + parts[i];
			i++;
		}
		
		$("#modal1").on('hidden.bs.modal', function(){
			location.href="/emt/index";
		});
		
	</script>

</body>
</html>