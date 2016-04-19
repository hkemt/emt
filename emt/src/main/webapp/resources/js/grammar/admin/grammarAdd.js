	$(document).ready(function() {

		// 문제 등록하기
		$("#frm").submit(function(e) {

			e.preventDefault();

 			 $.ajax({
				method : "POST",
				url : "/emt/admin/grammarAdd",
				data : {
					grammarQuiz : $("#grammarQuiz").val(),
					grammarEx 	: $("#grammarEx").val(),
					grammarEx1 	: $("#grammarEx1").val(),
					grammarEx2 	: $("#grammarEx2").val(),
					grammarEx3 	: $("#grammarEx3").val(),
					grammarEx4 	: $("#grammarEx4").val(),
					grammarInning : $("#grammarInning option:selected").val(),
					grammarAnswer : $("#grammarAnswer").val()
				},
				success : function(result){
					if (result) {

						alert('추가성공');

						$("#grammarQuiz").val("");
						$("#grammarEx").val("");
						$("#grammarEx1").val("①");
						$("#grammarEx2").val("②");
						$("#grammarEx3").val("③");
						$("#grammarEx4").val("④");
						$("#grammarQuiz").focus();
					} else {

						alert('추가실패');
						
					} 
				}
			})
		});
		});