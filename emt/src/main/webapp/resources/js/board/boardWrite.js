/**
 * 
 */
$(function(){
//	1.버튼 기능 넣기
//	2.ajax호출
//	3.결과출력
	$("#btnWrite").click(function(){
		$.ajax({
			method : "POST",
			url : "addBoard",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			data : {
				boardTitle : $("#textTitle").val(),
				boardContent : $("#textContent").val()
			},
			success : function(result) {
				if (result > 0) {
					alert("등록 되었습니다.");
					document.location.href = "/emt/boardDetailMove?boardNo="+result;
				} else {
					alert("등록이 되지 않았습니다.");
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