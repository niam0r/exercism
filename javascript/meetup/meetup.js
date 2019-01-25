const dayHash = {
  Sunday: 0,
  Monday: 1,
  Tuesday: 2,
  Wednesday: 3,
  Thursday: 4,
  Friday: 5,
  Saturday: 6
};

const getPossibleDates = (year, month, dayOfTheWeek) => {
  const numDaysInMonth = new Date(year, month + 1, 0).getDate();
  const possibleDates = [];

  for (let i = 0; i < numDaysInMonth; i += 1) {
    const d = new Date(year, month, i + 1);
    if (d.getDay() === dayHash[dayOfTheWeek]) {
      possibleDates.push(d);
    }
  }
  return possibleDates;
};

export const meetupDay = (year, month, dayOfTheWeek, condition) => {
  const possibleDates = getPossibleDates(year, month, dayOfTheWeek);
  let res;

  if (condition === 'teenth') {
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
