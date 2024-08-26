import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["popup"]

  connect() {
    console.log("SignupPopup controller connected")
    console.log("Popup target:", this.popupTarget)
    console.log("Has popup target:", this.hasPopupTarget)
  }

  open(event) {
    event.preventDefault()
    console.log("Open method called")
    if (this.hasPopupTarget) {
      this.popupTarget.style.display = 'block'
      console.log("Popup displayed")
    } else {
      console.error("Popup target not found")
    }
  }

  close() {
    console.log("Close method called")
    if (this.hasPopupTarget) {
      this.popupTarget.style.display = 'none'
      console.log("Popup hidden")
    } else {
      console.error("Popup target not found")
    }
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