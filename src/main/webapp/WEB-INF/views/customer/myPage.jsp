<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <h2>MyPage</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua.</p>

                    <table>
                        <tbody>
                        <tr>
                            <td class="c-o">name:</td>
                            <td>${customerVO.name}</td>
                        </tr>
                        <tr>
                            <td class="c-o">id:</td>
                            <td>${customerVO.id}</td>
                        </tr>
                        <tr>
                            <td class="c-o">Phone:</td>
                            <td>${customerVO.phoneNumber}</td>
                        </tr>
                        <tr>
                            <td class="c-o">Email:</td>
                            <td>${customerVO.email}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-lg-7 offset-lg-1">
                <form action="#" class="contact-form">
                    <div class="row">
                        <div class="col-lg-6">
                            <input type="text" placeholder="Your Name">
                        </div>
                        <div class="col-lg-6">
                            <input type="text" placeholder="Your Email">
                        </div>
                        <div class="col-lg-12">
                            <textarea placeholder="Your Message"></textarea>
                            <button type="submit">Submit Now</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div id="map" style="width:500px;height:400px;"></div>



<%--        <div class="map">--%>
<%--            <iframe--%>
<%--                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.0606825994123!2d-72.8735845851828!3d40.760690042573295!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e85b24c9274c91%3A0xf310d41b791bcb71!2sWilliam%20Floyd%20Pkwy%2C%20Mastic%20Beach%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1578582744646!5m2!1sen!2sbd"--%>
<%--                    height="470" style="border:0;" allowfullscreen=""></iframe>--%>
<%--        </div>--%>
    </div>
</section>



<!-- Contact Section End -->

<div class="custom-section">
    <div class="custom-section-content">
        <!-- 새로운 <div> 태그를 추가하고 패딩과 배경색을 적용합니다 -->
        <div class="custom-padding" style="background-color: white; padding: 50px;">
            <!-- 여기에 내용을 추가하거나 원하는 디자인을 구성할 수 있습니다 -->
        </div>
    </div>
</div>
<!-- Hero Section End -->





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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=41d534ae5dc3fb8670ff2f84bd5cf770"></script>
<script>
    const container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
    let options = { //지도를 생성할 때 필요한 기본 옵션
        center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
        level: 3 //지도의 레벨(확대, 축소 정도)
    };
    let map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

</script>
<!-- Js Plugins -->
<c:import url="../temp/js.jsp"></c:import>
</body>

</html>