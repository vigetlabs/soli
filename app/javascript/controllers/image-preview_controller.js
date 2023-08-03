import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['uploadButton']
  static values = { imgSrc: String('') }
  connect() {
    if (!this.hasUploadButtonTarget) {
      throw new Error(
        'The image preview controller was connected, but no image upload button target was found'
      )
    }
  }

  setImgSrcValue(event) {
    const imageFiles = event.target.files
    if (imageFiles.length > 0) {
      // set the imgSrc value to the URL of the image file
      this.imgSrcValue = URL.createObjectURL(imageFiles[0])
      console.log(`imgSrc value is now ${this.imgSrcValue}`)
      // get the image preview element and display the image
      const imageUploadButton = this.uploadButtonTargets[0]
      // change background-image of upload button
      imageUploadButton.style.backgroundImage = `url(${this.imgSrcValue})`
      imageUploadButton.style.color = `transparent`
      imageUploadButton.dataset.controls = 'hidden'
    }
  }
}
