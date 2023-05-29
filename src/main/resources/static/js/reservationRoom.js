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
    //각각의 행에 대한 정보를 가져오기 위한 방법
    const row = $(this).closest("tr");
    const rtype = row.find("#rtype").text();
    const guestCount = row.find("#guest").val();
    const stayDuration = parseInt(row.find("#stayDuration").val(), 10);
    const roomPrice = row.find("#roomPrice").text();
    let d = checkinDate
    const checkin = new Date(checkinDate);

    const futureDate = new Date(checkinDate);
    futureDate.setDate(futureDate.getDate() + stayDuration);

// 계산된 날짜 정보 가져오기
    const year = futureDate.getFullYear();
    const month = String(futureDate.getMonth() + 1).padStart(2, '0');
    const day = String(futureDate.getDate()).padStart(2, '0');

// 결과 출력
    const formattedDate = `${year}-${month}-${day}`;
    let f = roomPrice * stayDuration;

    // 총합계금액 삽입해주기
     $("#paymentAmount").val(f);
    // 객실타입
     $("#roomType").val(rtype);
    // 체크인 날짜
     $("#checkinDate").val(d);
    //체크아웃날짜
     $("#checkoutDate").val(formattedDate);
    //인원수 삽입
     $("#guestCount").val(guestCount);


});
