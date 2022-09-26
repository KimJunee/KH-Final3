/**
 * Content carousel with extensive options to control behaviour and appearance
 * @requires https://github.com/ganlanyuan/tiny-slider
*/

const carousel = (() => {

  // forEach function
  let forEach = function (array, callback, scope) {
    for (let i = 0; i < array.length; i++) {
      callback.call(scope, i, array[i]); // passes back stuff we need
    }
  };

  // Carousel initialisation
  let carousels = document.querySelectorAll('.tns-carousel-wrapper .tns-carousel-inner');
  forEach(carousels, function (index, value) {

    let controlsText;

    if(value.dataset.carouselOptions != undefined && JSON.parse(value.dataset.carouselOptions).axis === 'vertical') {
      controlsText = ['<i class="fi-chevron-up"></i>', '<i class="fi-chevron-down"></i>']; 
    } else {
      controlsText = ['<i class="fi-chevron-left"></i>', '<i class="fi-chevron-right"></i>'];
    }

    let defaults = {
      container: value,
      controlsText: controlsText,
      navPosition: 'bottom',
      mouseDrag: true,
      speed: 500,
      autoplayHoverPause: true,
      autoplayButtonOutput: false
    };
    let userOptions;
    if(value.dataset.carouselOptions != undefined) userOptions = JSON.parse(value.dataset.carouselOptions);
    let options = Object.assign({}, defaults, userOptions);
    let carousel = tns(options);

    let carouselWrapper = value.closest('.tns-carousel-wrapper'),
        carouselItems = carouselWrapper.querySelectorAll('.tns-item'),
        carouselInfo = carousel.getInfo(),
        carouselCurrentSlide = carouselWrapper.querySelector('.tns-current-slide'),
        carouselTotalSlides = carouselWrapper.querySelector('.tns-total-slides');

    // Center slide
    if(carouselWrapper.classList.contains('tns-center')) {

      let indexCurrentInitial = carouselInfo.index;
      carouselInfo.slideItems[indexCurrentInitial].classList.add('active');

      carousel.events.on('indexChanged', () => {
        let info = carousel.getInfo(),
            indexPrev = info.indexCached,
            indexCurrent = info.index;
        info.slideItems[indexPrev].classList.remove('active');
        info.slideItems[indexCurrent].classList.add('active');
      });
    }
        
    // Slides count
    if (carouselWrapper.querySelector('.tns-slides-count') === null) return;
              
    carouselCurrentSlide.innerHTML = carouselInfo.displayIndex;
    carouselTotalSlides.innerHTML = carouselInfo.slideCount;

    carousel.events.on('indexChanged', () => {
      let info = carousel.getInfo();
      carouselCurrentSlide.innerHTML = info.displayIndex;
    });
  });

})();

export default carousel;
