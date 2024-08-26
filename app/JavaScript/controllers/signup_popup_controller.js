import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["popup", "form", "errorMessages"]

  connect() {
    console.log("SignupPopup controller connected")
  }

  open(event) {
    event.preventDefault()
    console.log("Open method called")
    this.popupTarget.style.display = 'block'
  }

  close() {
    console.log("Close method called")
    this.popupTarget.style.display = 'none'
  }

  submit(event) {
    event.preventDefault()
    console.log('Submit method called')
    const formData = new FormData(this.formTarget)
    
    // Log form data
    for (let [key, value] of formData.entries()) {
      console.log(`${key}: ${value}`);
    }

    fetch('/users', {
      method: 'POST',
      headers: {
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content,
        'Accept': 'application/json'
      },
      body: formData
    })
    .then(response => {
      console.log('Response status:', response.status);
      return response.json();
    })
    .then(data => {
      console.log('Response data:', data);
      if (data.status === 'success') {
        console.log('User created successfully')
        this.close()
        // Optionally, redirect the user or update the UI
        window.location.reload()
      } else {
        console.error('Error:', data.errors)
        this.displayErrors(data.errors)
      }
    })
    .catch(error => {
      console.error('Fetch error:', error)
      this.displayErrors(['An unexpected error occurred. Please try again.'])
    })
  }

  displayErrors(errors) {
    if (this.hasErrorMessagesTarget) {
      this.errorMessagesTarget.innerHTML = errors.map(error => `<p>${error}</p>`).join('')
    } else {
      console.error('Error messages:', errors)
    }
  }

  clickOutside(event) {
    if (event.target === this.popupTarget) {
      this.close()
    }
  }
}