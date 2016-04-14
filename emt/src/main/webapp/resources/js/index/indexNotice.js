
	function noticeList(page) {
		$.ajax({
			url: "indexNoticeList",
			method: "GET",
			data: {type: page},
			success: function(result){
				$("#noticeView").html("<table id='noticeTable' class='table no-margin'></table>");
				$("#noticeTable").append("<thead><tr><th>제목</th><th>아이디</th><th>작성일</th></thead>");
				$("#noticeTable").append("<tbody>")
				for(var i=0; i<result.length; i++){
					$("#noticeTable").append(
							"<tr>"
							+"<td><a href='noticeDetailMove?boardNo="+result[i].boardNo+"'>"+result[i].boardTitle+"</a></td>"
							+"<td><span class='label label-success'>"+result[i].userId+"</span></td>"
							+"<td>"+result[i].boardDate+"</td></tr>"); 	
				}
				$("#noticeTable").append("</tbody>");
			}
		});
	};
	
	$(document).ready(function(){
		noticeList(1);
	})
