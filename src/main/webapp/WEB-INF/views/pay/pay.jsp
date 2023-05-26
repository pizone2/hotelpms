<%@ page import="java.security.Principal" %>
<%@ page import="com.dev.hotelpms.user.UserVO" %>
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
    <script>
        let check = [0,0,0];
        $(document).ready(function() {
        $('#check1').click(()=>{
            console.log($('#check1').prop('checked'));
            if($('#check1').prop('checked') == true){
                check[0] = 1;
            }else{
                check[0] = 0;
            }
        })
        $('#check2').click(()=>{
            console.log($('#check2').prop('checked'));
            if($('#check2').prop('checked') == true){
                check[1] = 1;
            }else{
                check[1] = 0;
            }
        })
        $('#check3').click(()=>{
            console.log($('#check3').prop('checked'));
            if($('#check3').prop('checked') == true){
                check[2] = 1;
            }else{
                check[2] = 0;
            }
        })
        });

        $(document).ready(function() {
            $('#requestPay').click(function() {
                if(check.includes(0)){
                    alert('모든 항목에 동의 해 주세요')
                }else{
                    requestPay();
                }
            });
        });

        var IMP = window.IMP;
        IMP.init("imp83363020");


        function requestPay() {



            let roomNumber = 604;
            let id = 'pizone';
            let roomType = '스탠다드';
            let checkinDate = '2023-12-12';
            let checkoutDate = '2023-12-13';
            let guestCount = 3;
            let paymentAmount = 10;
            let name = '김진서';
            let phoneNumber = '010-3445-2132';
            let reservationEmail = 'rlawlstj0123@naver.com';

            IMP.request_pay(
                {
                    pg: "html5_inicis.INIpayTest",
                    pay_method: "card",
                    merchant_uid: 'merchant_' + new Date().getTime(),
                    name: roomNumber,
                    amount: paymentAmount,
                    buyer_email: reservationEmail,
                    buyer_name: name,
                    buyer_tel: phoneNumber,
                    buyer_addr: "서울특별시 금천구 가산디지털2로 95",
                    buyer_postcode: "123-456",
                },
                function (rsp) {
                    if (rsp.success) {
                        $.ajax({
                            url: '/pay/add',
                            type: 'post',
                            data: {
                                'roomNumber': roomNumber,
                                // 'id': id,
                                // 'reservationEmail': reservationEmail,
                                'paymentAmount': paymentAmount,
                                'checkinDate': checkinDate,
                                'checkoutDate': checkoutDate,
                                'guestCount': guestCount,
                                'roomType': roomType,
                                // 'name': name,
                                // 'phoneNumber': phoneNumber

                            },
                            success: function(res) {

                                var msg = '결제가 완료되었습니다.';
                                alert(msg);
                                location.href = "../pay/paymentDetail";
                            }

                        })

                    } else {
                        var msg = '결제에 실패하였습니다.';
                        msg += '에러내용 : ' + rsp.error_msg;
                        alert(msg);
                    }

                }
            );
        }
    </script>
    <meta charset="UTF-8" />
    <title>Sample Payment</title>
</head>
<body>
<!-- Header Section Begin -->
<c:import url="../temp/header.jsp"></c:import>
<!-- Header End -->

<section class="contact-section spad">
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

                                        <div style="display: block; width: 100%;">
                                            <input class="form-check-input" type="checkbox" value="" id="check1">
                                            제 1조 (목 적) 개인정보 제 3자 동의
                                        </div>
                                            <h6>&nbsp;</h6>
                                        <div style="display: block; width: 100%;">
                                            <input class="form-check-input" type="checkbox" value="" id="check2">
                                            제 2 조 (용어의 정의) 개인정보취급 동의
                                        </div>
                                            <h6>&nbsp;</h6>
                                        <div style="display: block; width: 100%;">
                                            <input class="form-check-input" type="checkbox" value="" id="check3">
                                            제 3 조 (용어의 정의) 개인정보취급 동의
                                        </div>

                                    </div>




                        </div>
                    </div>

            </div>

            <div class="col-lg-6">
                <h3>예약 결제금액</h3>
                <br>
                <table class="table table-bordered">
                    <tr>
                        <th>총계</th>
                        <td>116,000원</td>
                    </tr>
                    <tr>
                        <th>할인요금</th>
                        <td>- 0원</td>
                    </tr>
                    <tr>
                        <th>총 결제금액</th>
                        <td>116,000원</td>
                    </tr>


                </table>

                <button id="requestPay">결제하기</button>
                <button>취소</button>
            </div>
        </div>
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
<!-- 결제하기 버튼 생성 -->
</body>
</html>