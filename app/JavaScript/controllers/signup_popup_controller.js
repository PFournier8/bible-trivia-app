import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["popup"]

  connect() {
    console.log("SignupPopup controller connected")
  }

  open(event) {
    event.preventDefault()
    this.popupTarget.style.display = 'block'
  }

  close() {
    this.popupTarget.style.display = 'none'
  }

  submit(event) {
    event.preventDefault()
    console.log('Form submitted')
    this.close()
  }

  clickOutside(event) {
    if (event.target === this.popupTarget) {
      this.close()
    }
  }
}