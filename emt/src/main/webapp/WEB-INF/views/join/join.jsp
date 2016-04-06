<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>AdminLTE 2 | Registration Page</title>
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
<script src="<c:url value="/js/memberJoin.js"/>"></script>

<body class="hold-transition register-page">
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
			
			<br> <a href="/emt/login/login" class="text-center">기존에 가입하신
				회원입니까? - 로그인</a>
		</div>
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->