/**
 * Bind different content to different navs or even accordion.
*/

const bindedContent = (() => {

  let clickToggles = document.querySelectorAll('[data-binded-content]'),
      scrollToggles = document.querySelectorAll('[data-scroll-binded]'),
      bindedContent = document.querySelector('.binded-content');

  // Get target element siblings
  let getSiblings = elem => {
    let siblings = [],
        sibling = elem.parentNode.firstChild;
    while (sibling) {
      if (sibling.nodeType === 1 && sibling !== elem) {
        siblings.push(sibling);
      }
      sibling = sibling.nextSibling;
    }
    return siblings;
  };

  // Change binded content function
  let changeBindedContent = (target) => {
    let targetEl = document.querySelector(target),
    targetSiblings = getSiblings(targetEl);

    targetSiblings.map((sibling) => {
      sibling.classList.remove('active');
    });

    targetEl.classList.add('active');
  };

  // Change binded content on click
  for (let i = 0; i < clickToggles.length; i++) {
    clickToggles[i].addEventListener('click', (e) => {
      changeBindedContent(e.currentTarget.dataset.bindedContent);
    });
  }
  
})();

export default bindedContent;
