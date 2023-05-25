<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
        var IMP = window.IMP;
        IMP.init("imp83363020");

        function requestPay() {
            let roomNumber  = 604 ;
            let id = 'pizone';
            let roomType = '스탠다드';
            let checkinDate = '2020-12-12';
            let checkoutDate = '2020-12-13';
            let guestCount = 2;
            let paymentAmount = 10;
            let name = '김진서';
            let reservationNumber = '3838';
            let phoneNumber = '010-3445-2132';
            let reservationEmail = 'rlawlstj0123@naver.com';

            IMP.request_pay(
                {
                    pg: "html5_inicis.INIpayTest",
                    pay_method: "card",
                    merchant_uid: 'merchant_'+new Date().getTime(),
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
                                'roomNumber':roomNumber,
                                'id': id,
                                'reservationEmail': reservationEmail,
                                'paymentAmount':paymentAmount,
                                'checkinDate':checkinDate,
                                'checkoutDate':checkoutDate,
                                'guestCount':guestCount,
                                'roomType':roomType,
                                'name':name,
                                'reservationNumber':reservationNumber,
                                'phoneNumber':phoneNumber

                            },
                            success:(res)=>{
                                var msg = '결제가 완료되었습니다.';
                                alert(msg);
                                location.href = "pay/paymentDetail"
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
<button onclick="requestPay()">결제하기</button>
<!-- 결제하기 버튼 생성 -->
</body>
</html>