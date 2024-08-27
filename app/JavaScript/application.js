// import { Application } from "@hotwired/stimulus"
// import "@hotwired/turbo-rails"
// import "./controllers"
// import "./signup_popup"

// const application = Application.start()

// // Configure Stimulus development experience
// application.debug = false
// window.Stimulus   = application

// export { application }

document.addEventListener('DOMContentLoaded', function() {
  const userInfo = document.querySelector('.user-info');
  if (userInfo) {
    userInfo.addEventListener('click', function(e) {
      e.stopPropagation();
      this.querySelector('.dropdown-content').classList.toggle('show');
    });

    document.addEventListener('click', function(e) {
      if (!userInfo.contains(e.target)) {
        userInfo.querySelector('.dropdown-content').classList.remove('show');
      }
    });
  }
});
