// 숫자를 돈단위로 ---- 숫자를 3자리수로 끊어서 ","붙히고 앞에 ￦ 붙히는 함수
function numberWithCommas(price) {
    return "￦"+price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}