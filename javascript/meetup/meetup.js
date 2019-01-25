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

export const meetupDay = (year, month, dayOftheWeek, day) => {
  const possibleDates = getPossibleDates(year, month, dayOftheWeek);

  switch (day) {
    case 'teenth':
      return possibleDates.find(date => date.getDate() >= 13 && date.getDate() <= 19);
    case '1st':
      return possibleDates[0];
    case '2nd':
      return possibleDates[1];
    case '3rd':
      return possibleDates[2];
    case '4th':
      return possibleDates[3];
    case '5th':
      return possibleDates[4];
    case 'last':
      return possibleDates[possibleDates.length - 1];
    default:
      throw new Error('Day not found!');
  }
};
