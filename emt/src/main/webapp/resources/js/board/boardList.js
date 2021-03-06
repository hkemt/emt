		function boardList(page){

			$.ajax({
				url: "boardList",
				method: "POST",
				data: { type :  page},
				success : function(result){
					
					$("#boardView").html("<table id='boardTable' class='table no-margin'></table>");
					
					$("#boardTable").append("<thead><tr><th>번호</th><th>제목</th><th>날짜</th><th>아이디</th><th>조회수</th></tr></thead>");
					
					$("#boardTable").append("<tbody>");
					var title="";
					for(var i=0; i<result.length; i++){
						if(result[i].isFix=='T') {
							title=result[i].boardTitle;
							if(title.length>30){
								title=title.substr(0,30);
							}
							$("#boardTable").append("<tr class='text-bold'><td>"
									+"</td><td style='width:50%; white-space: nowrap;'><a href='boardDetailMove?boardNo="+result[i].boardNo+"'>"+title
									+"</a></td><td>"+result[i].boardDate
									+"</td><td>"
									+"</td><td>"+result[i].boardCount+"</td></tr>"); 
		
						} else {
							$("#boardTable").append("<tr><td>"+result[i].boardNo
									+"</td><td style='width:50%; white-space: nowrap;'><a href='boardDetailMove?boardNo="+result[i].boardNo+"'>"+result[i].boardTitle
									+"</a></td><td>"+result[i].boardDate
									+"</td><td>"+result[i].userId
									+"</td><td>"+result[i].boardCount+"</td></tr>"); 
		
						}
					}
					$("#boardTable").append("</tbody>");
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
		
		function boardPage(){
			
			$.ajax({
				url: "boardCount",
				method : "POST",
				success : function(count){

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
						$("#myPage").append("<li onclick='boardList("+(prev+1)+")'>"+"<a href='#'>"+(prev+1)+"</a></li>");
						
					} else {
						
						for(prev; prev<next; prev++){
							$("#myPage").append("<li onclick='boardList("+(prev+1)+")'>"
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
				
				boardList(prev+1);
				
				$("#myPage").append("<li onclick='prevList("+prev+")'><a href='#'><<</a></li>");
				
				for(prev; prev<pageCount; prev++){
					
					$("#myPage").append("<li onclick='boardList("+(prev+1)+")'>"+"<a href='#'>"+(prev+1)+"</a></li>");
					
				}
			} else {
				
				boardList(prev+1);
				
				$("#myPage").append("<li onclick='prevList("+prev+")'><a href='#'><<</a></li>");
				
				for(prev; prev<next; prev++){
					
					$("#myPage").append("<li onclick='boardList("+(prev+1)+")'>"
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
				
				boardList(next+1);
				
				for(next; next<prev; next++){
					
					$("#myPage").append("<li onclick='boardList("+(next+1)+")'>"+"<a href='#'>"+(next+1)+"</a></li>");
					
				}
				
				$("#myPage").append("<li onclick='nextList("+next+")'><a href='#'>>></a></li>");
				
			} else {
				
				boardList(next+1);
				
				$("#myPage").append("<li onclick='prevList("+(prev-3)+")'><a href='#'><<</a></li>");
				
				for(next; next<prev; next++){
					
					$("#myPage").append("<li onclick='boardList("+(next+1)+")'>"
					+"<a href='#'>"+(next+1)+"</a></li>");
				}
				
				$("#myPage").append("<li onclick='nextList("+next+")'><a href='#'>>></a></li>");
			}
		}
		
		$(document).ready(function(){
			boardList(1);
			boardPage();
		})