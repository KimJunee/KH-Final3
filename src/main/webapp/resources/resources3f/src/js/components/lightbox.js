/**
 * Lightbox component for presenting various types of media
 * @requires https://github.com/sachinchoolur/lightGallery
*/

const lightbox = (() => {

  let lightboxToogle = document.querySelectorAll('[data-bs-toggle="lightbox"]');
  if (lightboxToogle.length) {
    for (let i = 0; i < lightboxToogle.length; i++) {

      const video = lightboxToogle[i].dataset.video ? true : false,
            zoom = lightboxToogle[i].dataset.zoom ? true : false,
            fs = lightboxToogle[i].dataset.fullscreen ? true : false,
            zoomPlugin = zoom ? [lgZoom] : [],
            fsPlugin = fs ? [lgFullscreen] : [],
            videoPlugin = video ? [lgVideo] : [],
            plugins = [...zoomPlugin, ...fsPlugin, ...videoPlugin]

      lightGallery(lightboxToogle[i], {
        selector: 'this',
        plugins: plugins,
        download: false,
        youtubePlayerParams: {
          modestbranding: 1,
          showinfo: 0,
          rel: 0
        },
        vimeoPlayerParams: {
          byline: 0,
          portrait: 0,
          color: 'fd5631'
        }
      });
    }
  }
})();

export default lightbox;
