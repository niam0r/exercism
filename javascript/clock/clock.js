const processHour = hr => {
  let h = '';
  if (hr < 10) { h = `0${hr}`; }
  else if (h === 24) { h = '00'; }
  else if (hr > 24) { h = processHour(hr % 24); }
  else { h = String(hr); }
  return h;
};

const at = (hr, min = 0) => {
  let h = processHour(hr);
  let m = min < 10 ? `0${min}` : String(min)
  return `${h}:${m}`;
};

export default at;

// console.log(processHour(100))
