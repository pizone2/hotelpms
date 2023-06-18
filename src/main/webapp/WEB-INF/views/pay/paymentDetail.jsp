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

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
            crossorigin="anonymous"></script>
</head>

<body>
<c:set var="payVO" value="${payVO}" scope="request" />



<!-- Header Section Begin -->
<c:import url="../temp/header.jsp"></c:import>
<!-- Header End -->
<style>
    th {
        background-color: lightgray;
    }
</style>

<section class="contact-section spad">
    <div class="container">




        <h3>객실예약</h3>
        <br>
        <table class="table">
            <tr>
                <th>객실명</th>
                <th>이용기간</th>
                <th>예약인원</th>
                <th>결제금액</th>
            </tr>
            <tr>
                <td>${payVO.roomNumber}</td>
                <td>${payVO.checkinDate}~${payVO.checkoutDate}</td>
                <td>${payVO.guestCount}</td>
                <td>${payVO.paymentAmount}</td>
            </tr>

        </table>
        <br>
        <br>

        <h3>결제정보</h3>
        <br>
        <table class="table table-bordered">
            <tr>
                <th>결제금액</th>
                <td>${payVO.paymentAmount}</td>
                <td>계산금액${payVO.paymentAmount}원 + 부가서비스금액 0원</td>
            </tr>
            <tr>
                <th>결제방법</th>
                <td>신용카드</td>
                <td></td>
            </tr>
            <tr>
                <th>입금자명</th>
                <td>${payVO.name}</td>
                <td>*2022 05 19 19:13:12 까지 입금확인이 안되면 자동삭제됩니다.</td>
            </tr>

        </table>
        <br>
        <br>

        <h3>예약자정보</h3>
        <br>
        <table class="table table-bordered">
            <tr>
                <th>예약번호</th>
                <td>${payVO.reservationNumber} (예약확인,취소시 필요합니다.)</td>
            </tr>
            <tr>
                <th>예약자명</th>
                <td>${payVO.name}</td>
            </tr>
            <tr>
                <th>연락처</th>
                <td>${payVO.phoneNumber}</td>
            </tr>


        </table>
        <br>
        <br>
        <br>
        <input type="hidden" id="reservationNumber_${payVO.reservationNumber}" value="${payVO.reservationNumber}">
        <input type="hidden" id="checkinDate_${payVO.checkinDate}" value="${payVO.checkinDate}">
        <input type="hidden" id="checkoutDate_${payVO.checkoutDate}" value="${payVO.checkoutDate}">
        <button class="btn btn-secondary" style="float: right" onclick="cancelPayments('${payVO.reservationNumber}','${payVO.checkinDate}','${payVO.checkoutDate}')">환불</button>
        <br>



    </div>
</section>
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

<script src="/js/pay.js"></script>
</body>

</html>