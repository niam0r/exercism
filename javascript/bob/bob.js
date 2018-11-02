export const hey = (message) => {
  if (message.trim() == '') {
    return 'Fine. Be that way!';
  } else if (message.toUpperCase() == message && message.endsWith('?') && !/^\d+\?/.test(message) && /[a-zA-Z]/.test(message)) {
    return 'Calm down, I know what I\'m doing!';
  } else if (message.toUpperCase() == message && !/^\d+\?/.test(message) && /[a-zA-Z]/.test(message)) {
    return 'Whoa, chill out!';
  } else if (message.trim().endsWith('?')) {
    return 'Sure.';
  } else { return 'Whatever.'; }
};
