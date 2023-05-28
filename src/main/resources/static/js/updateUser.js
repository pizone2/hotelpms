$("#btn-update").on("click",()=>{
    this.update();
});

update:function() {
    let data = {
    id : $("#id").val(),
    password : $("#password").val(),
    email : $("#email").val(),
    };

    $.ajax({
        type : "PUT",
        url :  "updateUser",
        data : JSON.stringify(data),
        contentType : "application/json; charset=utf-8"
        dataType : "json"
    }).done(function(resp){
        alert("수정완료")
        location.href = "/";
    }).fail(function(error){
        alert(JSON.stringify(error))
    });
}

