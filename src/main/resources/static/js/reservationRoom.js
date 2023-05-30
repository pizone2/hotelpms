//AJAX를 이용해서 총합계 가격 선택한 예약 정보 불러오기

// 계산할 값 가져오기 (인원 결제날짜 체크인날짜 체크아웃날짜 결제금액)
const btn1 = document.getElementById("btn1");
const guest = document.getElementById("guest");
const stayDuration = document.getElementById("stayDuration");
const roomPrice = document.getElementById("roomPrice");
const rtype = document.getElementById("rtype").textContent;
//파라미터 값으로 넘긴 checkinDate 넣어주기
const urlParams = new URLSearchParams(window.location.search);
const checkinDate = urlParams.get('checkinDate');
document.getElementById("myDiv").style.display = "none";



// $.ajax({
//     url: "/booking/reservationRoom",
//     type: "POST",
//     data: {
//
//     },
//     success: function(data) {
//
//     },
//     error: function(xhr, status, error) {
//
//     })



$(".btn1").on("click", function() {

    const row = $(this).closest("tr");

    // 다른 요소들의 값을 추출
    const rtype = row.find("#rtype").text();
    const guestCount = row.find("#guest").val();
    //const stayDuration = row.find("#stayDuration").val();
    const stayDuration = parseInt(row.find("#stayDuration").val(), 10);
    const roomPrice = row.find("#roomPrice").text();
    let d = checkinDate
    const checkin = new Date(checkinDate);


    // 7일을 더한 날짜 계산
    const futureDate = new Date(checkinDate);
    futureDate.setDate(futureDate.getDate() + stayDuration);

// 계산된 날짜 정보 가져오기
    const year = futureDate.getFullYear();
    const month = String(futureDate.getMonth() + 1).padStart(2, '0');
    const day = String(futureDate.getDate()).padStart(2, '0');

// 결과 출력
    const formattedDate = `${year}-${month}-${day}`;

    console.log("ddd일 후 날짜:", formattedDate);
    console.log("Check-in 날짜:", checkinDate);
    console.log("숙박 기간dd (일):", stayDuration);


    // 추출한 값을 활용하여 원하는 작업 수행
    // 예: 정보를 출력하거나 다른 요소에 설정하는 등
    let f = roomPrice * stayDuration;


    // 예약 정보 출력
    console.log("객실 유형:", rtype);
    console.log("게스트 수:", guestCount);
    console.log("숙박 기간:", stayDuration);
    console.log("객실 가격:", roomPrice);

    // //총합계금액 삽입해주기
     $("#paymentAmount").val(f);

    $("#paymentAmount1").text(f+'원');
    $("#paymentAmount2").text(f+'원');
    // //객실타입
     $("#roomType").val(rtype);
    // //체크인 날짜
     $("#checkinDate").val(d);
    //체크아웃날짜
     $("#checkoutDate").val(formattedDate);
    // //인원수 삽입
     $("#guestCount").val(guestCount);




    // //인원수
    // let a = $("#guest").val();
    // //객실형식
    // let b = $("#rtype").val();
    // //몇박묶을건지 박수
    // let c =  $("#stayDuration").val();
    // let d = checkinDate
    // let e = checkinDate + c
    // //총객실금액합계
    // let f = $("#roomPrice");
    // let tp = c*f ;
    //
    //


});
