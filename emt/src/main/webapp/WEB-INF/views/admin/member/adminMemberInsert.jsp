<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>EMT</title>
<!-- Tell the browser to be responsive to screen width -->
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
<!-- 가입 검증용 모달 -->
<div class="modal fade" id="joinModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header" id="joinModalHeader">
		<button type="button"  class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="joinModalTitle">EMT 알림메시지</h4>
	      </div>
	      <div class="modal-body" id="joinModalContent">
			
	      </div>
	      <div class="modal-footer" id="joinModalBtns">
		<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div><!-- 모달 END -->
	
	<!-- 가입 결과 확인용 모달 -->
<div class="modal fade" id="resultModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header" id="resultModalHeader">
		<button type="button"  class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="resultModalTitle">EMT 알림메시지</h4>
	      </div>
	      <div class="modal-body" id="resultModalContent">
			
	      </div>
	      <div class="modal-footer" id="resultModalBtns">
		<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div><!-- 모달 END -->
	
	<div class="register-box">
		<div class="register-logo">
			<a href="/emt/admin/adminMain"><b>English Mock</b>Test</a>
		</div>

		<div class="register-box-body">
			<p class="login-box-msg">ADMIN 전용 회원 등록</p>
			<form name="frmJoin" id="frmJoin" method="post">
				<div class="form-group has-feedback">
                <input type="text" name="userId" id="userId" class="form-control" placeholder="ID">
                    <span class="input-group-btn">
                      <button type="button" name="duplbtn2" id="duplbtn2" class="btn pull-right">중복확인</button>
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
						class="btn btn-primary btn-block btn-flat">등록하기</button>
				</div>
				<!-- /.col -->

			</form>
			
			
		</div>
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->
	
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<!-- Bootstrap 3.3.5 -->
	<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
	
<script src="<c:url value="/js/admin.js"/>"></script>