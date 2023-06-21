<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>

<body>

<!-- Header Section Begin -->
<c:import url="../temp/header.jsp"></c:import>
<!-- Header End -->

<!-- Contact Section Begin -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <h2>ID/Password 찾기</h2>
                    <div class="bt-option">
                        <a href="./index.html">Home</a>
                        <span>ID/Password 찾기</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--<section class="contact-section spad">--%>
<div class="container">
    <div class="row mb-5">
        <%--            <div class="col-lg-4">--%>
        <%--                <div class="contact-text">--%>
        <%--                    <h2>IdPw찾기</h2>--%>
        <%--                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut--%>
        <%--                        labore et dolore magna aliqua.</p>--%>
        <%--                </div>--%>
        <%--            </div>--%>

        <div class="container padding-bottom-3x mb-2">
            <div class="row justify-content-left contact-text">
                <div class="col-lg-8 col-md-10">
                    <div class="forgot">

                        <h3>ID 찾기</h3>
                        <br>
                        <p>가입한 적이 없는 이메일 주소나 올바르지 않은 이메일 주소를 입력하신 경우에는 메일을 받을 수 없습니다!</p>
                        <ol class="list-unstyled contact-text">
                            <li><span class="text-Secondary ">1. </span>가입시 입력한 Email를 입력해주세요</li><br>
                            <li><span class="text-Secondary">2. </span>가입하실 때 입력하신 이메일로 아이디가 발송됩니다.</li><br>
                            <li><span class="text-Secondary">3. </span>사용한 이메일이 기억나지 않는 경우 관리자에게 문의주세요 </li>
                        </ol>

                    </div>

                    <div class="mt-4">
                        <div class="">
                            <div class="form-group">
                                <label for="email">Enter your Email</label>
                                <input id="email" type="email" name="email" class="email form-control" placeholder="이메일 입력">
                                <small class="form-text text-muted">Enter the email address you used during the
                                registration on BBBootstrap.com. Then we'll email a link to this address.</small>
                            </div>
                        </div>
                        <div class="contact-form">
                            <button class="find_btn">찾기</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container padding-bottom-3x mb-5 mt-5">
            <div class="row justify-content-left contact-text  mt-5">
                <div class="col-lg-8 col-md-10 mb-5">
                    <div class="forgot">

                        <h3>Password 찾기</h3>
                        <br>
                        <p>현재 사용중인 ID 를 입력 해주세요!</p>
                        <ol class="list-unstyled contact-text">
                            <li><span class="text-Secondary ">1. </span>현재 사용중인 ID를 입력해주세요</li><br>
                            <li><span class="text-Secondary">2. </span>가입하실 때 입력하신 Email로 임시 Password가 발송됩니다.</li><br>
                            <li><span class="text-Secondary">3. </span>로그인 후 MyPage 에서 비밀번호를 재설정 해주세요</li>
                        </ol>

                    </div>

                    <div class="mt-4">
                        <div class="">
                            <div class="form-group">
                                <label for="id">Enter your ID</label>
                                <input type="text" id="id" name="id" class="id form-control" placeholder="아이디 입력">
                                <small class="form-text text-muted">Enter the email address you used during the
                                registration on BBBootstrap.com. Then we'll email a link to this address.</small>
                            </div>
                        </div>
                        <div class="contact-form">
                            <button class="find_btnPw">찾기</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


<%--                    <div class="col-lg-7 offset-lg-1">--%>

<%--                            <div class="row contact-form">--%>
<%--                                <div class="col-lg-12">--%>
<%--                                    <h3>Id 찾기</h3>--%>
<%--                                    <input type="email" name="email" class="email" placeholder="이메일 입력">--%>
<%--                                    <button class="find_btn">찾기</button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="row contact-form">--%>
<%--                                <div class="col-lg-12">--%>
<%--                                    <h3>Password 찾기</h3>--%>
<%--                                    <input type="text" name="id" class="id" placeholder="아이디 입력">--%>
<%--                                    <button class="find_btnPw">찾기</button>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                    </div>--%>


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
    <script src="/js/findId.js"></script>


</body>

</html>