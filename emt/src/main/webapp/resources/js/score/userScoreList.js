var scoreWidth = new Array();
var color = ["red","orange","yellow","green","blue","lime","red","orange","blue","green","yellow","lime","red","orange","blue","green","yellow","lime"];
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
					
					/*그래프 색깔과 두께 알파값으로 그래프색깔연하게*/
					context.strokeStyle = "gray";
					context.lineWidth = 1;
					
					context.globalAlpha = 0.6;
					
					/*텍스트 크기와 색깔*/
				    context.fillStyle = '"black';
				    context.font = 'italic bold 14px sans-serif';
				    context.textBaseline = 'bottom';
				    
				    
				   
					/*그래프와 텍스트 입력*/
					context.moveTo(graphWidth+50, 380-((result[0].scoreGrade +20)*10));
					/*그래프가 가로로 늘어나는 길이*/
					

					 graphWidth = 0;
				    for(var i=0; i<10; i++){
				    	graphWidth += 50;
				    	
				    	

				    	
						context.lineTo(graphWidth, 380-((result[i].scoreGrade +20)*10));
						
						/*점수 텍스트*/
						context.font = 'italic bold 14px sans-serif';
					    context.fillText(result[i].scoreGrade , (graphWidth+3), 380-((result[i].scoreGrade +20)*10));				    

					    /*하단 번호 텍스트*/
					    context.font = 'italic bold 5px sans-serif';
					    context.fillText( (i+1), graphWidth, 200);
					    	
					    /*해당 내용 출력*/
						context.stroke();
				    }
			/*그래프 그리기 끝*/	    	
				    
				    /*막대 그래프 추가*/
				    graphWidth =0;
				    for(var i=0; i<10; i++){
				    	graphWidth += 50;
				    	
				    	/*점수에 따라 그래프  색깔 변경*/
				    	switch (result[i].scoreGrade) {
				    	case 0: changeColor = color[5];break;
						case 1: changeColor = color[5];break;
						case 2: changeColor = color[5];break;	
						case 3: changeColor = color[5];break;	
						case 4: changeColor = color[5];break;	
						case 5: changeColor = color[5];break;	
						case 6: changeColor = color[4];break;	
						case 7: changeColor = color[3];break;	
						case 8: changeColor = color[2];break;	
						case 9: changeColor = color[1];break;	
						case 10: changeColor = color[0];break;	

						default:
							break;
						}
				    	
				   
				    	context.fillStyle = changeColor;
						context.fillRect(graphWidth-5,180-(result[i].scoreGrade *10), 10,(result[i].scoreGrade *10));
						context.stroke();
						
				    }	
				    /*막대 그래프 끝*/
			
		}
	})
	
	

	
	
	

}

$(document).ready(function(){
	userScoreList();
})
