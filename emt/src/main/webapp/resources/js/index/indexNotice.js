
	function noticeList(page) {
		$.ajax({
			url: "indexNoticeList",
			method: "GET",
			data: {type: page},
			success: function(result){
				$("#noticeView").html("<table id='noticeTable' class='table no-margin'></table>");
				$("#noticeTable").append("<thead><tr><th></th><th style='text-align:center'>제목</th><th>아이디</th><th>작성일</th></thead>");
				$("#noticeTable").append("<tbody>");
				var title="";
				for(var i=0; i<result.length; i++){
					title=result[i].boardTitle;
					if(title.length>10){
						title=title.substr(0,10);
					}
					$("#noticeTable").append(
							"<tr>"
							+"<td></td>"
							+"<td><a href='noticeDetailMove?boardNo="+result[i].boardNo+"'>"+title+"</a></td>"
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
