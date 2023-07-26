import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['submit', 'locationSearch', 'tagCheckbox']
  connect() {
    // list all found targets
    console.log(this.submitTarget)
    console.log(this.locationSearchTarget)
    console.log(this.tagCheckboxTargets)
  }

  submitForm(event) {
    event.preventDefault()
    console.log('submitting form...')
    this.submitTarget.click()
  }
}
