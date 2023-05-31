<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <link rel="stylesheet" href="/css/myPageModal.css" >
    <!--css-->
</head>

<body>

<!-- Header Section Begin -->
<c:import url="../temp/header.jsp"></c:import>
<!-- Header End -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

<!-- 패스워드 변경 모달창 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"></h4>
            </div>
            <div class="modal-body">
                <div class="login-container animated fadeInDown bootstrap snippets bootdeys">
                    <div class="loginbox bg-white">
                        <div class="loginbox-title">Change Password</div>

                        <div class="loginbox-or">
                            <div class="or-line"></div>
                        </div>
<%--                        <form id="checkPw" method="post" action="checkPw">--%>
<%--                            <input type="text" class="form-control" placeholder="현재 비밀번호 입력" name="password" id="oldPwCheck">--%>


<%--                            <div class="loginbox-submit">--%>
<%--                                <input type="hidden" class="form-control" placeholder="enter address line 1" name="id " value="<sec:authentication property="principal.id"/>">--%>
<%--                                <input type="submit" class="btn btn-primary btn-block" id="btn2" value="checkPw">--%>
<%--                            </div>--%>
<%--                        </form>--%>

                        <form id="updatePw" method="post" action="updatePw">
                            <input type="hidden" class="form-control" placeholder="enter address line 1" name="id" value="<sec:authentication property="principal.id"/>">
<%--                            <div class="loginbox-textbox">--%>
<%--                                <input type="text" class="form-control" id="oldPw" placeholder="현재 비밀번호">--%>
<%--                                <span id="oldPwCheckResult"></span>--%>
<%--                            </div>--%>
                            <div class="loginbox-textbox">
                                <input type="password" class="form-control" id="pw" name="password" placeholder="새 비밀번호">
                                <span id="pwResult" style="color: red;"></span>
                            </div>
                            <div class="loginbox-textbox">
                                <input type="password" class="form-control" id="pwCheck" placeholder="새 비밀번호 확인">
                                <span id="pwCheckResult" style="color: red;"></span>
                            </div>
                            <div class="loginbox-forgot">
                                <a href="../customer/findIdPw">ID를 잊으셨습니까?</a>
                            </div>
                            <div class="loginbox-submit">
                                <input type="submit" class="btn btn-primary btn-block" id="btn" value="Save Password">
                            </div>
                        </form>
                    </div>
                    <div class="logobox">
                    </div>
                </div>




            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


<%--&lt;%&ndash;        <div id="map" style="width:500px;height:400px;"></div>&ndash;%&gt;--%>



<%--&lt;%&ndash;        <div class="map">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <iframe&ndash;%&gt;--%>
<%--&lt;%&ndash;                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.0606825994123!2d-72.8735845851828!3d40.760690042573295!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e85b24c9274c91%3A0xf310d41b791bcb71!2sWilliam%20Floyd%20Pkwy%2C%20Mastic%20Beach%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1578582744646!5m2!1sen!2sbd"&ndash;%&gt;--%>
<%--&lt;%&ndash;                    height="470" style="border:0;" allowfullscreen=""></iframe>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--    </div>--%>
<%--</section>--%>
<c:import url="../temp/kakaoInquiry.jsp"></c:import>
<div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://post-phinf.pstatic.net/MjAyMTA0MTlfMjg1/MDAxNjE4ODM2MDI2NzUz.GL3g5z-ifZjmrN62JOnwinaZQP_Y8P4s-7L3FXv4rlEg.Nv9ZhvDIr1pj_lLyfuvIpiwDRn3b40JLx-TPKHMwKlkg.JPEG/IMG_2448.jpg?type=w1200"><span class="font-weight-bold"><sec:authentication property="principal.name"/></span><span class="text-black-50"><sec:authentication property="principal.email" /></span><span> </span>
                <button id="changePasswordBtn" class="btn btn-primary profile-button  mt-3" data-toggle="modal" data-target="#myModal">Change Password</button>
            </div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Profile Settings</h4>
                </div>
                <form id="updateUserForm" method="post" action="userUpdate">
                <div class="row mt-2">
                    <div class="col-md-6">
                        <label class="labels">Name</label>
                        <input type="text" class="form-control" placeholder="first name" name="name"  value="<sec:authentication property="principal.name"/>">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12">
                        <label class="labels">Phone</label>
                        <input type="text" class="form-control" placeholder="enter phone number" name="phoneNumber" id="phone" value="<sec:authentication property="principal.phoneNumber" />">
                        <span id="phoneCheckResult" style="color: red;"></span>
                    </div>
                    <div class="col-md-12">
                        <label class="labels">ID</label>
                        <input type="text" class="form-control" placeholder="enter address line 1" readonly name="id" value="<sec:authentication property="principal.id"/>">
                    </div>
                    <div class="col-md-12">
                        <label class="labels">Email</label>
                        <input type="email" class="form-control" placeholder="enter address line 2" name="email" value="<sec:authentication property="principal.email" />">
                    </div>
                </div>
                <div class="mt-5 text-center">
                    <button class="btn btn-primary profile-button" id="btn2" type="submit">Save Profile</button>
                </div>
            </form>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center experience"><span>1:1 문의하기</span><button class="border px-3 p-1 add-experience fa fa-plus" type="button" onclick="openKakaoTalkChat()">1:1 문의하기 </button></div><br>

                <p>안녕하세요 <sec:authentication property="principal.name"/>고객님 방문해 주셔서 감사합니다. <br>귀하의 문의에 신속하게 답변드리겠습니다.</p>
                <p>1:1 문의는 평일 오후 5시까지 <br>(주말, 공휴일은 휴무) <br>접수된 문의만 당일 답변드리고 있습니다. 근무시간 외에 질문을 주신 경우 다음 영업일 근무시간에 순차적으로 답변해드립니다.</p>

            </div>
        </div>
    </div>
</div>
</div>
</div>



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
<script src="/js/userVerif.js"></script>
<script>
    const container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
    let options = { //지도를 생성할 때 필요한 기본 옵션
        center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
        level: 3 //지도의 레벨(확대, 축소 정도)
    };
    let map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

</script>

<script>
    function openKakaoTalkChat() {
        Kakao.Channel.chat({
            channelPublicId: '_zRYLxj', // Replace with your actual KakaoTalk Channel ID
        });
    }
</script>


<script>
    // Set the password value dynamically using JavaScript
    let principalPassword = "<sec:authentication property='principal.password'/>";
    document.getElementById("oldPwCheck").value = principalPassword;
</script>
<!-- Js Plugins -->
<c:import url="../temp/js.jsp"></c:import>
</body>

</html>

