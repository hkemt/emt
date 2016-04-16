$(function() {
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader(); // 파일을 읽기 위한 FileReader객체 생성

			// 파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
			reader.onload = function(e) {

				// DIV에 비디오태그 추가
				$('#video').html(
						"<video width='800px' height='500px' controls='controls' autoplay='autoplay'>"
								+ "<source src='" + e.target.result
								+ "' type='video/mp4'/>" + "</video>");
			}
			// File내용을 읽어 dataURL형식의 문자열로 저장
			reader.readAsDataURL(input.files[0]);

		}
	}// readURL()--

	// file 양식으로 이미지를 선택(값이 변경) 되었을때 처리하는 코드
	$("#uploadFile").change(function() {
	//	alert(this.value); // 선택한 이미지 경로 표시

		// 위에 만든 함수를 실행함
		readURL(this);
	});
	$("#add").click(function(){
		var type=$("#questionType");
		type.val($("input[type='radio'][name='_questionType']:checked").val());
		if($("input[type='radio'][name='_questionType']:checked").val()==undefined){
			alert("선택안함");
			event.preventDefault();
		} else{
			
		}
	});
});