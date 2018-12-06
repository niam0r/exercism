const at = (hr) => {
  let h = hr < 10 ? `0${hr}` : String(hr);
  let m = '00'
  return `${h}:${m}`;
};

export default at;
