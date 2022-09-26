/**
 * Content carousel with extensive options to control behaviour and appearance
 * @requires https://github.com/nolimits4web/swiper
*/

const carousel = (() => {

  // forEach function
  const forEach = (array, callback, scope) => {
    for (let i = 0; i < array.length; i++) {
      callback.call(scope, i, array[i]); // passes back stuff we need
    }
  };


  // Carousel initialisation
  const carousels = document.querySelectorAll('.swiper');
  forEach(carousels, (index, value) => {
    
    let options;
    if(value.dataset.swiperOptions != undefined) options = JSON.parse(value.dataset.swiperOptions);

    const swiper = new Swiper(value, options);

    
    // Controlled slider
    if(options.controlledSlider) {

      let controlledSlider = document.querySelector(options.controlledSlider),
          controlledSliderOptions;
      if(controlledSlider.dataset.swiperOptions != undefined) controlledSliderOptions = JSON.parse(controlledSlider.dataset.swiperOptions);

      var swiperControlled = new Swiper(controlledSlider, controlledSliderOptions);
      swiper.controller.control = swiperControlled;
    }


    // Binded content
    if(options.bindedContent) {

      swiper.on('activeIndexChange', (e) => {
        let targetItem = document.querySelector(e.slides[e.activeIndex].dataset.swiperBinded),
            previousItem = document.querySelector(e.slides[e.previousIndex].dataset.swiperBinded);

        previousItem.classList.remove('active');
        targetItem.classList.add('active');
      });
    }

  });

})();

export default carousel;
