/**
 * Animation on scroll (AOS)
 * 
 * @requires https://github.com/michalsnik/aos
*/

const animateOnscroll = (() => {

  let animationToggle = document.querySelector('[data-aos]');

  if (animationToggle === null) return;

  AOS.init();

})();

export default animateOnscroll;
