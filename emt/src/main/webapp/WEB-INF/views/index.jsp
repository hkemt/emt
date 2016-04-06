<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<title>메인 페이지</title>
</head>
<table width="1024" height="768" border="1" align="center"
	cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<!--DWLayoutTable-->
	<tr>
		<td width="1020" height="84" align="center" valign="middle"
			bgcolor="#FFFFFF"><table width="1010" height="78" border="0"
				align="center">
				<!--DWLayoutTable-->
				<tr>
					<td width="766" rowspan="2" align="center" valign="middle"><h1>
							English Mock Test</h1></td>
					<!-------------------------------- 로그인 여부-------------------->
					<c:choose>
						<c:when test="${sessionScope.sid==null }">
							<td width="234" height="82" align="right" valign="middle"><a
								href="/emt/login/login"><input type="button" name="button" value="로그인"></a>
								<a href="/emt/join/join"><input type="button" name="button"
									value="회원가입"></a></td>
						</c:when>
						<c:otherwise>
							<td width="234" height="82" align="center" valign="bottom">
								<h4>${sid }님환영합니다.</h4> 
								<input 	type="button" 
										name="button" 
										onclick="location.href='userMember'"
										value="본인정보 관리"> 
								<input type="button"  name="button"
								value="복습"> <input name="button" type="button"
								onClick-"location.href='index.html' " value="로그아웃">
							</td>
						</c:otherwise>
					</c:choose>


					<!------------------------------- 로그인 여부 --------------------->
				</tr>
				<tr>
					<td height="4"></td>
				</tr>
			</table></td>
	</tr>
	<tr>
		<td height="59" valign="top" class="navbar"><table width="704"
				height="57" border="0">
				<tr align="center" valign="middle">
					<td width="169"><a href="#">EMT 소개 </a></td>
					<td width="169"><a href="#">토익스피킹</a></td>
					<td width="169"><a href="#">유형별문제</a></td>
					<td width="169"><a href="#">게시판</a></td>
					<td width="169"><a href="/emt/member/userReview">복습</a></td>
				</tr>
			</table></td>
	</tr>
	<tr>
		<td height="563" align="center" valign="middle" bgcolor="#FFFFFF"><table
				width="892" height="489" border="1">
				<tr align="center" valign="middle">
					<td width="441"><img src="#" width="430" height="300" /></td>
					<td>
						<div id="Layer1"
							style="border: 1px solid black; left: 580px; top: 236px; width: 375px; height: 204px; z-index: 1">
							<p>게시판 목록</p>
							<p>글은 5개</p>
							<p>공지여부 아이디 제목</p>
						</div> <br>
						<div id="Layer2"
							style="left: 584px; top: 468px; width: 372px; height: 221px; border: 1px solid black;">
							<p>게시판 목록</p>
							<p>글은 5개</p>
							<p>공지여부 아이디 제목</p>
						</div>
					</td>
				</tr>
			</table></td>
	</tr>
	<tr>
		<td height="26" valign="top"></td>
	</tr>
</table>