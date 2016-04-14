		function boardList(page){

			$.ajax({
				url: "boardList",
				method: "POST",
				data: { type :  page},
				success : function(result){
					
					$("#boardView").html("<table id='boardTable' class='table no-margin'></table>");
					
					$("#boardTable").append("<thead><tr><th>제목</th><th>아이디</th><th>작성일</th></tr></thead>");
					
					$("#boardTable").append("<tbody>")
					for(var i=0; i<result.length; i++){
						$("#boardTable").append("<tr>"
												+"<td><a href='noticeDetailMove?boardNo="+result[i].boardNo+"'>"+result[i].boardTitle+"</a></td>"
												+"<td><span class='label label-warning'>"+result[i].userId+"</span></td>"
												+"<td>"+result[i].boardDate+"</td></tr>"); 
					}
					$("#boardTable").append("</tbody>");
				}
			});
		};
		
		$(document).ready(function(){
			boardList(1);
		})