$.validator.setDefaults({
    submitHandler : function() {
        location.href("update");

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
