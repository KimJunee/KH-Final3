/**
 * Count input with increment (+) and decrement (-) buttons
*/

const countInput = (() => {

  const countInputs = document.querySelectorAll('.count-input');

  for (let i = 0; i < countInputs.length; i++ ) {

    let component = countInputs[i],
        incrementBtn = component.querySelector('[data-increment]'),
        decrementBtn = component.querySelector('[data-decrement]'),
        input = component.querySelector('.form-control');
    
    const handleIncrement = () => {
      input.value++;
    };

    const handleDecrement = () => {
      if(input.value > 0) {
        input.value--;
      }
    };

    // Add click event to buttons
    incrementBtn.addEventListener('click', handleIncrement);
    decrementBtn.addEventListener('click', handleDecrement);
  }
})();

export default countInput;
