/**
 * FullCalendar plugin initialization (Schedule)
 * @requires https://github.com/fullcalendar/fullcalendar
*/

const calendar = (() => {

  // forEach function
  const forEach = (array, callback, scope) => {
    for (let i = 0; i < array.length; i++) {
      callback.call(scope, i, array[i]); // passes back stuff we need
    }
  };

  // Calendar initialisation
  const calendars = document.querySelectorAll('.calendar');
  forEach(calendars, (index, value) => {
    
    let userOptions;
    if(value.dataset.calendarOptions != undefined) userOptions = JSON.parse(value.dataset.calendarOptions);
    let options = {
      themeSystem: 'bootstrap5',
      ...userOptions
    }

    const calendarInstance = new FullCalendar.Calendar(value, options);
    calendarInstance.render();

  });

})();

export default calendar;
