<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<h1>회원관리 페이지</h1>
<input type="button" onclick="location.href='memberList'" value="회원전체 목록보기">
<input type="button" onclick="location.href='memberInsert'" value="회원정보 등록">
<input type="button" onclick="location.href='memberUpdate'" value="회원정보 수정">
<input type="button" onclick="location.href='memberDelete'" value="회원정보 삭제">

<table border="1">
	<tr>
		<th></th>
		<th>아이디</th>
		<th>이메일</th>
	</tr>
	<c:forEach var="user" items="${user }">
	<tr>
		<td><input type="radio" name="userId" value="${user.userId }"></td>
		<td>${user.userId }</td>
		<td>${user.email }</td>
	</tr>
	</c:forEach>

</table>
    
