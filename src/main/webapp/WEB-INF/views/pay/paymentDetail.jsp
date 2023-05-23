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
    <style>
        th {
            background-color: lightgray;
        }
    </style>

    <h3>객실예약</h3>
    <table class="table">
        <tr>
            <th>객실명</th>
            <th>이용기간</th>
            <th>예약인원</th>
            <th>결제금액</th>
        </tr>
        <tr>
            <td>happy 102호</td>
            <td>Jan 1 - Jan 7</td>
            <td>3명</td>
            <td>150,000원</td>
        </tr>

    </table>

    <h3>결제정보</h3>
    <table class="table table-bordered">
        <tr>
            <th>결제금액</th>
            <td>150,000원</td>
            <td>계산금액 150,000원 + 부가서비스금액 0원</td>
        </tr>
        <tr>
            <th>결제방법</th>
            <td>신용카드</td>
            <td></td>
        </tr>
        <tr>
            <th>입금자명</th>
            <td>김진서</td>
            <td>*2022 05 19 19:13:12 까지 입금확인이 안되면 자동삭제됩니다.</td>
        </tr>

    </table>

    <h3>예약자정보</h3>
    <table class="table table-bordered">
        <tr>
            <th>예약번호</th>
            <td>12345_6782 (예약확인,취소시 필요합니다.)</td>
        </tr>
        <tr>
            <th>예약자명</th>
            <td>김진서</td>
        </tr>
        <tr>
            <th>연락처</th>
            <td>010-4522-2311</td>
        </tr>


    </table>

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
</body>

</html>