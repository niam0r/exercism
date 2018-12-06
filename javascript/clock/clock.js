const processHour = hr => {
  let h;
  if (hr < 10) { h = `0${hr}`; }
  else if (hr === 24) { h = '00'; }
  else if (hr > 24) { h = processHour(hr % 24); }
  else { h = String(hr); }
  return h;
};

const processMinutes = min => {
   let m;
   if (min < 10) { m = `0${min}`; }
   else if (min < 60) { m = String(min); }
   else if (min == 60) {
    m = '00';
    hour += 1;
   }
   else if (min > 60) {
     m = min % 60;
     hour += min / 60;
   }
   return m;
}

let hour;

const at = (hr, min = 0) => {
  hour = processHour(hr);
  let m = processMinutes(min);

  return `${hour}:${m}`;
};

export default at;

// console.log(processHour(24))
