document.addEventListener('turbo:load', () => {
    const signupButton = document.querySelector('.signup-button');
    const signupPopup = document.getElementById('signup-popup');
    const closeButton = signupPopup.querySelector('.close');
  
    signupButton.addEventListener('click', (e) => {
      e.preventDefault();
      signupPopup.style.display = 'block';
    });
  
    closeButton.addEventListener('click', () => {
      signupPopup.style.display = 'none';
    });
  
    window.addEventListener('click', (e) => {
      if (e.target === signupPopup) {
        signupPopup.style.display = 'none';
      }
    });
  });