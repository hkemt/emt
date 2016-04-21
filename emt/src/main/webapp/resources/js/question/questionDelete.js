$(function() {
	$("#delete").on('click',function(){
		var questionNo=$("input[type='radio'][name='questionNo']:checked");
		if($("input[type='radio'][name='questionNo']:checked").val()==undefined){
			alert("삭제할 문제를 선택해주세요.");
		}else{
			$.ajax({
				method : "POST",
				url : "/emt/admin/question/questionDelete",
				data : {
					questionNo : encodeURI(questionNo.val()),
				},
				success : function(result) {
						if(result>0){
							alert("삭제되었습니다.");
							document.location.href="/emt/admin/adminMain";
						}
				},
				error : function(request, status,
						error) {
					alert("code: " + request.status
							+ "\n" + "error:"
							+ error);
				}
			});
		}
	});
});