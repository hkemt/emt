$(function(){
	$("#logout").click(function(){
		$.ajax({
			method : "POST",
			url : "/emt/logout",
			success : function() {
					
					$("#modal1").modal({show:true});
					
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



// 메인페이지 이동
$("#modal1").on("hidden.bs.modal", function(){
	document.location.href="/emt/index";
});

