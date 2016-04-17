		function noticeList(count){
			$.ajax({
				
				url : "noticeBoardList",
				method : "POST",
				data : {type : count},
				success : function(result){
					
					$("#noticeView").html("<table id='noticeTable' class='table no-margin'></table>");
					
					$("#noticeTable").append("<thead><tr><th>번호</th><th>제목</th><th>날짜</th><th>아이디</th><th>조회수</th></tr></thead>");
					
					$("#noticeTable").append("<tbody>")
					for(var i=0; i<result.length; i++){
						if(result[i].isFix=='T') {
							$("#noticeTable").append("<tr class='text-bold'><td>"
									+"</td><td><a href='noticeDetailMove?boardNo="+result[i].boardNo+"'>"+result[i].boardTitle
									+"</a></td><td>"+result[i].boardDate
									+"</td><td>"
									+"</td><td>"+result[i].boardCount+"</td></tr>"); 
		
						} else {
							$("#noticeTable").append("<tr><td>"+result[i].boardNo
									+"</td><td><a href='noticeDetailMove?boardNo="+result[i].boardNo+"'>"+result[i].boardTitle
									+"</a></td><td>"+result[i].boardDate
									+"</td><td>"+result[i].userId
									+"</td><td>"+result[i].boardCount+"</td></tr>"); 
		
						}
					}
					$("#noticeTable").append("</tbody>");
				}
			});
		};
		
		
		// 페이징
		// 게시글 전체 개수
		var countAll;
		// 페이지 숫자
		var pageCount;
		var prev;
		var next;
		
		function noticePage(){
			
			$.ajax({
				url: "noticeBoardCount",
				method : "POST",
				success : function(count){

					$("#pages").html("<ul id='myPage' class='pagination pagination-sm no-margin pull-right'>");
					
					countAll = count;
					
					if((countAll%7)>0){
						
						pageCount = Math.floor((countAll/7)+1);
					}
					else if((countAll%7)==0){
						
						pageCount = countAll/7;
					} 
					else if(countAll<7){
						
						pageCount = 1;
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
				
				boardList(prev+1);
				
				$("#myPage").append("<li onclick='noticeList("+prev+")'><a href='#'><<</a></li>");
				
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
				
				boardList(next+1);
				
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
			
		});