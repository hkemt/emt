$.validator.setDefaults({
    submitHandler : function() {

        location.href("/emt/user/member/userMemberUpdate");

    }
});
 
$().ready(function() {
    // validate the comment form when it is submitted
 
    // validate signup form on keyup and submit
    $("#signupForm").validate({
        rules : {
            userPw : {
                required : true, 
                minlength : 5
            },
            confirm_password : {
                required : true, 
                minlength : 5, 
                equalTo : "#userPw"
            },
            email : {
                required : true, 
                email : true
            }
        },
        messages : {
            userPw : {
                required : "비밀번호를 입력하세요.",
                minlength : "5자 이상을 입력하세요."
            },
            confirm_password : {
                required : "비밀번호를 입력하세요.",
                minlength : "5자 이상을 입력하세요.",
                equalTo : "위에 입력한 비밀번호와 일치하지 않습니다."
            },
            email : "유효한 이메일을 입력하세요."
        }
    });
 
});


function userDelete(){
	
		 $("#modalContent2").html("정말탈퇴하시겠습니까?")
		 $("#modal2").modal({show:true});

	


	
}

function userDeleteAjax(){
	
	$.ajax({
		url: "/emt/user/member/userMemberDelete",
		method: "POST",
		data:{ userId : id	
		},
		success: function(result){
			$("#modal2").modal('hide');
			if(result == 1) {
				$("#modalContent").html("탈퇴가 성공적으로 처리 되었습니다.");
				$("#modal").modal({show:true});


			} else{
				$("#modalContent").html("탈퇴에 실패했습니다.");
				$("#modal").modal({show:true});
			}
			
			
		}
			
	})
	
}






if(updateResult == 0 ){

}else{
	if(updateResult==1){
		$("#modalContent").html("수정에 성공했습니다.");
		$("#modal").modal({show:true});
		
	}else{
		$("#modalContent").html("수정에 실패했습니다.");
		$("#modal").modal({show:true});
	};
	
}

$("#modal").on("hidden.bs.modal",function(){
	document.location.href="/emt/index";
})
