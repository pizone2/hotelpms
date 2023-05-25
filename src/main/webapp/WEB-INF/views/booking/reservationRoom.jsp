<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">


    <link rel="stylesheet" href="/calendar/fonts/icomoon/style.css">

    <link rel="stylesheet" href="/calendar/css/rome.css">


    <!--css-->
    <c:import url="../temp/style.jsp"></c:import>

    <!-- Style -->
    <link rel="stylesheet" href="/calendar/css/style.css">


    <title>Calendar #7 (inline)</title>
</head>
<body>
<!-- Header Section Begin -->
<c:import url="../temp/header.jsp"></c:import>
<!-- Header End -->

<!-- Breadcrumb Section Begin -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <h2>Reservation</h2>
                    <div class="bt-option">
                        <a href="./index.html">Home</a>
                        <span>Reservation</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Section End -->
<div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
    <div class="col-md-5 p-lg-5 mx-auto my-5">
        <div class="content">

            <div class="container text-left">
                <div class="row justify-content-center">
                    <div class="col-md-10 text-center">
                        <h2 class="mb-5 text-center">상세 예약 페이지</h2>
                        <input type="text" class="form-control w-25 mx-auto mb-3" id="result" placeholder="Select date" disabled="">
                        <form action="#" class="row">
                            <div class="col-md-12">
                                <div id="inline_cal"></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
</div>



<!-- Footer Section Begin -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- Footer Section End -->

<script src="/calendar/js/jquery-3.3.1.min.js"></script>
<script src="/calendar/js/popper.min.js"></script>
<script src="/calendar/js/bootstrap.min.js"></script>
<script src="/calendar/js/rome.js"></script>

<script src="/calendar/js/main.js"></script>
</body>
</html>