import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['preview']
  static values = { imgSrc: String('') }

  // Connect and ensure that an element exists where the image preview will be displayed
  connect() {
    console.log('image-preview_controller connected')
    if (this.previewTargets.length > 0) {
      console.log('Found image preview targets:', this.previewTargets)
    } else {
      console.log('No image preview targets found')
    }
  }

  // Set the imgSrc value to the URL of the image file selected by the user
  setImgSrcValue(event) {
    console.log('setting imgSrc value...')
    const imageFiles = event.target.files
    if (imageFiles.length > 0) {
      // set the imgSrc value to the URL of the image file
      this.imgSrcValue = URL.createObjectURL(imageFiles[0])
      console.log(`imgSrc value is now ${this.imgSrcValue}`)
      // get the image preview element and display the image
      const imagePreviewElement = this.previewTargets[0]
      imagePreviewElement.src = this.imgSrcValue
      imagePreviewElement.classList.remove('hidden')
    }
  }
}
