import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['created', 'favorited', 'createdButton', 'favoritedButton']
  connect() {}

  switchToCreated() {
    // Change visible guides
    this.createdTarget.classList.remove('hidden')
    this.favoritedTarget.classList.add('hidden')
    // Change button appearances
    this.createdButtonTarget.classList.add('font-bold', 'border-b-white')
    this.createdButtonTarget.classList.remove('bg-form-light-primary')
    this.favoritedButtonTarget.classList.remove('font-bold', 'border-b-white')
    this.favoritedButtonTarget.classList.add('bg-form-light-primary')
  }

  switchToFavorited() {
    // Change visible guides
    this.createdTarget.classList.add('hidden')
    this.favoritedTarget.classList.remove('hidden')
    // Change button appearances
    this.createdButtonTarget.classList.remove('font-bold', 'border-b-white')
    this.createdButtonTarget.classList.add('bg-form-light-primary')
    this.favoritedButtonTarget.classList.add('font-bold', 'border-b-white')
    this.favoritedButtonTarget.classList.remove('bg-form-light-primary')
  }
}
