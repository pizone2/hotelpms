<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">


    <!--css-->
    <c:import url="../temp/style.jsp"></c:import>
    <!--css-->
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.7/index.global.min.js'></script>
<style>
    .fc-day a {
        color: black;
        text-decoration: none;
    }

</style>

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
                        <a href="/booking/reservation">Home</a>
                        <span>Reservation</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Section End -->

<!-- 콘텐츠 -->
<div class="container">
    <!-- Breadcrumb -->
    <nav aria-label="breadcrumb">
        <!-- Breadcrumb 내용 -->
    </nav>

    <!-- 캘린더 -->
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div id="calendar"></div>
        </div>
    </div>
</div>

<div class="custom-section">
    <div class="custom-section-content">
        <!-- 새로운 <div> 태그를 추가하고 패딩과 배경색을 적용합니다 -->
        <div class="custom-padding" style="background-color: white; padding: 50px;">
        </div>
    </div>
</div>
<!-- Hero Section End -->

<script>
document.addEventListener('DOMContentLoaded', function() {
var calendarEl = document.getElementById('calendar');

var calendar = new FullCalendar.Calendar(calendarEl, {

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

],

    eventClick: function(info) {
    },
    // initialView: "dayGridMonth",
    // firstDay: 1,
    // titleFormat: function (date) {
    //     year = date.date.year;
    //     month = date.date.month + 1;
    //
    //     return year + "년 " + month + "월";
    // },

});

        calendar.render();

});
        </script>



<!-- Footer Section Begin -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- Footer Section End -->

<!-- Js Plugins -->
<c:import url="../temp/js.jsp"></c:import>
</body>


</html>