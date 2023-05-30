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
    <!-- jQuery -->
    <script
            type="text/javascript"
            src="https://code.jquery.com/jquery-1.12.4.min.js"
    ></script>
    <!-- iamport.payment.js -->
    <script
            type="text/javascript"
            src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"
    ></script>


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

        <!-- 객실 타입 페이지 -->
        <table class="table table-hover">
            <thead>
            <tr>
                <th>객실명</th><th>상태</th><th>기준 / 최대 </th><th>기간</th><th>이용금액</th><th>구매여부</th>
            </tr>

            </thead>

            <tbody>
            <c:forEach items="${type}" var="vo">
                <tr>
                    <td id="rtype">${vo.roomType}</td>


                    <c:forEach items="${room}" var="ro">
                        <c:choose>
                            <c:when test="${vo.roomType eq ro.roomType}">
                                <td><div class="bookable font-weight-bold text-primary">예약 가능</div></td>

                            </c:when>
                            <c:otherwise>

                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                    <c:if test="${empty room}">
                        <td><div class="bookable font-weight-bold text-danger">예약 불가</div></td>
                        <%-- 예약 가능한 방이 없을 때 --%>
                    </c:if>
                    <td>
                        <select id="guest">
                            <option value="1"> 1인 (최대 ${vo.capacity}인) </option>
                            <option value="2"> 2인 (최대 ${vo.capacity}인) </option>
                            <option value="3"> 3인 (최대 ${vo.capacity}인) </option>
                            <option value="4"> 4인 (최대 ${vo.capacity}인) </option>
                        </select>
                    </td>
                    <td>
                        <select name="stayDuration" id="stayDuration">
                            <option value="1">1박 2일</option>
                            <option value="2">2박 3일</option>
                            <option value="3">3박 4일</option>
                            <option value="4">4박 5일</option>
                            <option value="5">5박 6일</option>
                            <option value="6">6박 7일</option>
                        </select>
                    </td>
                    <td>
                        <div id="roomPrice" name="roomPrice">
                                ${vo.roomPrice}
                        </div>
                    </td>
                    <c:if test="${not empty room}">
                        <td>
                            <button type="button" id="btn1"  class="btn1">선택</button>
                        </td>
                    </c:if>
                    <c:if test="${empty room}">
                        <td>예약 마감</td>
                    </c:if>
                </tr>
            </c:forEach>
            </tbody>

        </table>
        <form>
            <div id="myDiv">
                <input type="text" class="form-control" id="roomType" name="roomType">
                <input type="text" class="form-control" id="guestCount" name="guestCount">
                <input type="date" class="form-control" id="checkinDate" name="checkinDate">
                <input type="date" class="form-control" id="checkoutDate" name="checkoutDate">

                <input type="text" class="form-control" id="paymentAmount" name="paymentAmount">
            </div>
        </form>
    </div>


    <div class="container">
        <div class="row">
            <div class="col-lg-6">

                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                        </div>
                    </div>
                    <div class="checkout__form">
                        <div class="row">
                            <h3> 약관동의 하기</h3>
                        </div>
                        <h3>&nbsp;</h3>


                        <div class="checkout__input">

                            <div style="display: block; width: 100%; text-align: left;">
                                <input class="form-check-input" type="checkbox" value="" id="check1">
                                제 1조 (목 적) 개인정보 제 3자 동의
                            </div>
                            <h6>&nbsp;</h6>
                            <div style="display: block; width: 100%; text-align: left;">
                                <input class="form-check-input" type="checkbox" value="" id="check2">
                                제 2 조 (용어의 정의) 개인정보취급 동의
                            </div>
                            <h6>&nbsp;</h6>
                            <div style="display: block; width: 100%; text-align: left;">
                                <input class="form-check-input" type="checkbox" value="" id="check3">
                                제 3 조 (용어의 정의) 개인정보취급 동의
                            </div>

                        </div>

                    </div>
                </div>

            </div>

            <div class="col-lg-6" style=" text-align: left;">
                <h3 style=" text-align: left;">예약 결제금액</h3>
                <br>
                <table class="table table-bordered">
                    <tr>
                        <th>총계</th>
                        <td id="paymentAmount1">원</td>
                    </tr>
                    <tr>
                        <th>할인요금</th>
                        <td>- 0원</td>
                    </tr>
                    <tr>
                        <th>총 결제금액</th>
                        <td id="paymentAmount2">원</td>
                    </tr>

                </table>

                <div style="display: flex; justify-content: center;">
                    <button id="requestPay" class="btn btn-primary" style="margin-right: 10px;">결제하기</button>
                    <button class="btn btn-secondary" style="margin-left: 10px;">취소</button>
                </div>
                <h3>&nbsp;</h3><h3>&nbsp;</h3>
            </div>
        </div>
    </div>




    <!-- Footer Section Begin -->
    <c:import url="../temp/footer.jsp"></c:import>
    <!-- Footer Section End -->

    <script src="/calendar/js/jquery-3.3.1.min.js"></script>
    <script src="/calendar/js/popper.min.js"></script>
    <script src="/calendar/js/bootstrap.min.js"></script>
    <script src="/calendar/js/rome.js"></script>
    <script src="/calendar/js/main.js"></script>
    <script src="/js/reservationRoom.js"></script>
    <script src="/js/pay.js"></script>
    <c:import url="../temp/js.jsp"></c:import>
</body>
</html>