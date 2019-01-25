const dayHash = {
  "Sunday": 0,
  "Monday": 1,
  "Tuesday": 2,
  "Wednesday": 3,
  "Thursday": 4,
  "Friday": 5,
  "Saturday": 6
}

const getPossibleDates = (year, month, dayOftheWeek) => {
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

export const meetupDay = (year, month, dayOftheWeek, day) => {
  const possibleDates = getPossibleDates(year, month, dayOftheWeek);


  switch (day) {
    case 'teenth':
      return possibleDates.filter(date => {
        if (date.getDate() >= 13 && date.getDate() <= 19) { return date; }
      })[0]
      break;
    default:
      // statements_def
      break;
  }
};

// meetupDay(2013, 4, 'Monday', 'teenth')
console.log(meetupDay(2013, 4, 'Monday', 'teenth'))
