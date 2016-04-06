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
<link href="<c:url value="/css/blue.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet"
	type="text/css">
<title>무제 문서</title>
<c:choose>
	<c:when test="${msg!=null }">
		<script>
			alert("${msg}");
		</script>
	</c:when>

	<c:when test="${sessionScope.sid=='admin' }">
		<script>
			alert("관리자님 환영합니다.");
			document.location.href = "/emt/admin/adminMain";
		</script>
	</c:when>
	<c:when test="${sessionScope.sid==null }">
	</c:when>
	<c:otherwise>
		<script>
			alert("${sid}" + "님환영합니다.");
			document.location.href = "/emt/index";
		</script>
	</c:otherwise>
</c:choose>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="top-nav.html"><b>English Mock</b>Test</a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body login-page">

			<form method="post">
				<div class="form-group has-feedback">
					<input type="text" name="userId" id="userId" class="form-control" placeholder="ID"> <span
						class="glyphicon glyphicon-pencil form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="userPw" id="userPw" class="form-control" placeholder="Password">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div>
					<!-- /.col -->
					<div class="social-auth-links text-center">
						<input type="submit" name="Submit" class="btn btn-primary btn-block btn-flat">로그인</button>
					</div>
					<!-- /.col -->
				</div>
			</form>

			<a href="#">아이디 / 비밀번호를 잊으셨나요? - 찾기</a><br> <a
				href="register.html" class="text-center">회원가입을 안하셨나요? -회원가입</a>
			<!--<div class="social-auth-links text-center"> <a href="#" class="btn btn-primary btn-block btn-flat"> 회원가입</a>
          <a href="#" class="btn btn-primary btn-block btn-flat"> 아이디/비밀번호 찾기</a> -->
		</div>
		<!-- /.social-auth-links -->



	</div>
	<!-- /.login-box-body -->


	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
	</script>