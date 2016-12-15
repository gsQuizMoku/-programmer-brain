var num = 11;

var s_reverse = function(str){
  return str.split("").reverse().join("");
}


while (true) {
  if (num.toString() == s_reverse(num.toString()) &&
  num.toString(8) == s_reverse(num.toString(8))  &&
  num.toString(2) == s_reverse(num.toString(2))  ){
    console.log(num);
    break;
  }
  num += 2;
}
