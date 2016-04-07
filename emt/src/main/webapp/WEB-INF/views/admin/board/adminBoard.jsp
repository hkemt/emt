<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<h1>게시판관리 페이지</h1>
<input type="button" onclick="location.href='#'" value="목록보기">
<input type="button" onclick="location.href='#'" value="등록">
<input type="button" onclick="location.href='#'" value="수정">
<input type="button" onclick="location.href='#'" value="삭제">

<table border="1">
	<tr>
		<th></th>
		<th>게시판번호</th>
		<th>제목</th>
		<th>내용</th>
		<th>날짜</th>
		<th>공지여부</th>
		<th>조회수</th>
		<th>아이디</th>
	</tr>
	<c:forEach var="board" items="${board }">
	<tr>
		<td><input type="radio" name="boardNo" value="${board.boardNo }"></td>
		<td>${board.boardNo }</td>
		<td>${board.boardTitle }</td>
		<td>${board.boardContent }</td>
		<td>${board.boardDate }</td>
		<td>${board.boardNotice }</td>
		<td>${board.boardCount }</td>
		<td>${board.userId }</td>
	</tr>
	</c:forEach>

</table>
    




