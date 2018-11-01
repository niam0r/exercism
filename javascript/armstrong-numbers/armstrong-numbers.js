// export default function validate(number) {
function validate(number) {
  const digits = number.toString().split('').map(Number);


  console.log(digits);
}

validate(1234);
