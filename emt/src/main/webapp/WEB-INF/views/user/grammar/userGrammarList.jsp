<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>EMT</title>
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="<c:url value="/css/AdminLTE.min.css"/>">
<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="<c:url value="/css/_all-skins.min.css"/>">
<link rel="stylesheet" href="<c:url value="/css/member/userMemberList.css"/>">
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->

<body class="hold-transition skin-blue layout-top-nav">
	<div class="wrapper">
		<header class="main-header">
			<nav class="navbar navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<a href="/emt/index" class="navbar-brand"><b>English</b>Mock Test</a>
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar-collapse">
							<i class="fa fa-bars"></i>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse pull-left"
						id="navbar-collapse">
						<ul class="nav navbar-nav">
							<li><a href="/emt/user/test/mockTest">토익스피킹 모의고사</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">파트별문제풀기 <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="/emt/user/part/part1">Part1</a></li>
									<li><a href="/emt/user/part/part2">Part2</a></li>
									<li><a href="/emt/user/part/part3">Part3</a></li>
									<li><a href="/emt/user/part/part4">Part4</a></li>
									<li><a href="/emt/user/part/part5">Part5</a></li>
									<li><a href="/emt/user/part/part6">Part6</a></li>
								</ul></li>
							<li><a href="/emt/user/grammar/userGrammar">문법문제</a></li>	
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">게시판 <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="/emt/notice">공지사항</a>
									<li><a href="/emt/board">문제공유</a>
								</ul></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
					<!-- Navbar Right Menu -->
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">${sid }</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="/emt/user/review/userReview?sid=${sid}">복습</a></li>
									<li><a href="/emt/user/score/userScore">문법점수</a></li>
									<li><a href="/emt/user/member/userMemberList?userId=${sid}">정보수정</a></li>
									<li id="logout"><a>로그아웃</a></li>
								</ul></li>
						</ul>
					</div>
					<!-- /.navbar-custom-menu -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>
		<!-- Full Width Column -->
		<div class="content-wrapper">
			<div class="container">
				<!-- Content Header (Page header) -->
				<section class="content-header"></section>

				<!-- Main content -->
				<section class="content">

				<div class="box box-info">
						<div class="box-header with-border">
							<h3 class="box-title">문법 문제</h3>
							<div class="box-tools pull-right">
								<!-- 회차선택   -->
								<select id="selecter" name="selecter">
						 				<option value="">회차선택</option>
						 				<option value="1">1회</option>
						 				<option value="2">2회</option>
						 				<option value="3">3회</option>
										<option value="4">4회</option>
						 				<option value="5">5회</option>
						 				<option value="6">6회</option>
						 				<option value="7">7회</option>
						 				<option value="8">8회</option>
						 				<option value="9">9회</option>
						 				<option value="10">10회</option>
						 		</select><button onclick='userGrammarInnning()'>이동</button>
							</div>
						</div>
						<form action="#">
						<!-- /.box-header -->
						<div class="box-body">
							<div id="userGrammarView" class="table-responsive">

								<table class="table no-margin">									
									<thead>									
										<tr>
											<td></td>
											<td></td>
										</tr>
									</thead>									
									<tbody>
										<tr>			 											
											<td></td>
											<td></td>
										</tr>
									</tbody>

								</table>
							</div>
							<!-- /.table-responsive -->
							<div id="userGrammarChk" class="table-responsive">
							</div>



						</div>
						</form>
						<!-- /.box-body -->
					</div>
					
					

					
				</section>
				<!-- /.content -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer navbar-fixed-bottom">
				<div class="container">
					<div class="pull-right hidden-xs">
						<b>Version</b> 1.0.0
					</div>
					<strong>Copyright &copy; 2016 <a
						href="/emt/index">English Mock Test</a>
					</strong> All rights reserved.
				</div>
			</footer>
	</div>


	
	
	<!-- 작은 모달 -->
	<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	    <!-- 모달의 헤더 -->
	      <div class="modal-header" id="modalHeader">
	      <!-- 모달의 닫기버튼 span에 클래스를 주어서 변경 (우상단의 닫기버튼) -->
		<button type="button"  class="close" data-dismiss="modal">
		<span aria-hidden="true">×</span>
		<span class="sr-only">Close</span></button>
		
		<!-- 모달의 제목(헤더의 내용) -->
		<h4 class="modal-title" id="modalTitle">EMT 알림메시지</h4>
	      </div>
	      <!-- 모달의 내용(메시지) -->
	      <div class="modal-body" id="modalContent">
			...
	      </div>
	      <!-- 확인, 취소등의 버튼을 넣는곳 -->
	      <div class="modal-footer" id="modalBtns">
		<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div><!-- 모달 END -->
	
	<!-- 로그아웃용 작은 모달 -->
	<div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header" id="modalHeader1">
		<button type="button" class="close" data-dismiss="modal">
		<span aria-hidden="true">×</span>
		<span class="sr-only">Close</span>
		</button>
		<h4 class="modal-title" id="modalTitle1">EMT 알림메시지</h4>
	      </div>
	      <div class="modal-body" id="modalContent1">
			로그아웃 되었습니다.
	      </div>
	      <div class="modal-footer" id="modalBtns1">
		<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div><!-- 모달 END -->
	

	<!-- ./wrapper -->

	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<!-- Bootstrap 3.3.5 -->
	<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
	<!-- SlimScroll -->
	<script src="<c:url value="/js/jquery.slimscroll.min.js"/>"></script>
	<!-- FastClick -->
	<script src="<c:url value="/js/fastclick.min.js"/>"></script>
	<!-- AdminLTE App -->
	<script src="<c:url value="/js/app.min.js"/>"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="<c:url value="/js/demo.js"/>"></script>
	<script src="<c:url value="/js/logout.js"/>"></script>
	<script src="<c:url value="/js/grammar/user/userGrammarList.js"/>"></script>
	
