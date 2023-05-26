<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
<section class="contact-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="contact-text">
                    <h2>IdPw찾기</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua.</p>
                </div>
            </div>
            <div class="col-lg-7 offset-lg-1">

                    <div class="row contact-form">
                        <div class="col-lg-12">
                            <h3>Id 찾기</h3>
                            <input type="email" name="email" class="email" placeholder="이메일 입력">
                            <button class="find_btn">찾기</button>
                        </div>
                    </div>
                    <div class="row contact-form">
                        <div class="col-lg-12">
                            <h3>Password 찾기</h3>
                            <input type="text" name="id" class="id" placeholder="아이디 입력">
                            <button class="find_btnPw">찾기</button>
                        </div>
                    </div>

            </div>
        </div>


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