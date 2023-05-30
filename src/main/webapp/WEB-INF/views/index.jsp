<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!--css-->
    <c:import url="./temp/style.jsp"></c:import>
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.7/index.global.min.js'></script>
    <!--css-->
    <style>
        .calender-date {
            background: #ffffff;
            padding: 13px 10px 20px 10px;
            border-radius: 4px;
        }

    </style>
</head>

<body>

    <!-- Header Section Begin -->
    <c:import url="./temp/header.jsp"></c:import>
    <!-- Header End -->

    <!-- Hero Section Begin -->
    <section class="hero-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="hero-text">
                        <spring:message code="welcome" var="m" text=""/>
                        <h1>${m}</h1>
                        <br>
                        <spring:message code="reservation" var="r" text=""/>
                        <h1>${r}</h1>
                        <spring:message code="homesite" var="hs" text=""/>
                        <p>${hs}</p>
                        <spring:message code="discover" var="ds" text=""/>
                        <a href="#" class="primary-btn">${ds}</a>
                    </div>
                </div>
                <sec:authorize access="isAuthenticated()">
                <div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex flex-column align-items-center text-center">
                                <img src="https://cdn-icons-png.flaticon.com/512/847/847969.png?w=826&t=st=1685410931~exp=1685411531~hmac=aba334bfa86956cf27ba3e0af2fab07921b71a199210d274bef4d91c7be12a95" alt="Admin" class="rounded-circle p-1 bg-secondary" width="110">
                                <div class="mt-3">
                                    <h4><sec:authentication property="principal.id"/></h4>
                                    <div class="custom-padding" style="background-color: white; padding: 15px;">
                                    </div>
                                </div>
                            </div>
                            <hr class="my-4">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0">NAME</h6>
                                    <span class="text-secondary"><sec:authentication property="principal.name"/></span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0">PHONE</h6>
                                    <span class="text-secondary"><sec:authentication property="principal.phoneNumber" /></span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0">ID</h6>
                                    <span class="text-secondary"><sec:authentication property="principal.id"/></span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0">EMAIL</h6>
                                    <span class="text-secondary"><sec:authentication property="principal.email" /></span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                </sec:authorize>
                <sec:authorize access="!isAuthenticated()">
                <div class="col-xl-5 col-lg-2 offset-xl-1 offset-lg-1" >
                    <div id="calendar" class="calender-date"></div>
                </div>
                </sec:authorize>

            </div>
        </div>
        <div class="hero-slider owl-carousel">
            <div class="hs-item set-bg" data-setbg="/img/hero/hero-1.jpg"></div>
            <div class="hs-item set-bg" data-setbg="/img/hero/hero-2.jpg"></div>
            <div class="hs-item set-bg" data-setbg="/img/hero/hero-3.jpg"></div>
        </div>
    </section>
    <!-- Hero Section End -->

    <div class="custom-section">
        <div class="custom-section-content">
            <!-- 새로운 <div> 태그를 추가하고 패딩과 배경색을 적용합니다 -->
            <div class="custom-padding" style="background-color: white; padding: 50px;">
            </div>
        </div>
    </div>



<%--    <!-- Search model Begin -->--%>
<%--    <div class="search-model">--%>
<%--        <div class="h-100 d-flex align-items-center justify-content-center">--%>
<%--            <div class="search-close-switch"><i class="icon_close"></i></div>--%>
<%--            <form class="search-model-form">--%>
<%--                <input type="text" id="search-input" placeholder="Search here.....">--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!-- Search model end -->--%>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var calendarEl = document.getElementById('calendar');

            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'timeGridWeek', // 일주일치 보기로 설정
                slotDuration: '00:00:00', // 슬롯(시간 구간)의 기간 설정
                slotLabelInterval: '00:00:00', // 슬롯 레이블의 간격 설정
                slotLabelFormat: {
                    hour: 'numeric',
                    minute: '2-digit',
                    omitZeroMinute: true,
                    meridiem: 'short'
                }, // 슬롯 레이블의 형식 설정
                nowIndicator: true, // 현재 시간 표시 설정
                headerToolbar: {
                    left: 'prev,next',
                    center: 'title',
                    right: 'timeGridWeek'
                }, // 헤더 영역 설정
                eventMinHeight: 50, // 이벤트의 최소 높이 설정 (픽셀 단위)
                slotMinTime: '15:00', // 오후 3시부터 시작
                slotMaxTime: '16:00', // 오후 4시까지 종료
                events: [
                    <c:forEach var="dto" items="${duubleList}">
                    {
                        title : '${dto.roomType}',
                        start : '${dto.reservationDate}'+'T15:00:00',
                        url : 'http://localhost/booking/reservationRoom?checkinDate=${dto.reservationDate}',
                        color : '#FF0000'
                    },
                    </c:forEach>

                    <c:forEach var="dto" items="${deluxList}">
                    {
                        title : '${dto.roomType}',
                        start : '${dto.reservationDate}'+'T15:00:00',
                        url : 'http://localhost/booking/reservationRoom?checkinDate=${dto.reservationDate}',
                        color : '#FF0000'

                    },
                    </c:forEach>

                    <c:forEach var="dto" items="${sweetList}">
                    {
                        title : '${dto.roomType}',
                        start : '${dto.reservationDate}'+'T15:00:00',
                        url : 'http://localhost/booking/reservationRoom?checkinDate=${dto.reservationDate}',
                        color : '#FF0000'
                    },
                    </c:forEach>

                    <c:forEach var="dto" items="${standardList}">
                    {
                        title : '${dto.roomType}',
                        start : '${dto.reservationDate}'+'T15:00:00',
                        url : 'http://localhost/booking/reservationRoom?checkinDate=${dto.reservationDate}',
                        color : '#FF0000'
                    },
                    </c:forEach>

                    <c:forEach var="dto" items="${twinList}">
                    {
                        title : '${dto.roomType}',
                        start : '${dto.reservationDate}'+'T15:00:00',
                        url : 'http://localhost/booking/reservationRoom?checkinDate=${dto.reservationDate}',
                        color : '#FF0000'
                    },
                    </c:forEach>

                    <c:forEach var="dto" items="${possibleList}">
                    {
                        title : '${dto.roomType}',
                        start : '${dto.reservationDate}'+'T15:00:00',
                        url : 'http://localhost/booking/reservationRoom?checkinDate=${dto.reservationDate}',
                        color : '#0000FF'
                    },
                    </c:forEach>
                ]
            });

            calendar.render();
        });
    </script>
    <!-- Footer Section Begin -->
    <c:import url="./temp/footer.jsp"></c:import>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <c:import url="./temp/js.jsp"></c:import>
</body>

</html>