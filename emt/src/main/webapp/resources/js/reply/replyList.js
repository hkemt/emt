/* 댓글  */
function replyList(page) {
	$.ajax({
		url: "replyList",
		method: "POST",
		data: {type: page,
			boardNo: $("#boardNo").val()
			},
		success: function(result){
			$("#replyView").html("<table id='replyTable' class='table no-margin'></table>");
			$("#replyTable").append("<thead><tr><th>번호</th><th style='width:60%; text-align:center;'>내용</th><th>아이디</th><th>작성일</th></thead>");
			$("#replyTable").append("<tbody>")
			for(var i=0; i<result.length; i++){
				$("#replyTable").append(
						"<tr>"
						+"<td>"+result[i].replyNo+"</td>"
						+"<td style='width:60%;'>"+result[i].replyContent+"</td>"
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
		
		var id = $("#userId").val();
		var content = $("#replyContent").val();
		
		if(id.length != 0 && content.length != 0){
		
			$.ajax({
				url : "replyInsert",
				method: "POST",
				data: {
					userId: id,
					replyContent: content,
					boardNo: $("#boardNo").val()
				}
			}).done(function(result){
				if(result>0){
					$("#modalContent").html("등록성공");
					$("#modal").modal("show");
					// 댓글 등록후 입력란 비우기
					$("#replyContent").val("");
				
					replyList(1);
					replyPage();
				}
			})
		
		} else {
			if(id.length==0){
				$("#modalContent").html("로그인을 해야합니다.");
				$("#modal").modal("show");
			}
			else if(content.length == 0){
				$("#modalContent").html("내용을 입력하세요.");
				$("#modal").modal("show");
			}
		}
	})
})



$(document).ready(function() {
	
	replyList(1);
	replyPage();

});