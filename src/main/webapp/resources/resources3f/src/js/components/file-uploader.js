/**
 * File uploader
 * @requires https://github.com/pqina/filepond
*/

const fileUploader = (() => {

  let fileInput = document.querySelectorAll('.file-uploader');

  if(fileInput.length === 0) return;

  if (typeof FilePondPluginFileValidateType !== 'undefined') {
    FilePond.registerPlugin(FilePondPluginFileValidateType);
  }
  if (typeof FilePondPluginFileValidateSize !== 'undefined') {
    FilePond.registerPlugin(FilePondPluginFileValidateSize);
  }
  if (typeof FilePondPluginImagePreview !== 'undefined') {
    FilePond.registerPlugin(FilePondPluginImagePreview);
  }
  if (typeof FilePondPluginImageCrop !== 'undefined') {
    FilePond.registerPlugin(FilePondPluginImageCrop);
  }
  if (typeof FilePondPluginImageResize !== 'undefined') {
    FilePond.registerPlugin(FilePondPluginImageResize);
  }
  if (typeof FilePondPluginImageTransform !== 'undefined') {
    FilePond.registerPlugin(FilePondPluginImageTransform);
  }

  for(let i = 0; i < fileInput.length; i++) {
    FilePond.create(fileInput[i]);
  }

})();

export default fileUploader;
