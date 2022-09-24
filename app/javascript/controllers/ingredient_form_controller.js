import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['template']

  connect() {
    console.log("Hello World!", this.templateTarget.inneText)
  }

  add(event) {
    event.preventDefault()

    const template =
      this.templateTarget

    const component =
      template.innerHTML.replace(/NEW_RECORD/g, new Date().getTime())

    template.insertAdjacentHTML('beforebegin', component)

    console.log(event)
  }
}
