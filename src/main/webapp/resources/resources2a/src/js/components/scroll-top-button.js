/**
 * Animate scroll to top button in/off view
*/

const scrollTopButton = (() => {

  let button = document.querySelector('.btn-scroll-top'),
      scrollOffset = 450;
  
  if (button == null) return;
  
  let offsetFromTop = parseInt(scrollOffset, 10),
      progress = button.querySelector('svg circle'),
      length = progress.getTotalLength();
  
  progress.style.strokeDasharray = length;
  progress.style.strokeDashoffset = length;

  const showProgress = () => {
    let scrollPercent = (document.body.scrollTop + document.documentElement.scrollTop) / (document.documentElement.scrollHeight - document.documentElement.clientHeight),
        draw = length * scrollPercent;
    progress.style.strokeDashoffset = length - draw;
  }
  
  window.addEventListener('scroll', (e) => {
    if (e.currentTarget.pageYOffset > offsetFromTop) {
      button.classList.add('show');
    } else {
      button.classList.remove('show');
    }

    showProgress();
  });
})();

export default scrollTopButton;
