$(document).ready(function() {
    function emailCheck(email) {
        // 이메일 유효성 검사를 위한 정규식
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailPattern.test(email);
    }

    $(".find_btn").click(function() {
        const email = $(".email").val();
        if (!emailCheck(email)) {
            alert("올바른 이메일 주소를 입력해주세요.");
            return;
        }

        $.ajax({
            url: "findId",
            type: "POST",
            data: {
                email: email }
        })
            .done(function() {
                alert("메일발송 완료");

            })
            .fail(function() {
                alert("에러가 발생했습니다");
            })
    })
        $(".find_btnPw").click(function() {
            const id = $(".id").val();
            // if (!emailCheck(email)) {
            //     alert("올바른 이메일 주소를 입력해주세요.");
            //     return;
            // }

            $.ajax({
                url: "findPw",
                type: "POST",
                data: {
                    id: id }
            })
                .done(function() {
                    alert("메일발송 완료");

                })
                .fail(function() {
                    alert("에러가 발생했습니다");
                })
        })


    $(document).on("click", ".back_btn", function() {
        location.href = "/login";
    })
})