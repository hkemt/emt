		function boardList(page){

			$.ajax({
				url: "indexBoardList",
				method: "POST",
				data: { type :  page},
				success : function(result){
					
					$("#boardView").html("<table id='boardTable' class='table no-margin'></table>");
					
					$("#boardTable").append("<thead><tr><th style='text-align:center'>제목</th><th>아이디</th><th>작성일</th></tr></thead>");
					
					$("#boardTable").append("<tbody>");
					var title="";
					for(var i=0; i<result.length; i++){
						title=result[i].boardTitle;
						if(title.length>25){
							title=title.substr(0,25);
						}
						$("#boardTable").append("<tr>"
												+"<td style='width:60%;'><a href='boardDetailMove?boardNo="+result[i].boardNo+"'>"+title+"</a></td>"
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