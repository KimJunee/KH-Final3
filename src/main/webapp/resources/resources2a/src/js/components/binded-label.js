/**
 * Update the text of the label when radio button / checkbox changes
*/

const bindedLabel = (() => {

  let toggleBtns = document.querySelectorAll('[data-binded-label]');

  for (let i = 0; i < toggleBtns.length; i++ ) {
    toggleBtns[i].addEventListener('change', function() {
      let target = this.dataset.bindedLabel;
      try {
        document.getElementById(target).textContent = this.value;
      }
      catch(err) {
        if (err.message = "Cannot set property 'textContent' of null") {
          console.error('Make sure the [data-binded-label] matches with the id of the target element you want to change text of!');
        }
      }
    });
  }
})();

export default bindedLabel;
