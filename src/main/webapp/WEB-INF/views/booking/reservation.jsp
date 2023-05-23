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
            // 캘린더 설정 및 옵션
            //
            events: [

                {
                    title: 'Double',
                    start: '2023-05-01',
                    end: '2023-05-01'
                },
                {
                    title: 'Deluxe',
                    start: '2023-05-01',
                    end: '2023-05-01'
                },
                {
                    title: 'Suite',
                    start: '2023-05-01',
                    end: '2023-05-01'
                },
                {
                    title: 'Standard',
                    start: '2023-05-01',
                    end: '2023-05-01'
                },
                {
                    title: 'Twin',
                    start: '2023-05-01',
                    end: '2023-05-01'
                },
                // 추가 데이터 항목들...
            ],


        });
        calendar.render();
    });
</script>
<!-- calendar script End-->


<!-- Footer Section Begin -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- Footer Section End -->

<!-- Js Plugins -->
<c:import url="../temp/js.jsp"></c:import>
</body>


