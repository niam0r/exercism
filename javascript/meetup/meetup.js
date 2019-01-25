// export

const meetupDay = (year, month, dayOftheWeek, day) => {

  return new Date(year, month, day);
};

const dayHash = {
  "Sunday": 0,
  "Monday": 1,
  "Tuesday": 2,
  "Wednesday": 3,
  "Thursday": 4,
  "Friday": 5,
  "Saturday": 6
}

const getPossibleDays = (year, month, dayOftheWeek) => {
  let d = new Date(year, month);
  let m = d.getMonth();
  let possibleDays = [];

  d.setDate(1);

  // Get the first day in the month
  while (d.getDay() !== dayHash[dayOftheWeek]) {
    d.setDate(d.getDate() + 1);
  }

  // Get all the other days in the month
  while (d.getMonth() === m) {
    possibleDays.push(new Date(d.getTime()));
    d.setDate(d.getDate() + 7);
  }

  return possibleDays;
}

console.log(getPossibleDays(2019, 0, 'Sunday'))
