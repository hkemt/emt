<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>EMT</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<link href="<c:url value="/css/AdminLTE.min.css" />" rel="stylesheet"
	type="text/css">
<link href="<c:url value="/css/blue.css" />" rel="stylesheet"
	type="text/css">
<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet"
	type="text/css">
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<!-- 작은 모달 -->
<div class="modal fade" id="modal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header" id="modalHeader">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span><span class="sr-only">Close</span>
				</button>
				<h4 class="modal-title" id="modalTitle">EMT 알림메시지</h4>
			</div>
			<div class="modal-body" id="modalContent">...</div>
			<div class="modal-footer" id="modalBtns">
				<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
			</div>
		</div>
	</div>
</div>
<!-- 모달 END -->
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
<script>
	var result = "${result}";
	if (result == "1") {
		$("#modalContent").html("가입 승인 되었습니다.");
		$("#modal").modal({
			show : true
		});
	}
	$("#modal").on("hidden.bs.modal", function() {
		location.replace('/emt/index');
	});
</script>