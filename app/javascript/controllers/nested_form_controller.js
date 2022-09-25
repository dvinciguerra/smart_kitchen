import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['template', 'render']

  add(event) {
    event.preventDefault()

    const template =
      this.templateTarget

    const component =
      template.innerHTML.replace(/NEW_RECORD/g, new Date().getTime().toString())

    this.renderTarget.insertAdjacentHTML('beforebegin', component)
  }

  remove(event) {
    event.preventDefault()

    const wrapper =
      event.target.closest('.nested-form--item')

    if (wrapper.dataset.newRecord === 'true')
      return wrapper.remove()

    wrapper.style.display = 'none'

    const input = wrapper.querySelector("input[name*='_destroy']")
    input.value = '1'
  }
}
