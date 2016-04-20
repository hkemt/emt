/* 댓글  */
function replyList(page) {
	$.ajax({
		url: "replyList",
		method: "POST",
		data: {type: page
			},
		success: function(result){
			$("#replyView").html("<table id='replyTable' class='table no-margin'></table>");
			$("#replyTable").append("<thead><tr><th>번호</th><th>내용</th><th>아이디</th><th>작성일</th></thead>");
			$("#replyTable").append("<tbody>")
			for(var i=0; i<result.length; i++){
				$("#replyTable").append(
						"<tr>"
						+"<td>"+result[i].replyNo+"</td>"
						+"<td>"+result[i].replyContent+"</td>"
						+"<td><span class='label label-success'>"+result[i].userId+"</span></td>"
						+"<td>"+result[i].replyDate+"</td></tr>"); 	
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
		data: {
			boardNo: $("#boardNo").val()
		},
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


$(document).ready(function(){
	$('#replyInsert').submit(function(e) {
		e.preventDefault();
		
		$.ajax({
			url : "replyInsert",
			method: "POST",
			data: {
				userId: $("#userId").val(),
				replyContent: $("#replyContent").val(),
				boardNo: $("#boardNo").val()
			}
		}).done(function(result){
			alert('등록성공');
			replyList(1);
		})
		
		
	})
})



$(document).ready(function() {
	
	replyList(1);
	replyPage();

});