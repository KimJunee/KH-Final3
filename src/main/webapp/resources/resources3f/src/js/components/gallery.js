/**
 * Gallery like styled lightbox component for presenting various types of media
 * @requires https://github.com/sachinchoolur/lightGallery
*/

const gallery = (() => {

  let gallery = document.querySelectorAll('.gallery');
  if (gallery.length) {
    for (let i = 0; i < gallery.length; i++) {

      const thumbnails = gallery[i].dataset.thumbnails ? true : false,
            video = gallery[i].dataset.video ? true : false,
            defaultPlugins = [lgZoom, lgFullscreen],
            videoPlugin = video ? [lgVideo] : [],
            thumbnailPlugin = thumbnails ? [lgThumbnail] : [],
            plugins = [...defaultPlugins, ...videoPlugin, ...thumbnailPlugin]

      lightGallery(gallery[i], {
        selector: '.gallery-item',
        plugins: plugins,
        download: false,
        autoplayVideoOnSlide: true,
        zoomFromOrigin: false,
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

export default gallery;
