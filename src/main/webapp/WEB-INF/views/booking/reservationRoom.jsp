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
<div class="position-relative overflow-hidden  text-center bg-light">
    <div class="col-md-12 p-lg-10 mx-auto my-10">
        <div class="">

            <div class="container text-left">
                <div class="row justify-content-center">
                    <div class="col-md-10 text-center">

                        <div class="col-md-12 mt-4 mb-3">
                            <p class="lead"><strong>  가장 빠른 객실에약 </strong></p>
                        </div>
                        <input type="text" class="form-control w-25 mx-auto mb-3" id="result" placeholder="Select date" disabled="">
                        <form action="#" class="row">
                            <div class="col-md-12">
                                <div id="inline_cal"></div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-12 mt-5">
                        <figure class="text-center">
                            <blockquote class="blockquote">
                                <p>고객님의 하루를 가장 편안하게 만들어드리는것이 저희의 행복입니다</p>
                            </blockquote>
                            <figcaption class="blockquote-footer">
                                Make every moment  <cite title="Source Title">of life delightful</cite>
                            </figcaption>
                        </figure>
                    </div>
                </div>
            </div>

        </div>
        <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>

        <!-- 객실 타입 페이지 -->
        <div class="my-5">
            <table class="table table-hover bg-white">
                <thead class="text-center">
                <tr>
                    <th>객실 이미지</th>  <th>객실명</th><th>상태</th><th>기준 / 최대 </th><th>기간</th><th>이용금액</th><th>구매여부</th>
                </tr>
                </thead>

                <tbody class="text-center">
                <c:forEach items="${type}" var="vo">
                    <tr>
                        <c:if test="${vo.roomType eq '디럭스'}">
                            <td><img alt="디럭스" height="200" width="200"  src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MDFfMzUg%2FMDAxNjMwNTAyODE1ODMx.AnhQNmrEDgdEQRe3t2rWX9bzXTvqkUWD3OY0YsuE_LAg.epX9GIitD6tOU_VYmSEmAvOsjCLHMEhzVcGYLe9awrIg.JPEG.clueless21%2FIMG_0359.jpg&type=sc960_832" class="img-thumbnail"></td>
                        </c:if>
                        <c:if test="${vo.roomType eq '더블'}">
                            <td><img alt="더블" height="200" width="200"  src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA5MzBfMjUx%2FMDAxNjY0NTQ0OTg4ODgy.gC8l91mg_rNwsqxg4MLhJmyLTeocQuwqzJkaU85Xrdkg.NTDsA-TB8YhQpz6V4hA89mxTxf13wcILiEsUZrzO3pcg.JPEG.hongrunrun%2FDSC00726.jpg&type=sc960_832" class="img-thumbnail"></td>
                        </c:if>
                        <c:if test="${vo.roomType eq '스위트'}">
                            <td><img alt="스위트" height="200" width="200"  src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAyMjdfMjMz%2FMDAxNjE0NDE4MzkyNDUy.KEDQSPx8pTmYWwv6zlMfUAcASmIplyh4Jaxx_mX-sisg.Bb8qtjlv9U8njULHQzAXTUF2q5srsPGAXD96cZzlVGkg.JPEG.hyiey2%2FIMG_8726.jpg&type=sc960_832" class="img-thumbnail"></td>
                        </c:if>
                        <c:if test="${vo.roomType eq '트윈'}">
                            <td><img alt="트윈룸" height="200" width="200"  src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzAxMTFfMzUg%2FMDAxNjczNDAwMTgzOTEz.HVCC4PmbefhAzFbYYITaPQymuKG9dYobwKB3qCOHylwg.aEO5mDT7RHh3TQHmgXfiq-nJwjzjMfcgqqbZVemGet4g.JPEG.bellesongs%2F%25C6%25AE%25C0%25A92.jpg&type=sc960_832" class="img-thumbnail"></td>
                        </c:if>
                        <c:if test="${vo.roomType eq '스탠다드'}">
                            <td><img alt="스탠다드" height="200" width="200"  src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA4MDFfMjU2%2FMDAxNjI3ODI0OTgzODUx.5Uxcbh7riac8DDnRcUyDGgiWjSpOXyN8ea7s2CtBg6kg.bxdekaTjaIL8WiXLoVzba6WS3fj0rEAKem1YewlSgucg.JPEG.yuga14%2FIMG_1629.jpg&type=sc960_832" class="img-thumbnail"></td>
                        </c:if>
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
                            <%--예약 가능한 내역이 0개라면 예약 불가 처리 --%>
                        <c:set var="count" value="0" />
                        <c:forEach items="${room}" var="ro">
                            <c:if test="${vo.roomType eq ro.roomType}">
                                <c:set var="count" value="${count + 1}" />
                            </c:if>
                        </c:forEach>
                        <c:if test="${count == 0}">
                            <td><div class="bookable font-weight-bold text-danger">예약불가</div></td>
                        </c:if>
                            <%--예약 가능한 내역이 0개라면 예약 불가 처리 끝 --%>

                        <td style="text-align: center !important;">
                            <select id="guest">
                                <option value="1"> 1인 (최대 ${vo.capacity}인) </option>
                                <option value="2"> 2인 (최대 ${vo.capacity}인) </option>
                                <option value="3"> 3인 (최대 ${vo.capacity}인) </option>
                                <option value="4"> 4인 (최대 ${vo.capacity}인) </option>
                            </select>
                        </td>
                        <td class="text-center">
                            <select name="stayDuration" id="stayDuration" style="width: 390px;">
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
                        <c:set var="count" value="0" />
                        <c:forEach items="${room}" var="ro">
                            <c:if test="${vo.roomType eq ro.roomType}">
                                <c:set var="count" value="${count + 1}" />
                            </c:if>
                        </c:forEach>

                        <c:if test="${count > 0}">
                            <td>
                                <button type="button" class="btn1 btn-light btn-outline-success"> 선택 </button>
                            </td>
                        </c:if>

                        <c:if test="${count == 0}">
                            <td><div class="bookable font-weight-bold text-danger">예약 마감</div></td>
                        </c:if>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <form>
            <div id="myDiv">
                <input type="text" class="form-control" id="roomType" name="roomType">
                <input type="text" class="form-control" id="guestCount" name="guestCount">
                <input type="date" class="form-control" id="checkinDate" name="checkinDate">
                <input type="date" class="form-control" id="checkoutDate" name="checkoutDate">
                <input type="text" class="form-control" id="paymentAmount" name="paymentAmount">
            </div>
        </form>
    </div >
    <br>

    <div class="my-5">
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
                                    MO HOTEL 서비스 이용약관 동의
                                </div>
                                <h6>&nbsp;</h6>
                                <div style="display: block; width: 100%; text-align: left;">
                                    <input class="form-check-input" type="checkbox" value="" id="check2">
                                    개인정보취급 및 수집 이용약관 동의
                                </div>
                                <h6>&nbsp;</h6>
                                <div style="display: block; width: 100%; text-align: left;">
                                    <input class="form-check-input" type="checkbox" value="" id="check3">
                                    개인정 제공 항목 및 고객사 서비스약관 동의
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

                        <%@ page import="org.springframework.security.core.Authentication" %>
                        <%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>

                        <%
                            // Check if the user is logged in
                            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
                            boolean loggedIn = authentication != null && authentication.isAuthenticated() && !authentication.getPrincipal().equals("anonymousUser");
                        %>
                        <input type="hidden" id="loggedInValue" value="<%= loggedIn %>">

                        <button id="requestPay" class="btn btn-primary" style="margin-right: 10px;">결제하기</button>

                        <button class="btn btn-secondary" style="margin-left: 10px;">취소</button>
                    </div>
                    <h3>&nbsp;</h3><h3>&nbsp;</h3>
                </div>
            </div>
        </div>
    </div>




    <!— Footer Section Begin —>
    <c:import url="../temp/footer.jsp"></c:import>
    <!— Footer Section End —>

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