<script>
//정답체크 
var sum;

function answerChk(){
	
	//색깔 변경하는 css의 클래스 lime의 배열(문제 부분에 적용된 클래스), showHide의 배열(정답부분에 적용된 클래스)
	var limes = document.getElementsByClassName("lime");
	var showHide = document.getElementsByClassName("showHide");
	
	//정답 오답을 넣어놓는 배열
	var result = new Array();
	//문제 문항 선택 값을 넣어놓는 배열
	var selected = new Array();
	//정답시 초록색 오답시 빨간색을 넣는 배열
	var color = new Array();
	//맞은 개수를 넣는 sum
	sum = 0;
	for(var i=0; i<answer.length; i++){
		
		selected[i] = $("input[type='radio'][name='"+i+"']:checked").val();
		
		if(answer[i] == selected[i]){
			result[i] = "정답";
			color[i] = "blue";
			sum += 1;
			limes[i].style.color= "blue";
			showHide[i].style.color="blue";
			
		} else{
			if(selected[i] == null){
				selected[i] = "체크안함";
			} else{
				selected[i] = $("input[type='radio'][name='"+i+"']:checked").val();	
			}
			
			result[i] = "오답";
			color[i] = "red";
			limes[i].style.color= "red";
			showHide[i].style.color="red";
		}
	
	}
	

	var id= "${sid}";
	var grammarInning = $("#selecter :selected").val();
	
	if(grammarInning.length == 0){
		grammarInning = 1;
	} else {
		grammarInning = $("#selecter :selected").val();
	}

	$.ajax({
		url: "/emt/user/score/scoreInsert",
		method: "POST",
		data: {
			userId: id,
			grammarInning: grammarInning,
			scoreGrade: sum
		}
	}).done(function(result){
		/*정답을 보여주는 매서드*/
		$('.showHide').show(); 
	})
	
	// 모달 내용(메시지)가 들어가는 div에 메시지를 새로 씁니다.
	$("#modalContent").html(
					  "<div>"+"문항번호 /선택 / 정답 : 채점결과" +"</div>"	
					+ "<div style='color:"+color[0]+"'>"+"1번"+" /"+selected[0]+" /"+ answer[0]+ " :"+result[0]+"</div>"
					+ "<div style='color:"+color[1]+"'>"+"2번"+" /"+selected[1]+" /"+ answer[1]+ " :"+result[1]+"</div>"
					+ "<div style='color:"+color[2]+"'>"+"3번"+" /"+selected[2]+" /"+ answer[2]+ " :"+result[2]+"</div>"
					+ "<div style='color:"+color[3]+"'>"+"4번"+" /"+selected[3]+" /"+ answer[3]+ " :"+result[3]+"</div>"
					+ "<div style='color:"+color[4]+"'>"+"5번"+" /"+selected[4]+" /"+ answer[4]+ " :"+result[4]+"</div>"
					+ "<div style='color:"+color[5]+"'>"+"6번"+" /"+selected[5]+" /"+ answer[5]+ " :"+result[5]+"</div>"
					+ "<div style='color:"+color[6]+"'>"+"7번"+" /"+selected[6]+" /"+ answer[6]+ " :"+result[6]+"</div>"
					+ "<div style='color:"+color[7]+"'>"+"8번"+" /"+selected[7]+" /"+ answer[7]+ " :"+result[7]+"</div>"
					+ "<div style='color:"+color[8]+"'>"+"9번"+" /"+selected[8]+" /"+ answer[8]+ " :"+result[8]+"</div>"
					+ "<div style='color:"+color[9]+"'>"+"10번"+" /"+selected[9]+" /"+ answer[9]+ " :"+result[9]+"</div>"
					+"수고하셨습니다. 최종 맞은 갯수" + sum +" / 10개"


		);

		// 모달을 보이게 하는 소스
		$("#modal").modal('show');

		//alert("맞은갯수"+sum);
		
		

		
		
		
	}
</script>	