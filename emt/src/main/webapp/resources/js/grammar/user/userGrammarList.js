		var answer= new Array();
	function userGrammarList() {
		$.ajax({
			url: "userGrammarList",
			method: "GET",
			data: { type: 1,
				grammarInning: 1
			
			},
			success: function(result){
				$("#userGrammarView").html("<table id='userGrammarTable' class='table no-margin'></table>");
				$("#userGrammarTable").append("<thead><tr><th></th><th></th></thead>");
				$("#userGrammarTable").append("<tbody>")
				
				for(var i=0; i<2; i++){

					answer[i] = result[i].grammarAnswer;					

					$("#userGrammarTable").append(
							"<tr>"
							+"<td colspan='2'>"+result[i].grammarInning+"회 "+result[i].grammarNo+"번 "+result[i].grammarQuiz+" 정답:"+answer[i]+"</td>"
							+"</tr>"
							
							+"<tr>"
							+"<td colspan='2'><div style=' height: auto; width: 500px'>"+result[i].grammarEx+"</div></td>"
							+"</tr>"
							
							+"<tr>"
							+"<td style='width:10px'><input type='radio' name='"+i+"' value='1'></td>"
							+"<td>"+result[i].grammarEx1+"</td>"
							+"</tr>"
							
							+"<tr>"
							+"<td style='width:10px'><input type='radio' name='"+i+"' value='2'></td>"
							+"<td>"+result[i].grammarEx2+"</td>"
							+"</tr>"
							
							+"<tr>"
							+"<td style='width:10px'><input type='radio' name='"+i+"' value='3'></td>"
							+"<td>"+result[i].grammarEx3+"</td>"
							+"</tr>"
							
							+"<tr>"
							+"<td style='width:10px'><input type='radio' name='"+i+"' value='4'></td>"
							+"<td>"+result[i].grammarEx4+"</td>"
							+"</tr>"
							
							); 	
				}
				$("#userGrammarTable").append("</tbody>");
			}
		});
	};	

	//문법 회차 클릭시 해당 회차 출력
	function userGrammarInnning(){
		$.ajax({
			url:"userGrammarInning",
			method:"GET",
			data: {
				type:1,
				grammarInning: $("#selecter :selected").val()
			},
			success: function(result){
				$("#userGrammarView").html("<table id='userGrammarTable' class='table no-margin'></table>");
				$("#userGrammarTable").append("<thead><tr><th></th><th></th></thead>");
				$("#userGrammarTable").append("<tbody>")
				for(var i=0; i<result.length; i++){

					answer[i] = result[i].grammarAnswer;
					
					$("#userGrammarTable").append(
							"<tr>"
							+"<td colspan='2'>"+result[i].grammarInning+"회 "+result[i].grammarNo+"번 "+result[i].grammarQuiz+" 정답:"+answer[i]+"</td>"
							+"</tr>"
							
							+"<tr>"
							+"<td colspan='2'><div style='border: 1px solid #48BAE4; height: auto; width: 500px'>"+result[i].grammarEx+"</div></td>"
							+"</tr>"
							
							+"<tr>"
							+"<td style='width:10px'><input type='radio' name='"+i+"' value='1'></td>"
							+"<td>"+result[i].grammarEx1+"</td>"
							+"</tr>"
							
							+"<tr>"
							+"<td style='width:10px'><input type='radio' name='"+i+"' value='2'></td>"
							+"<td>"+result[i].grammarEx2+"</td>"
							+"</tr>"
							
							+"<tr>"
							+"<td style='width:10px'><input type='radio' name='"+i+"' value='3'></td>"
							+"<td>"+result[i].grammarEx3+"</td>"
							+"</tr>"
							
							+"<tr>"
							+"<td style='width:10px'><input type='radio' name='"+i+"' value='4'></td>"
							+"<td>"+result[i].grammarEx4+"</td>"
							+"</tr>"
							
							); 	
				}
				$("#userGrammarTable").append("</tbody>");
			}
		});
	};
	
	
		
	$(document).ready(function(){
		userGrammarList(1);
	})
