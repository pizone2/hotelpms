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


document.getElementById("requestPay").addEventListener("click", function() {
    var loggedIn = document.getElementById("loggedInValue").value === "true";

    if (loggedIn) {
        // 사용자가 로그인되어 있는 경우, requestPay() 함수 실행
        var roomType = document.getElementById('roomType').value;
        var guestCount = document.getElementById('guestCount').value;
        var checkinDate = document.getElementById('checkinDate').value;
        var checkoutDate = document.getElementById('checkoutDate').value;
        // var paymentAmount = document.getElementById('paymentAmount').value;



        let roomNumber = 604;
        let id = 'pizone';
        // let roomType = '스탠다드';
        // let checkinDate = '2023-12-12';
        // let checkoutDate = '2023-12-13';
        // let guestCount = 3;
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
    } else {
        // 사용자가 로그인되어 있지 않은 경우, 로그인 창 열기
        alert("로그인 후 사용할 수 있습니다.");
        window.location.href = "http://localhost/customer/login";
    }

});
// function requestPay() {
//
//     var roomType = document.getElementById('roomType').value;
//     var guestCount = document.getElementById('guestCount').value;
//     var checkinDate = document.getElementById('checkinDate').value;
//     var checkoutDate = document.getElementById('checkoutDate').value;
//     // var paymentAmount = document.getElementById('paymentAmount').value;
//
//
//
//     let roomNumber = 604;
//     let id = 'pizone';
//     // let roomType = '스탠다드';
//     // let checkinDate = '2023-12-12';
//     // let checkoutDate = '2023-12-13';
//     // let guestCount = 3;
//     let paymentAmount = 10;
//     let name = '김진서';
//     let phoneNumber = '010-3445-2132';
//     let reservationEmail = 'rlawlstj0123@naver.com';
//
//     IMP.request_pay(
//         {
//             pg: "html5_inicis.INIpayTest",
//             pay_method: "card",
//             merchant_uid: 'merchant_' + new Date().getTime(),
//             name: roomNumber,
//             amount: paymentAmount,
//             buyer_email: reservationEmail,
//             buyer_name: name,
//             buyer_tel: phoneNumber,
//             buyer_addr: "서울특별시 금천구 가산디지털2로 95",
//             buyer_postcode: "123-456",
//         },
//         function (rsp) {
//             if (rsp.success) {
//                 $.ajax({
//                     url: '/pay/add',
//                     type: 'post',
//                     data: {
//                         'roomNumber': roomNumber,
//                         // 'id': id,
//                         // 'reservationEmail': reservationEmail,
//                         'paymentAmount': paymentAmount,
//                         'checkinDate': checkinDate,
//                         'checkoutDate': checkoutDate,
//                         'guestCount': guestCount,
//                         'roomType': roomType,
//                         // 'name': name,
//                         // 'phoneNumber': phoneNumber
//
//                     },
//                     success: function(res) {
//
//                         var msg = '결제가 완료되었습니다.';
//                         alert(msg);
//                         location.href = "../pay/paymentDetail";
//                     }
//
//                 })
//
//             } else {
//                 var msg = '결제에 실패하였습니다.';
//                 msg += '에러내용 : ' + rsp.error_msg;
//                 alert(msg);
//             }
//
//         }
//     );
// }