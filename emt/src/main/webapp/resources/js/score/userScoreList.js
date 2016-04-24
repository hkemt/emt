var scoreWidth = new Array();
var color = ["red","orange","blue","green","yellow","lime","red","orange","blue","green","yellow","lime","red","orange","blue","green","yellow","lime"];
function userScoreList() {
	$.ajax({
		url:"/emt/user/score/userScoreList",
		method: "GET",
		success: function(result){
			$("#userScoreView").html("<table id='userScoreTable' class='table no-margin'></table>");
			$("#userScoreTable").append("<thead><tr><th>번호</th><th>아이디</th><th>회차</th><th>점수</th><th>날짜</th></thead>");
			$("#userScoreTable").append("<tbody>")
			
			
			for(var i=0; i<10; i++){
				
				scoreWidth[i] = (result[i].scoreGrade+ 1) * 50;
				
				/*점수 그래프 그리기*/
				$("#userScoreGraph").append(
								"<div id='userScoreGraph1' style='height: 20px; width: "+scoreWidth[i]+"; border:1px solid "+color[i]+";'>"
								+"점수 : "+result[i].scoreGrade
								+"</div>"		
				);
			}
			
			
			
			for(var i=0; i<result.length; i++){
				
				/*점수 테이블 그리기*/
				$("#userScoreTable").append(
						"<tr>"
						+"<td>"+	(result.length-i)		+"</td>"		
						+"<td>"+	result[i].userId		+"</td>"		
						+"<td>"+	result[i].grammarInning	+"</td>"		
						+"<td>"+	result[i].scoreGrade	+"</td>"		
						+"<td>"+	result[i].scoreDate		+"</td>"
						+"</tr>"				
				);
			}
			$("#userScoreTable").append("</tbody>");
			
			
		}
	})

}

$(document).ready(function(){
	userScoreList();
})
