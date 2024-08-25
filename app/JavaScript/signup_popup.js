document.addEventListener('turbo:load', () => {
    const popup = document.getElementById('signup-popup');
    const signupButton = document.querySelector('.cta-box .primary-button');
    const closeButton = document.querySelector('.popup .close');
  
    signupButton.addEventListener('click', (e) => {
      e.preventDefault();
      popup.style.display = 'block';
    });
  
    closeButton.addEventListener('click', () => {
      popup.style.display = 'none';
    });
  
    window.addEventListener('click', (e) => {
      if (e.target === popup) {
        popup.style.display = 'none';
      }
    });
  
    const signupForm = document.getElementById('signup-form');
    signupForm.addEventListener('submit', (e) => {
      e.preventDefault();
      // Here you'll add the logic to create the user in the database
      console.log('Form submitted');
      // For now, just close the popup
      popup.style.display = 'none';
    });
  });