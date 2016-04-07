<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<h1>문제관리 페이지</h1>
<input type="button" onclick="location.href='#'" value="목록보기">
<input type="button" onclick="location.href='#'" value="등록">
<input type="button" onclick="location.href='#'" value="수정">
<input type="button" onclick="location.href='#'" value="삭제">

<table border="1">
	<tr>
		<th></th>
		<th>문제번호</th>
		<th>문제내용</th>
		<th>문제유형</th>
		<th>문제Mp3경로</th>
		<th>문제Img경로</th>
	</tr>
	<c:forEach var="question" items="${question }">
	<tr>
		<td><input type="radio" name="testNo" value="${question.testNo }"></td>
		<td>${question.testNo }</td>
		<td>${question.testContent }</td>
		<td>${question.testType }</td>
		<td>${question.testMp3 }</td>
		<td>${question.testImg }</td>
	</tr>
	</c:forEach>

</table>
    