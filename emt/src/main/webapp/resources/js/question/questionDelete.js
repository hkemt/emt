$(function() {
	$("#delete").on('click',function(){
		var questionNo=$("input[type='radio'][name='questionNo']:checked");
		if($("input[type='radio'][name='questionNo']:checked").val()==undefined){
			$("#modalContent").html("삭제할 문제를 선택해주세요."); 
			$("#modalDel").modal({show:true});
		}else{
			$.ajax({
				method : "POST",
				url : "/emt/admin/question/questionDelete",
				data : {
					questionNo : encodeURI(questionNo.val()),
				},
				success : function(result) {
						if(result>0){
							$("#modalDel").modal({show:true});
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
	$("#modalDel").on('hidden.bs.modal', function(){
		location.href="/emt/admin/adminQuestion";
	});
});