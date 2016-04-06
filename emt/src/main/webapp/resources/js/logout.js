$(function(){
	$("#logout").click(function(){
		$.ajax({
			method : "POST",
			url : "/emt/logout",
			success : function() {
					alert("로그아웃 되었습니다.");
					document.location.href = "/emt/index";
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