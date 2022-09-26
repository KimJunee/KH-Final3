/**
 * Bind input value with target element text
*/

const bindedInputValue = (() => {

  let bindedInput = document.querySelectorAll('[data-bs-binded-element]');


  if(bindedInput.length === 0) return;

  for(let i = 0; i < bindedInput.length; i++) {

    let bindedElement = document.querySelector(bindedInput[i].dataset.bsBindedElement),
        unsetValue = bindedInput[i].dataset.bsUnsetValue;
    
    if (bindedInput[i].tagName === 'SELECT') {
      bindedInput[i].addEventListener('change', (e) => {
        bindedElement.innerText = e.target.value;
      });
    } else if (bindedInput[i].classList.contains('date-picker')) {
      bindedInput[i].addEventListener('change', (e) => {
        if (e.target.value !== '') {
          bindedElement.innerText = e.target.value;
        } else {
          bindedElement.innerText = unsetValue;
        }
      });
    } else {
      bindedInput[i].addEventListener('keyup', (e) => {
        
        if (e.target.value !== '') {
          bindedElement.innerText = e.target.value;
        } else {
          bindedElement.innerText = unsetValue;
        }
      });
    }
  }

})();

export default bindedInputValue;
