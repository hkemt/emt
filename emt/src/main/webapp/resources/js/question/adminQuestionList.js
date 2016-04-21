
	function questionList(page) {
		
		$.ajax({
			url: "questionList",
			method: "GET",
			data: { type : page},
			success: function(result) {
				$("#questionView").html("<table id='questionTable' class='table no-margin'></table>");
				$("#questionTable").append("<thead><tr><th></th><th>문제번호</th><th>문제유형</th><th>Video경로</th></thead>");
				$("#questionTable").append("<tbody>")
				for(var i=0; i<result.length; i++){
					
					switch(result[i].questionType){
					case 1: color = "warning"; break;
					case 2: color = "danger"; break;
					case 3: color = "info"; break;
					case 4: color = "success"; break;
					case 5: color = "warning"; break;
					case 6: color = "danger"; break;
					
					}
					
					
					$("#questionTable").append("<tr>"	+"<td><input type='radio' name='questionNo' value="+result[i].questionNo+"></td>"
														+"<td><a href='questionView?questionNo="+result[i].questionNo + "'>"+result[i].questionNo + "</a></td>"
														+"<td><span class='label label-"+color+"'>"+result[i].questionType +"</span></td>"
														+"<td>"+result[i].questionVideo +"</td></tr>");				
				
				}
				$("#questionTable").append("</tbody");
			}
		});	
	};
	
	
	var countAll;
	var pageCount;
	var prev;
	var next;
	
	function questionPage(){
		
		$.ajax({
			url: "questionCount",
			method: "GET",
			success: function(count){
			
				
				$("#pages").html("<ul id='myPage' class='pagination pagination-sm no-margin pull-right'>");
				
				countAll = count;
				
				if(countAll%7>0){
					
					pageCount = Math.floor((countAll/7)+1);
				}
				else {
					
					pageCount = countAll/7;
				}
				
				prev=0;
				next=prev+3;
				
				if(pageCount<3){
					
					for(prev; prev<next; prev++)
					$("#myPage").append("<li onclick='questionList("+(prev+1)+")'>"+"<a href='#'>"+(prev+1)+"</a></li>");
					
				} else {
					
					for(prev; prev<next; prev++){
						$("#myPage").append("<li onclick='questionList("+(prev+1)+")'>"
						+"<a href='#'>"+(prev+1)+"</a></li>");
					}
					
					$("#myPage").append("<li onclick='nextList("+prev+")'><a href='#'>>></a></li>");
				}
				
			}
			
		});
		
	};
	
	
	
	function nextList(count){
		
		// 페이지를 다시 씁니다.
		$("#pages").html("<ul id='myPage' class='pagination pagination-sm no-margin pull-right'>");
		
		next=prev+3;
		
		
		
		if(count>=(pageCount-3)){
			
			questionList(prev+1);
			
			$("#myPage").append("<li onclick='prevList("+prev+")'><a href='#'><<</a></li>");
			
			for(prev; prev<pageCount; prev++){
				
				$("#myPage").append("<li onclick='questionList("+(prev+1)+")'>"+"<a href='#'>"+(prev+1)+"</a></li>");
				
			}
		} else {
			
			questionList(prev+1);
			
			$("#myPage").append("<li onclick='prevList("+prev+")'><a href='#'><<</a></li>");
			
			for(prev; prev<next; prev++){
				
				$("#myPage").append("<li onclick='questionList("+(prev+1)+")'>"
				+"<a href='#'>"+(prev+1)+"</a></li>");
			}
			
			$("#myPage").append("<li onclick='nextList("+prev+")'><a href='#'>>></a></li>");
		}
		
	}	
	
	
	function prevList(count){
		
		// 페이지를 다시 씁니다.
		$("#pages").html("<ul id='myPage' class='pagination pagination-sm no-margin pull-right'>");
		
		prev=count;
		next=prev-3;
		
		if(count<=3){
			
			questionList(next+1);
			
			for(next; next<prev; next++){
				
				$("#myPage").append("<li onclick='questionList("+(next+1)+")'>"+"<a href='#'>"+(next+1)+"</a></li>");
				
			}
			
			$("#myPage").append("<li onclick='nextList("+next+")'><a href='#'>>></a></li>");
			
		} else {
			
			questionList(next+1);
			
			$("#myPage").append("<li onclick='prevList("+(prev-3)+")'><a href='#'><<</a></li>");
			
			for(next; next<prev; next++){
				
				$("#myPage").append("<li onclick='questionList("+(next+1)+")'>"
				+"<a href='#'>"+(next+1)+"</a></li>");
			}
			
			$("#myPage").append("<li onclick='nextList("+next+")'><a href='#'>>></a></li>");
		}
	}	
	
	$(document).ready(function(){
		questionList(1);
		questionPage();
	})
	
	