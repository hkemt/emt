var color = ["info","success","danger","warning","info","success","danger"]
	function memberList(page) {
		
		$.ajax({
			url: "memberList",
			method: "GET",
			data: { type: page},
			success: function(result) {
				 
				$("#memberView").html("<table id='memberTable' class='table no-margin'></table>");
				$("#memberTable").append("<thead><tr><th></th><th>아이디</th><th>이메일</th><th>가입일자</th></thead>");
				$("#memberTable").append("<tbody>")
				for(var i=0; i<result.length; i++){
					$("#memberTable").append("<tr>"
													+"<td><input type='radio' name='userId' value="+result[i].userId+"></td>"
													+"<td><span class='label label-"+color[i]+"'>"+result[i].userId+"</td>"
													+"<td>"+result[i].email+"</td>"
													+"<td>"+result[i].userDate+"</td></tr>");
				}
				$("#memberTable").append("</tbody>");
				 
			 	
			}
		});
	};
	
	var countAll;
	var pageCount;
	var prev;
	var next;
	
	function memberPage(){
		$.ajax({
			url: "memberCount",
			method: "GET",
			success: function(count){
				
				$("#pages").html("<ul id='myPage' class='pagination pagination-sm no-margin pull-right'>");
				
				countAll = count;
				
				if((countAll%7)>0){
					
					pageCount = Math.floor((countAll/7)+1);
				}
				else if((countAll%7)==0){
					
					pageCount = countAll/7;
				} else if(countAll < 7){
					pageCount = 1;
				}
				
				prev=0;
				next=prev+3;
				
				if(pageCount<=3){
					
					for(prev; prev<pageCount; prev++)
					$("#myPage").append("<li onclick='memberList("+(prev+1)+")'>"+"<a href='#'>"+(prev+1)+"</a></li>");
					
				} else {
					
					for(prev; prev<next; prev++){
						$("#myPage").append("<li onclick='memberList("+(prev+1)+")'>"
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
			
			memberList(prev+1);
			
			$("#myPage").append("<li onclick='prevList("+prev+")'><a href='#'><<</a></li>");
			
			for(prev; prev<pageCount; prev++){
				
				$("#myPage").append("<li onclick='memberList("+(prev+1)+")'>"+"<a href='#'>"+(prev+1)+"</a></li>");
				
			}
		} else {
			
			memberList(prev+1);
			
			$("#myPage").append("<li onclick='prevList("+prev+")'><a href='#'><<</a></li>");
			
			for(prev; prev<next; prev++){
				
				$("#myPage").append("<li onclick='memberList("+(prev+1)+")'>"
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
			
			memberList(next+1);
			
			for(next; next<prev; next++){
				
				$("#myPage").append("<li onclick='memberList("+(next+1)+")'>"+"<a href='#'>"+(next+1)+"</a></li>");
				
			}
			
			$("#myPage").append("<li onclick='nextList("+next+")'><a href='#'>>></a></li>");
			
		} else {
			
			memberList(next+1);
			
			$("#myPage").append("<li onclick='prevList("+(prev-3)+")'><a href='#'><<</a></li>");
			
			for(next; next<prev; next++){
				
				$("#myPage").append("<li onclick='memberList("+(next+1)+")'>"
				+"<a href='#'>"+(next+1)+"</a></li>");
			}
			
			$("#myPage").append("<li onclick='nextList("+next+")'><a href='#'>>></a></li>");
		}
	}	
	
	
	$(document).ready(function(){
		memberList(1);
		memberPage();
	})

