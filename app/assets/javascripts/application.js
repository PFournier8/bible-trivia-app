//= require turbo
//= require_tree .
import "./questions"

function showNotification(message) {
  const notification = document.getElementById('notification');
  notification.textContent = message;
  notification.classList.add('show');
  setTimeout(() => {
    notification.classList.remove('show');
  }, 3000);
}

document.addEventListener('turbo:load', function() {
  const signupButton = document.querySelector('.signup-button');
  const loginButton = document.querySelector('.login-button');
  const signupPopup = document.getElementById('signup-popup');
  const loginPopup = document.getElementById('login-popup');
  const closeButtons = document.querySelectorAll('.close');

  function openPopup(popup) {
    if (popup) popup.style.display = 'block';
  }

  function closePopup(popup) {
    if (popup) popup.style.display = 'none';
  }

  if (signupButton) {
    signupButton.addEventListener('click', function(e) {
      e.preventDefault();
      openPopup(signupPopup);
    });
  }

  if (loginButton) {
    loginButton.addEventListener('click', function(e) {
      e.preventDefault();
      openPopup(loginPopup);
    });
  }

  closeButtons.forEach(button => {
    button.addEventListener('click', function() {
      closePopup(signupPopup);
      closePopup(loginPopup);
    });
  });

  window.addEventListener('click', function(e) {
    if (e.target == signupPopup || e.target == loginPopup) {
      closePopup(signupPopup);
      closePopup(loginPopup);
    }
  });

  // Existing code for other functionality...
});