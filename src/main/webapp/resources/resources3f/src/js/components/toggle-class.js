/**
 * Toggle CSS class passed via data attribute
*/

const toggleClass = (() => {

  let toggler = document.querySelectorAll('[data-bs-toggle-class]');

  for (let i = 0; i < toggler.length; i++) {

    toggler[i].addEventListener('click', (e) => {
      e.preventDefault();
      let targetEl = document.querySelector(e.currentTarget.dataset.bsTarget),
          toggleClass = e.currentTarget.dataset.bsToggleClass;

      targetEl.classList.toggle(toggleClass);
    });
    
  }
})();

export default toggleClass;
