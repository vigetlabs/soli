import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['submit', 'clear', 'city', 'duration', 'tag']
  connect() {
    if (
      this.cityTarget.value != '' ||
      this.durationTarget.value != 'Duration' ||
      this.tagTargets.some((tag) => tag.checked)
    ) {
      this.clearTarget.classList.remove('hidden')
    }
  }

  submitForm(event) {
    event.preventDefault()
    this.submitTarget.click()
  }
}
