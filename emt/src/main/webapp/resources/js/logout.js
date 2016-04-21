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

$('#modal1').on('hidden.bs.modal', function () {moveIndex();});

// 메인페이지 이동
function moveIndex(){
	document.location.href = "/emt/index";
}