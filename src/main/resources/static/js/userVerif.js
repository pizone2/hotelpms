const pw = document.getElementById("pw");
const pwResult = document.getElementById("pwResult");
const btn = document.getElementById("btn");
const pwCheck = document.getElementById("pwCheck");
const pwCheckResult = document.getElementById("pwCheckResult");
const btn2 = document.getElementById("btn2");
const phoneCheckResult = document.getElementById("phoneCheckResult");
const phone = document.getElementById("phone");

let checks = [false,false,false];
let checks2 = [true];

//전화번호 검증
phone.addEventListener("change", function (){
   if(phone.value.length==11) {
       phoneCheckResult.innerHTML = '유효한 전화번호'
       checks2[0] = true;
   }else {
       phoneCheckResult.innerHTML = '유효한 전화번호를 입력해 주세요'
       checks2[0] = false;
   }


});



//PW 검증
pw.addEventListener("keyup", function(){
    if(pw.value.length>=8){
        pwResult.innerHTML='정상 비번'
        checks[0]=true;
    }else {
        pwResult.innerHTML='비번은 8글자 이상 이여야 합니다'
        checks[0]=false;
    }
})

pw.addEventListener("keyup", function(){
    if(pw.value!=''){
        checks[1]=true;
    }else {
        pwResult.innerHTML='PW는 필수 입니다'
        checks[1]=false;
    }
})

//pw Equal 검증
pwCheck.addEventListener("keyup", function(){
    if(pwCheck.value == pw.value){
        pwCheckResult.innerHTML="동일한 PW"
        checks[2]=true;
    }else {
        pwCheckResult.innerHTML="PW가 틀립니다"
        checks[2]=false;
    }
});


btn.addEventListener("click", function(){

    if(!checks.includes(false)){
        alert('패스워드 변경 성공');
    }else {
        alert("올바른 값을 입력해 주세요")
        event.preventDefault()
    }
});

btn2.addEventListener("click",function (){

    if(!checks2.includes(false)){
        alert("사용자 정보를 업데이트 합니다. 재 로그인 해주세요");
    }else {
        alert("올바른 값을 입력해 주세요")
        event.preventDefault()
    }

});


