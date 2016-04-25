var scoreWidth = new Array();
var color = ["red","orange","blue","green","yellow","lime","red","orange","blue","green","yellow","lime","red","orange","blue","green","yellow","lime"];
var graphWidth;
var graphScore;

function userScoreList() {
	$.ajax({
		url:"/emt/user/score/userScoreList",
		method: "GET",
		success: function(result){
			$("#userScoreView").html("<table id='userScoreTable' class='table no-margin'></table>");
			$("#userScoreTable").append("<thead><tr><th>번호</th><th>아이디</th><th>회차</th><th>점수</th><th>날짜</th></thead>");
			$("#userScoreTable").append("<tbody>")
			

			for(var i=0; i<result.length; i++){
				/*그래프의 길이*/
				scoreWidth[i] = (result[i].scoreGrade+ 20)*10;
				
				/*점수 테이블 그리기*/
				$("#userScoreTable").append(
						"<tr>"
						+"<td>"+	(i+1)						+"</td>"		
						+"<td>"+	result[i].userId		+"</td>"		
						+"<td>"+	result[i].grammarInning	+"</td>"		
						+"<td>"+	result[i].scoreGrade	+"</td>"		
						+"<td>"+	result[i].scoreDate		+"</td>"
						+"</tr>"				
				);
			}
			$("#userScoreTable").append("</tbody>");
			
			/*그래프 그리기 시작*/
					var canvas = document.getElementById('canvas');
		
					var context = canvas.getContext('2d');
					context.beginPath();
					
					/*그래프 색깔과 두께*/
					context.strokeStyle = "red";
					context.lineWidth = 2;
					
					/*텍스트 크기와 색깔*/
				    context.fillStyle = '"#003300';
				    context.font = 'italic bold 14px sans-serif';
				    context.textBaseline = 'bottom';
					
					/*그래프와 텍스트 입력*/
					context.moveTo(25, 290);
					/*그래프가 가로로 늘어나는 길이*/
					graphWidth = 0;
				    for(var i=0; i<10; i++){
				    	graphWidth += 50;
				    	 
						context.lineTo(graphWidth, 480-((result[i].scoreGrade +20)*10));
						context.font = 'italic bold 14px sans-serif';
					    context.fillText(result[i].scoreGrade , graphWidth, 480-((result[i].scoreGrade +20)*10));
					    context.font = 'italic bold 5px sans-serif';
					    context.fillText( (i+1), graphWidth, 300);
				    }
			/*그래프 그리기 끝*/	    	

		    /*해당 내용 출력*/
			context.stroke();
			
		}
	})
	
	

	
	
	

}

$(document).ready(function(){
	userScoreList();
})
