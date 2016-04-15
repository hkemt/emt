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
	
});





