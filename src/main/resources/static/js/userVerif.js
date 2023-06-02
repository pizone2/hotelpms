const pw = document.getElementById("pw");
const pwResult = document.getElementById("pwResult");
const btn = document.getElementById("btn");
const pwCheck = document.getElementById("pwCheck");
const pwCheckResult = document.getElementById("pwCheckResult");

let checks = [false,false,false];

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

// pw.addEventListener("change", function(){
//     checks[3]=false;
//     pwCheck.value='';
//     pwCheckResult.innerHTML='PW가 틀립니다';
// })

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
