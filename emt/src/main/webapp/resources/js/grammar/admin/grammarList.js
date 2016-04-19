function grammarList(page) {
	$.ajax({
		url: "/emt/admin/grammarList",
		method: "GET",
		data: {page: page},
		success: function(result){
			$("#grammarList").html("<table id='grammarTable' class='table no-margin' style='width:690px;'></table>");
			$("#grammarTable").append("<thead><tr><th>번호</th><th>질문</th><th>회차</th></thead>");
			$("#grammarTable").append("<tbody>")
			for(var i=0; i<result.length; i++){
				$("#grammarTable").append(
					"<tr>"
					+"<td>"+result[i].grammarNo+"</td>"
					+"<td>"
					+"<a href='/emt/admin/grammarViewMove?grammarNo="+result[i].grammarNo+"'>"
					+result[i].grammarQuiz+"<br>"+result[i].grammarEx.substring(0,80)+"</a></td>"
					+"<td>"+result[i].grammarInning+"</td></tr>"); 	
			}
			$("#grammarTable").append("</tbody>"); 
		}
	});
};

var countAll;
var pageCount;
var prev;
var next;

function grammarPage(){
	$.ajax({
		url: "/emt/admin/grammarCount",
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
			
			if(pageCount<=3){
				
				for(prev; prev<pageCount; prev++)
				$("#myPage").append("<li onclick='grammarList("+(prev+1)+")'>"+"<a href='#'>"+(prev+1)+"</a></li>");
				
			} else {
				
				for(prev; prev<next; prev++){
					$("#myPage").append("<li onclick='grammarList("+(prev+1)+")'>"
					+"<a href='#'>"+(prev+1)+"</a></li>");
				}
				
				$("#myPage").append("<li onclick='grammarList("+prev+")'><a href='#'>>></a></li>");
			}
			
		}
		
	});
	
};



function nextList(count){
	
	// 페이지를 다시 씁니다.
	$("#pages").html("<ul id='myPage' class='pagination pagination-sm no-margin pull-right'>");
	
	next=prev+3;
	
	
	
	if(count>=(pageCount-3)){
		
		grammarList(prev+1);
		
		$("#myPage").append("<li onclick='prevList("+prev+")'><a href='#'><<</a></li>");
		
		for(prev; prev<pageCount; prev++){
			
			$("#myPage").append("<li onclick='grammarList("+(prev+1)+")'>"+"<a href='#'>"+(prev+1)+"</a></li>");
			
		}
	} else {
		
		grammarList(prev+1);
		
		$("#myPage").append("<li onclick='prevList("+prev+")'><a href='#'><<</a></li>");
		
		for(prev; prev<next; prev++){
			
			$("#myPage").append("<li onclick='grammarList("+(prev+1)+")'>"
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
		
		grammarList(next+1);
		
		for(next; next<prev; next++){
			
			$("#myPage").append("<li onclick='grammarList("+(next+1)+")'>"+"<a href='#'>"+(next+1)+"</a></li>");
			
		}
		
		$("#myPage").append("<li onclick='grammarList("+next+")'><a href='#'>>></a></li>");
		
	} else {
		
		grammarList(next+1);
		
		$("#myPage").append("<li onclick='prevList("+(prev-3)+")'><a href='#'><<</a></li>");
		
		for(next; next<prev; next++){
			
			$("#myPage").append("<li onclick='grammarList("+(next+1)+")'>"
			+"<a href='#'>"+(next+1)+"</a></li>");
		}
		
		$("#myPage").append("<li onclick='nextList("+next+")'><a href='#'>>></a></li>");
	}
}	 

$(document).ready(function(){
	grammarList(1);
	grammarPage(); 
})

