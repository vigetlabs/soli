import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['submit']
  connect() {}

  submitForm(event) {
    event.preventDefault()
    this.submitTarget.click()
  }
}
