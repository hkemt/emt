<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
</head>
<body>
	<c:choose>
		<c:when test="${msg!=null }">
			<script>
				alert("${msg}");
			</script>
		</c:when>
		
		<c:when test="${sessionScope.sid=='admin' }">
			<script>
				alert("관리자님 환영합니다.");
				document.location.href = "admin/adminMain";
			</script>
		</c:when>
		<c:when test="${sessionScope.sid==null }">
		</c:when>
		<c:otherwise>
			<script>
				alert("${sid}" + "님환영합니다.");
				document.location.href="index";
			</script>
		</c:otherwise>
	</c:choose>
	<table width="1024" border="0" align="center" cellpadding="0"
		cellspacing="0" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
		<!--DWLayoutTable-->
		<tr>
			<td width="1024" height="768" align="center" valign="middle">
				<div style="width: 407px; border: 1px solid gray;">
					<form method="post">
						<h1>EMT 로그인</h1>
						<table width="406" height="138" border="0">
							<tr align="center" valign="middle">
								<td width="104" height="32" align="right">아이디</td>
								<td width="145"><input type="text" name="userId"
									id="userId"></td>
								<td width="145" rowspan="2"><input type="submit"
									name="Submit" style="width: 140px; height: 55px" value="로그인"></td>
							</tr>
							<tr align="center" valign="middle">
								<td height="28" align="right">비밀번호</td>
								<td><input type="password" name="userPw" id="userPw"></td>
							</tr>
							<tr align="center" valign="middle">
								<td height="37" colspan="3"><input type="button"
									name="Submit" value="회원가입"></td>
							</tr>
							<tr align="center" valign="middle">
								<td colspan="3">로그인 문의 이메일 admin@admin.com</td>
							</tr>
						</table>
					</form>
				</div>
			</td>
		</tr>
	</table>