/**
 * Countdown timer
 * @requires https://github.com/BrooonS/timezz
*/

const countdown = (() => {

  let timers = document.querySelectorAll('.countdown');
  if (timers.length === 0) return;

  for (let i = 0; i < timers.length; i++) {

    let date = timers[i].dataset.countdownDate;

    timezz(timers[i], {
      date: date
      // add more options here
    });
  }
  
})();

export default countdown;
