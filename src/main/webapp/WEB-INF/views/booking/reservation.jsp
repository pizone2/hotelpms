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

<div id='calendar'></div>
<!-- calendar script -->


<script>
document.addEventListener('DOMContentLoaded', function() {
var calendarEl = document.getElementById('calendar');

var calendar = new FullCalendar.Calendar(calendarEl, {
events: [],
    eventClick: function(info) {
        var clickedEvent = info.event;
        var clickedDate = clickedEvent.start;
        var formattedDate = formatDate(clickedDate);
        console.log(formattedDate);
       //window.location.href = info.event.url; // 클릭한 이벤트의 URL로 이동
        window.location.href = info.event.url + formattedDate;
    }

});

var today = new Date();
var startDate = new Date('2023-05-01');
var endDate = new Date('2024-05-01');

    for (var d = startDate; d <= endDate; d.setDate(d.getDate() + 1)) {
        var formattedDate = formatDate(d);

        if (d >= today) {
            var event1 = {
                title: 'Double',
                start: new Date(d),
                end: new Date(d),
                url: '/booking/reservationRoom?checkinDate=' + formattedDate

            };
            calendar.addEvent(event1);

            var event2 = {
                title: 'Suite',
                start: new Date(d),
                end: new Date(d),
                url: '/booking/reservationRoom?checkinDate=' + formattedDate
            };
            calendar.addEvent(event2);

            var event3 = {
                title: 'Single',
                start: new Date(d),
                end: new Date(d),
                url: '/booking/reservationRoom?checkinDate=' + formattedDate
            };
            calendar.addEvent(event3);

            var event4 = {
                title: 'Deluxe',
                start: new Date(d),
                end: new Date(d),
                url: '/booking/reservationRoom?checkinDate=' + formattedDate
            };
            calendar.addEvent(event4);
        }
    }
        calendar.render();

        function formatDate(date) {
            var year = date.getFullYear();
            var month = ('0' + (date.getMonth() + 1)).slice(-2);
            var day = ('0' + date.getDate()).slice(-2);
            return year + '-' + month + '-' + day;
            console.log(year);
        }

});
        </script>



<!-- Footer Section Begin -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- Footer Section End -->

<!-- Js Plugins -->
<c:import url="../temp/js.jsp"></c:import>
</body>


</html>