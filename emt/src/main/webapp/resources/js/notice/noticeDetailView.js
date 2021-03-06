function noticeDetailView() {

	$.ajax({
		url : "noticeDetailView",
		method : "POST",
		data : {
			boardNo : no
		},
		success : function(result) {

			$("#title").html(result.boardTitle);

			$("#noticeInfo").html(
					"작성자 : " + result.userId + " 작성일 : " + result.boardDate
							+ " 조회수 : " + result.boardCount);

			$("#noticeContent").html(result.boardContent)
		}

	});
}

$(document).ready(function() {
	
		noticeDetailView();
		replyList(1);
		replyPage();
		$("#btnDelete").click(function(){
			$.ajax({
				method : "POST",
				url : "noticeDelete",
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				data : {
					boardNo : no
				},
				success : function(result) {
					if (result > 0) {
						alert("삭제 되었습니다.");
						document.location.href = "/emt/notice";
					} else {
						alert("삭제가 되지 않았습니다.");
					}
				},
				error : function(request, status,
						error) {
					alert("code: " + request.status
							+ "\n" + "error:"
							+ error);
				}
			});
		});	
});





