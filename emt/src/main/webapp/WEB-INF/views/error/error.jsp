<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
#center { position:absolute; top:50%; left:50%;  overflow:hidden; margin-top:-240px; margin-left:-280px;}
</style>
<div id="center"><img src="<c:url value="/img/error.png"/>"><br>
<p style="text-align: center;">잘못된 요청입니다. 다시 확인해주세요.<br>
문제가 지속될 경우 관리자에게 문의하세요.<br><br>
<input type="button" value="뒤로가기">
<input type="button" onclick=""value="메인페이지"></p>
</div>
