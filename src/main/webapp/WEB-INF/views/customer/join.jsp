<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!--css-->
    <c:import url="../temp/style.jsp"></c:import>
    <!--css-->
    <style>
        .contact1-form input {
            width: 100%;
            height: 50px;
            border: 1px solid #e1e1e1;
            font-size: 16px;
            color: #aaaab3;
            padding-left: 25px;
        }

        .contact1-form button {
            font-size: 13px;
            font-weight: 700;
            text-transform: uppercase;
            color: #ffffff;
            letter-spacing: 2px;
            background: #dfa974;
            border: none;
            padding: 14px 34px 13px;
            display: inline-block;
            margin-top: 45px
        }
        .contacklabel{
            margin-top: 28px;
        }

    </style>
</head>

<body>

<!-- Header Section Begin -->
<c:import url="../temp/header.jsp"></c:import>
<!-- Header End -->

<section class="contact-section spad">
    <div class="container">
        <!-- Main Content -->
        `<div class="row justify-content-center">
            <div class="col-lg-7 offset-lg-1">
                <div class="text-center">
                    <spring:message code="join" var="jo" text=""/>
                    <h1 class="h1 text-gray-900 mb-4">${jo}</h1>
                </div>
                <form:form action="./join" cssClass="contact1-form" modelAttribute="userVO">
                    <div class="row">
                        <div class="col-lg-12">
                            <form:label path="id" cssClass="contacklabel">ID</form:label>
                            <form:input path="id" id="id"></form:input>
                            <form:errors path="id" cssClass="subcontact"></form:errors>
                        </div>
                        <div class="col-lg-12">
                            <form:label path="password" cssClass="contacklabel">PASSWOARD</form:label>
                            <form:password path="password" id="password"></form:password>
                            <form:errors path="password"></form:errors>
                        </div>
                        <div class="col-lg-12">
                            <form:label path="passwordCheck" cssClass="contacklabel">PASSWOARD_CHECK</form:label>
                            <form:password path="passwordCheck" id="passwordCheck"></form:password>
                            <form:errors path="passwordCheck"></form:errors>
                        </div>
                        <div class="col-lg-6">
                            <form:label path="name" cssClass="contacklabel">NAME</form:label>
                            <form:input path="name" id="name"></form:input>
                            <form:errors path="name"></form:errors>
                        </div>
                        <div class="col-lg-6">
                            <form:label path="email" cssClass="contacklabel">EMAIL</form:label>
                            <input name="email" id="email" type="email"></input>
                            <form:errors path="email"></form:errors>
                        </div>

                        <div class="col-lg-6">
                            <label for="emailCheck" class="contacklabel">EmailCheck</label>
                            <input id="emailCheck" name="emailCheck" type="text" />
                            <span id="emailCheckValidation"></span>
                            <form:errors path="emailCheck"></form:errors>
                        </div>

                        <div class="col-lg-6">
                        <button type="button" id="sendMail" style="margin-top: 60px;">인증번호</button>
                        </div>

                        <div class="col-lg-12">
                            <form:label path="phoneNumber" cssClass="contacklabel">PHONE NUMBER</form:label>
                            <form:input path="phoneNumber" id="phoneNumber"></form:input>
                            <form:errors path="phoneNumber"></form:errors>
                        </div>
                        <div class="col-lg-12">
                            <button type="submit" id="submitButton">가입하기</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>

<div class="custom-section">
    <div class="custom-section-content">
        <!-- 새로운 <div> 태그를 추가하고 패딩과 배경색을 적용합니다 -->
        <div class="custom-padding" style="background-color: white; padding: 50px;">
            <!-- 여기에 내용을 추가하거나 원하는 디자인을 구성할 수 있습니다 -->
        </div>
    </div>
</div>
<!-- Hero Section End -->


<!-- Footer Section Begin -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- Footer Section End -->

<!-- Search model Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search model end -->

<!-- Js Plugins -->
<c:import url="../temp/js.jsp"></c:import>
<script type="text/javascript">
    const emailCheckInput = document.querySelector('#emailCheck');
    emailCheckInput.addEventListener('input', validateEmailCheck);
    let key = "";
    $("#sendMail").click(function() {// 메일 입력 유효성 검사

        $.ajax({
            type : "Post",
            url : "./checkMail",
            data : {
                email:$('#email').val()
            },
            success:function(result){
                console.log(result)
                alert("인증번호가 발송되었습니다.");
                key = result;
            },
            error:function(){
                console.log()
                alert("인증번호 발송이 실패하였습니다.")
            }
        })
    });

    function validateEmailCheck() {
        const emailCheck = this.value;

        if (emailCheck === key) {
            // 이메일 인증 성공
            document.querySelector('#emailCheckValidation').textContent = '인증 성공';
            $("#submitButton").prop("disabled", false);
        } else {
            // 이메일 인증 실패
            document.querySelector('#emailCheckValidation').textContent = '인증 실패';
            $("#submitButton").prop("disabled", true);
        }
    }


</script>
</body>

</html>