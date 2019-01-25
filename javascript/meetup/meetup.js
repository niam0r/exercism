const dayHash = {
  Sunday: 0,
  Monday: 1,
  Tuesday: 2,
  Wednesday: 3,
  Thursday: 4,
  Friday: 5,
  Saturday: 6
};

const getPossibleDates = (year, month, dayOftheWeek) => {
  const d = new Date(year, month);
  const m = d.getMonth();
  const possibleDays = [];

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
};

export const meetupDay = (year, month, dayOftheWeek, condition) => {
  const possibleDates = getPossibleDates(year, month, dayOftheWeek);
  let res;

  if (condition == 'teenth') {
    res = possibleDates.find(date => date.getDate() >= 13 && date.getDate() <= 19);
  } else if (condition === 'last') {
    res = possibleDates.pop();
  } else {
    const index = parseInt(condition, 10) - 1;
    res = possibleDates[index];
  }

  if (!res) { throw new Error('Day not found!'); }

  return res;
};
