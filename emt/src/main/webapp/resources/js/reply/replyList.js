/* 댓글  */
function replyList(page) {
	$.ajax({
		url: "replyList",
		method: "POST",
		data: {type: page},
		success: function(result){
			$("#replyView").html("<table id='replyTable' class='table no-margin'></table>");
			$("#replyTable").append("<thead><tr><th>replyNo</th><th>REPLY_CONTENT</th><th>USER_ID</th><th>REPLY_DATE</th><th>BOARD_NO</th></thead>");
			$("#replyTable").append("<tbody>")
			for(var i=0; i<result.length; i++){
				$("#replyTable").append(
						"<tr>"
						+"<td>"+result[i].replyNo+"</td>"
						+"<td>"+result[i].replyContent+"</td>"
						+"<td><span class='label label-success'>"+result[i].userId+"</span></td>"
						+"<td>"+result[i].replyDate+"</td>"
						+"<td>"+result[i].boardNo+"</td></tr>"); 	
			}
			$("#replyTable").append("</tbody>");
		}
	});
};


var countAll;
var pageCount;
var prev;
var next;

function replyPage(){
	$.ajax({
		url: "replyCount",
		method: "POST",
		success: function(count){
			countAll = count;
			
			if((countAll%7)>0){
				pageCount = Math.floor((countAll/4)+1);
			}
			else {
				pageCount = countAll/4;
			}
			
			$("#replyPage").html("<ul id='myPage' class='pagination pagination-sm no margin pull-right'>");
			
			for(var i=0; i<pageCount; i++) {
				$("#myPage").append("<li onclick='replyList("+(i+1)+ ")'>"+"<a href='#'>"+(i+1)+"</a></li>");
			}
			
		}
		
	});
	
};


$(document).ready(function() {
	
	replyList(1);
	replyPage();

});