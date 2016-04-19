/**
 * 
 */

function noticeDetailView() {

	$.ajax({
		url : "noticeDetailView",
		method : "POST",
		data : {
			boardNo : tmpBoardNo
		},
		success : function(result) {

			$("#textTitle").val(result.boardTitle);

//			$("#noticeInfo").html(
//					"작성자 : " + result.userId + " 작성일 : " + result.boardDate
//							+ " 조회수 : " + result.boardCount);

			$("#textContent").val(result.boardContent)
		}

	});
}

$(function(){
	noticeDetailView();
	$("#btnWrite").click(function(){
		$.ajax({
			method : "POST",
			url : "updateNotice",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			data : {
				boardNo : tmpBoardNo,
				boardTitle : $("#textTitle").val(),
				boardContent : $("#textContent").val()
			},
			success : function(result) {
				if (result > 0) {
					alert("수정 되었습니다.");
					document.location.href = "/emt/noticeDetailMove?boardNo="+tmpBoardNo;
				} else {
					alert("수정이 되지 않았습니다.");
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