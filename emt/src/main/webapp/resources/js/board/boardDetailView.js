function noticeDetailView() {

	$.ajax({
		url : "boardDetailView",
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
				url : "boardDelete",
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				data : {
					boardNo : no
				},
				success : function(result) {
					if (result > 0) {
						
						$("#modalContent").html("삭제 되었습니다.");
						$("#modal").modal("show");

						$("#modal").on("hidden.bs.modal", function(){
							
							document.location.href = "/emt/board";
						});
					} else {
						$("#modalContent").html("삭제가 되지 않았습니다.");
						$("#modal").modal("show");
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





