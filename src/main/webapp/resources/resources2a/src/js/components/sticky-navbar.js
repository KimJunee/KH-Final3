/**
 * Add solid background to fixed to top navigation bar
*/

const stickyNavbar = (() => {

  let navbar = document.querySelector('.navbar.fixed-top');

  if (navbar == null) return;

  let navbarClass = navbar.classList,
      scrollOffset = 20;

  const navbarStuck = (e) => {
    if (e.currentTarget.pageYOffset > scrollOffset) {
      navbar.classList.add('navbar-stuck');
      if (navbar.classList.contains('navbar-ignore-dark-mode')) {
        navbar.classList.remove('ignore-dark-mode');
      }
    } else {
      navbar.classList.remove('navbar-stuck');
      if (navbar.classList.contains('navbar-ignore-dark-mode')) {
        navbar.classList.add('ignore-dark-mode');
      }
    }
  }

  // On load
  window.addEventListener('load', (e) => {
    navbarStuck(e);
  });

  // On scroll
  window.addEventListener('scroll', (e) => {
    navbarStuck(e);
  });
    
})();

export default stickyNavbar;
