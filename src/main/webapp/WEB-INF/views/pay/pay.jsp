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
            IMP.request_pay(
                {
                    pg: "html5_inicis.INIpayTest",
                    pay_method: "card",
                    merchant_uid: 'merchant_'+new Date().getTime(),
                    name: "스위트룸",
                    amount: 10,
                    buyer_email: "Iamport@chai.finance",
                    buyer_name: "포트원 기술지원팀",
                    buyer_tel: "010-1234-5678",
                    buyer_addr: "서울특별시 강남구 삼성동",
                    buyer_postcode: "123-456",
                },
                function (rsp) {
                    if (rsp.success) {
                        var msg = '결제가 완료되었습니다.';
                        alert(msg);
                        location.href = "결제 완료 후 이동할 페이지 URL";

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