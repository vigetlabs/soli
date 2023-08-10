import { Controller } from '@hotwired/stimulus'
import gsap from 'gsap'

export default class extends Controller {
  connect() {
    const timeline = gsap
      .timeline()
      .fromTo(
        '.logo',
        {
          x: 0,
          autoAlpha: 0
        },
        {
          x: '+=80',
          duration: 2,
          autoAlpha: 1
        }
      )
      .fromTo(
        '.logo-text',
        {
          autoAlpha: 0
        },
        { autoAlpha: 1, duration: 2 },
        '<0.5'
      )
      .to('.logo-text', {
        autoAlpha: 0,
        duration: 1,
        delay: 3
      })
      .fromTo(
        document.querySelector('.heading-group').children,
        {
          autoAlpha: 0,
          y: 20
        },
        { autoAlpha: 1, duration: 2, stagger: 0.2, y: 0 },
        '<0.5'
      )
  }
}
