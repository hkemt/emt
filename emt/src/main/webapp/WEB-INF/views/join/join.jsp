<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>가입코너</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<!-- Bootstrap 3.3.5 -->
<link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet"
	type="text/css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link href="<c:url value="/css/AdminLTE.min.css"/>" rel="stylesheet"
	type="text/css">
<!-- iCheck -->
<link href="<c:url value="/css/blue.css"/>" rel="stylesheet" type="text/css">

<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>

<body class="hold-transition register-page">

<!-- 작은 모달 -->
	<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header" id="modalheader">
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

	<!-- 로그아웃용 작은 모달 -->
	<div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header" id="modalHeader1">
		<button type="button"  class="close" onclick="moveIndex()"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="modalTitle1">EMT 알림메시지</h4>
	      </div>
	      <div class="modal-body" id="modalContent1">
			로그아웃 되었습니다.
	      </div>
	      <div class="modal-footer" id="modalBtns1">
		<button type="button" class="btn btn-primary" onclick="moveIndex()" >확인</button>
	      </div>
	    </div>
	  </div>
	</div><!-- 모달 END -->
	
	<div class="register-box">
		<div class="register-logo">
			<a href="/emt/index"><b>English Mock</b>Test</a>
		</div>

		<div class="register-box-body">
			<p class="login-box-msg">가입을 환영합니다!!</p>
			<form name="frmJoin" id="frmJoin" method="post">
				<div class="form-group has-feedback">
                <input type="text" name="userId" id="userId" class="form-control" placeholder="ID">
                    <span class="input-group-btn">
                      <button type="button" name="duplbtn" id="duplbtn" class="btn pull-right">중복확인</button>
                    </span>
              </div>
				<div class="form-group has-feedback">
					<input type="email" name="email" id="email" class="form-control"
						placeholder="Email">

				</div>
				<div class="form-group has-feedback">
					<input type="password" name="userPw" id="userPw"
						class="form-control" placeholder="Password">

				</div>
				<div class="form-group has-feedback">
					<input type="password" id="userPwCh" class="form-control"
						placeholder="Retype Password">

				</div>


				<!-- /.col -->
				<div>
					<button type="button" id="join" name="join"
						class="btn btn-primary btn-block btn-flat">가입하기</button>
				</div>
				<!-- /.col -->

			</form>
			<a href="/emt/findId" class="text-center">ID/</a>
			<a href="/emt/findPw" class="text-center">PW찾기</a>
			<br> <a href="/emt/login/login" class="text-center">기존에 가입하신
				회원입니까? - 로그인</a>
		</div>
		<!-- /.form-box -->
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
	<script src="<c:url value="/js/memberJoin.js"/>"></script>
	<!-- /.register-box -->