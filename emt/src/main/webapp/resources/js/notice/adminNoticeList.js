
	function noticeList(page) {
		$.ajax({
			url: "noticeList",
			method: "GET",
			data: {type: page},
			success: function(result){
				$("#noticeView").html("<table id='noticeTable' class='table no-margin'></table>");
				$("#noticeTable").append("<thead><tr><th></th><th>번호</th><th>제목</th><th>아이디</th><th>날짜</th></thead>");
				$("#noticeTable").append("<tbody>")
				for(var i=0; i<result.length; i++){
					$("#noticeTable").append(
							"<tr>"
							+"<td><input type='radio' name='boardNo' value='"+result[i].boardNo+"'></td>"
							+"<td>"+result[i].boardNo+"</td>"
							+"<td>"+result[i].boardTitle+"</td>"
							+"<td>"+result[i].userId+"</td>"
							+"<td>"+result[i].boardDate+"</td></tr>"); 	
				}
				$("#noticeTable").append("</tbody>");
			}
		});
	};

	var countAll;
	var pageCount;
	var prev;
	var next;
	
	function noticePage(){
		$.ajax({
			url: "noticeCount",
			method: "GET",
			success: function(count){
				countAll = count;
				
				if((countAll%7)>0) {
					pageCount = Math.floor((countAll/7)+1);
				}
				else {
					pageCount = countAll/7;
				}
				$("#noticePage").html("<ul id='myPage' class='pagination pagination-sm no-margin pull-right'>");
				
				for(var i=0; i<pageCount; i++){
					$("#myPage").append("<li onclick='noticeList("+(i+1)+ ")'>"+"<a href='#'>"+(i+1)+"</a></li>");
				}
			}
		});
	};
	
	$(document).ready(function(){
		noticeList(1);
		noticePage();
	})
	
	