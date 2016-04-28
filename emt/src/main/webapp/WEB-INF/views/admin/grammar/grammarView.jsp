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
<title>Insert title here</title>
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
	<div class="modal fade" id="modalUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header" id="modalHeader">
		<button type="button"  class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="modalTitle">EMT 알림메시지</h4>
	      </div>
	      <div class="modal-body" id="modalContent">
			변경 되었습니다.
	      </div>
	      <div class="modal-footer" id="modalBtns">
		<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div><!-- 모달 END -->
	<!-- confirm용 작은 모달 -->
	<div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header" id="modalHeader2">
		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="modalTitle2">EMT 알림메시지</h4>
	      </div>
	      <div class="modal-body" id="modalContent2">
		...
	      </div>
	      <div class="modal-footer" id="modalBtns2">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button type="button" class="btn btn-primary">Save changes</button>
	      </div>
	    </div>
	  </div>
	</div>
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
						<!-- /.box-header -->
						<div class="box-body">
							<div class="table-responsive" style="text-align: center;">
								<div style="margin-left:auto; margin-right:auto; width:700px;">
								<table class="table no-margin">
										<thead>
											<tr>
												<td><input id="grammarQuiz" name="grammarQuiz" type="text" style="width:700px; border:none;"></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><textarea id="grammarEx" name="grammarEx"
												rows="7" style="width:700px; resize:none; border:none;" ></textarea></td>
											</tr>
											<tr>
												<td>
													<input type="text" id="grammarEx1" name="grammarEx1" style="border:none; width:700px;">
												</td>
											</tr>
											<tr>
												<td>
													<input type="text" id="grammarEx2" name="grammarEx2" style="border:none; width:700px;">
												</td>
											</tr>
											<tr>
												<td>
													<input type="text" id="grammarEx3" name="grammarEx3" style="border:none; width:700px;">
												</td>
											</tr>
											<tr>
												<td>
													<input type="text" id="grammarEx4" name="grammarEx4" style="border:none; width:700px;">
												</td>
											</tr>
											<tr>
												<td>
													답 : <input type="number" id="grammarAnswer" name="grammarAnswer"
															min="1" max="4" style="border:none; width:650px;">
												</td>
											</tr>
										</tbody>
									</table>
									
							</div>
							<div style="text-align: right;">
										<input type="hidden" id="grammarNo" name="grammarNo">
										<input type="hidden" id="grammarInning" name="grammarInning">
										<input type="button" onclick="grammarUpdate()" value="수정하기" class="btn btn-default">
										<input type="button" onclick="DelConfirm()" value="삭제하기" class="btn btn-default">
										<input type="button" onclick="location.replace('/emt/admin/grammarMove')" value="목록보기" class="btn btn-default">
							</div>
							<!-- /.table-responsive -->
						</div>
						<!-- /.box-body -->
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
	<!-- 공지사항 상세보기 -->
	<script>
		// 문제한가지를 받을 변수
		var grammarNo;
		
		// 문제 뿌리기
		function grammarView(no){
			
			$.ajax({
				url : "/emt/admin/grammarView",
				method : "POST",
				data : {grammarNo : no},
				success : function(result){
					$("#grammarNo").val(result.grammarNo);
					$("#grammarInning").val(result.grammarInning);
					$("#grammarQuiz").val(result.grammarQuiz);
					$("#grammarEx").val(result.grammarEx);
					$("#grammarEx1").val(result.grammarEx1);
					$("#grammarEx2").val(result.grammarEx2);
					$("#grammarEx3").val(result.grammarEx3);
					$("#grammarEx4").val(result.grammarEx4);
					$("#grammarAnswer").val(result.grammarAnswer);
				}
			});
		};
		
		// 문제 수정하기
		function grammarUpdate(){
			
			$.ajax({
				url : "/emt/admin/grammarUpdate",
				method : "POST",
				data : {
					grammarNo : $("#grammarNo").val(),
					grammarInning : $("#grammarInning").val(),
					grammarQuiz : $("#grammarQuiz").val(),
					grammarEx : $("#grammarEx").val(),
					grammarEx1 : $("#grammarEx1").val(),
					grammarEx2 : $("#grammarEx2").val(),
					grammarEx3 : $("#grammarEx3").val(),
					grammarEx4 : $("#grammarEx4").val(),
					grammarAnswer : $("#grammarAnswer").val()
				},
				success : function(result){
					if(result>0){
						$("#modalContent").html("문제 내용을 변경했습니다."); 
						$("#modalUpdate").modal({show:true});
					}
					else {
						$("#modalContent").html("문제 내용을 변경했습니다."); 
						$("#modalUpdate").modal({show:true});
					}
				}
			});
		}
		
		function DelConfirm(){
			
			$("#modalContent2").html("정말 삭제하시겠습니까?");
			$("#modalBtns2").html("<button type='button' class='btn btn-default' data-dismiss='modal'>아니오</button>"+
					"<button type='button' onclick='grammarDelete()' class='btn btn-primary'>삭제</button>");
			$("#modal2").modal('show');
			
		}
		
		function grammarDelete(){
				$.ajax({
					url : "/emt/admin/grammarDelete",
					method : "POST",
					data : { grammarNo : $("#grammarNo").val()},
					success : function(result){
						$("#modal2").modal('hide');
						if(result>0){
							$("#modalContent").html("문제를 삭제했습니다."); 
							$("#modalUpdate").modal({show:true});
						}
						else{
							$("#modalContent").html("삭제하지 못했습니다."); 
							$("#modalUpdate").modal({show:true});
						}
					}
				});
		}
		$(document).ready(function(){
			
			if("${grammarNo}"!=null){

				grammarNo="${grammarNo}";
				
				grammarView(grammarNo);
			}
		});
		$("#modalUpdate").on('hidden.bs.modal', function(){
			location.href="/emt/admin/grammarMove";
		});
	</script>

	
	<script src="<c:url value="/js/logout.js"/>"></script>
	
</body>
</html>