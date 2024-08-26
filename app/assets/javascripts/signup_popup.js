document.addEventListener('turbo:load', function() {
    var signupButton = document.querySelector('.signup-button');
    var signupPopup = document.getElementById('signup-popup');
    var closeButton = signupPopup.querySelector('.close');
    var signupForm = signupPopup.querySelector('form');
  
    signupButton.addEventListener('click', function(e) {
      e.preventDefault();
      signupPopup.style.display = 'block';
    });
  
    closeButton.addEventListener('click', function() {
      signupPopup.style.display = 'none';
    });
  
    window.addEventListener('click', function(e) {
      if (e.target === signupPopup) {
        signupPopup.style.display = 'none';
      }
    });
  
    signupForm.addEventListener('submit', function(e) {
      console.log('Form submitted');
    });
  });