<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>로그인</title>
<!-- Tell the browser to be responsive to screen width -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<link href="<c:url value="/css/AdminLTE.min.css" />" rel="stylesheet"
	type="text/css">
<link href="<c:url value="/css/blue.css" />" rel="stylesheet"
	type="text/css">
<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet"
	type="text/css">
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="<c:url value="/js/adminLogin.js" />"></script>

<body class="hold-transition login-page">

	<!-- 작은 모달 -->
	<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header" id="modalHeader">
		<button type="button"  class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="modalTitle">EMT 알림메시지</h4>
	      </div>
	      <div class="modal-body" id="modalContent">
			...
	      </div>
	      <div class="modal-footer" id="modalBtns">
		<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div><!-- 모달 END -->
	
	<div class="login-box">
		<div class="login-logo">
			<a href="/emt/index"><b>English Mock</b>Test</a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body login-page">

			<form method="post">
				<div class="form-group has-feedback">
					<input type="text" name="userId" id="userId" class="form-control"
						placeholder="ID"> <span
						class="glyphicon glyphicon-pencil form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="text" name="email" id="email" class="form-control"
						placeholder="가입시 입력한 email"> <span
						class="glyphicon glyphicon-pencil form-control-feedback"></span>
				</div>
				<div>
					<!-- /.col -->
					<div class="social-auth-links text-center">
						<input type="submit" name="Submit"
							class="btn btn-primary btn-block btn-flat" value="비밀번호 찾기">
						
					</div>
					<!-- /.col -->
				</div>
			</form>
		</div>
		<!-- /.social-auth-links -->
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
	</body><!-- /.login-box-body -->
	<script>
	var pw = "${pw}";
	
	if(pw==""){
		
	} else if(pw=="1"+null){
		$("#modalContent").html("일치하는 회원정보가 없습니다.");
		$("#modal").modal({show:true});
	} else{
		$("#modalContent").html("비밀번호가 메일로 전송되었습니다. 메일을 확인해주세요.");
		$("#modal").modal({show:true});
	}
	$("#modal").on('hidden.bs.modal', function(){
		location.href="/emt/index";
	});
	</script>