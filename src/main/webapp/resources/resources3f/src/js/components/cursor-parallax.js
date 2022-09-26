/**
 * Mouse move (cursor) parallax effect
 * @requires https://github.com/wagerfield/parallax
*/

const cursorParallax = (() => {

  let element = document.querySelectorAll('.parallax');

  for (let i = 0; i < element.length; i++) {
    let parallaxInstance = new Parallax(element[i]);
  }

})();

export default cursorParallax;
