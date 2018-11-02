export const hey = (message) => {
  if (message.trim() == '') {
    return 'Fine. Be that way!';
  // } else if (!message.includes(/[a-zA-Z]/)) {
  //   return 'Whatever.';
  } else if (message.toUpperCase() == message && message.endsWith('?')) {
    return 'Calm down, I know what I\'m doing!';
  } else if (message.toUpperCase() == message) {
    return 'Whoa, chill out!';
  } else if (message.trim().endsWith('?')) {
    return 'Sure.';
  } else { return 'Whatever.'; }
};
