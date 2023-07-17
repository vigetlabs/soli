import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['preview']
  static values = { imgSrc: String('') }
  connect() {
    if (!this.hasPreviewTarget) {
      throw new Error(
        'The image preview controller was connected, but no image preview target was found'
      )
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
