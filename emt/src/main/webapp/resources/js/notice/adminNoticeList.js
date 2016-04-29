
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
							+"<td><span class='label label-success'>"+result[i].userId+"</span></td>"
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
					$("#myPage").append("<li onclick='noticeList("+(prev+1)+")'>"+"<a href='#'>"+(prev+1)+"</a></li>");
					
				} else {
					
					for(prev; prev<next; prev++){
						$("#myPage").append("<li onclick='noticeList("+(prev+1)+")'>"
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
			
			noticeList(prev+1);
			
			$("#myPage").append("<li onclick='prevList("+prev+")'><a href='#'><<</a></li>");
			
			for(prev; prev<pageCount; prev++){
				
				$("#myPage").append("<li onclick='noticeList("+(prev+1)+")'>"+"<a href='#'>"+(prev+1)+"</a></li>");
				
			}
		} else {
			
			noticeList(prev+1);
			
			$("#myPage").append("<li onclick='prevList("+prev+")'><a href='#'><<</a></li>");
			
			for(prev; prev<next; prev++){
				
				$("#myPage").append("<li onclick='noticeList("+(prev+1)+")'>"
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
			
			noticeList(next+1);
			
			for(next; next<prev; next++){
				
				$("#myPage").append("<li onclick='noticeList("+(next+1)+")'>"+"<a href='#'>"+(next+1)+"</a></li>");
				
			}
			
			$("#myPage").append("<li onclick='nextList("+next+")'><a href='#'>>></a></li>");
			
		} else {
			
			noticeList(next+1);
			
			$("#myPage").append("<li onclick='prevList("+(prev-3)+")'><a href='#'><<</a></li>");
			
			for(next; next<prev; next++){
				
				$("#myPage").append("<li onclick='noticeList("+(next+1)+")'>"
				+"<a href='#'>"+(next+1)+"</a></li>");
			}
			
			$("#myPage").append("<li onclick='nextList("+next+")'><a href='#'>>></a></li>");
		}
	}	
	
	$(document).ready(function(){
		noticeList(1);
		noticePage();
		
		$("#noticeForm").submit(function(e) {

			e.preventDefault();
			if($("input[name='boardNo']:checked").length >0){
			var radio_value = $("input[name='boardNo']:checked").val();
			
			$.ajax({
				method : "POST",
				url : "/emt/admin/noticeDelete",
				data : {
					boardNo : radio_value
				},
				success : function(result){
					if(result>0){
						$("#modalContent").html("삭제성공"); 
						$("#modalDel").modal({show:true});
						noticeList(1);
						noticePage();
					}
					else {
						$("#modalContent").html("삭제실패"); 
						$("#modalDel").modal({show:true});
					}
				}
			
			})
			}
			else {
				$("#modalContent").html("삭제할 글을 체크하셔야 합니다."); 
				$("#modalDel").modal({show:true});
			}
	});
	});
	
		
	
		