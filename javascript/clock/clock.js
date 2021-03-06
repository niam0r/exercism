const processHour = hr => {
  let h;
  if (hr < 0) {
    while (hr <= 0) { hr += 24; }
    h = processHour(hr);
  }
  else if (hr < 10) { h = `0${hr}`; }
  else if (hr === 24) { h = '00'; }
  else if (hr > 24) { h = processHour(hr % 24); }
  else { h = String(hr); }
  return h;
};

const at = (hr, min = 0) => {
  if (min < 0) {
    while (min <= 0) {
      min += 60;
      hr -=1;
    }
  }
  if (min >= 60) {
    hr += Math.floor(min / 60);
    min = min % 60;
  }
  let m = min < 10 ? `0${min}` : String(min)

  return `${processHour(hr)}:${m}`;
};

export default at;

