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
  const formData = new FormData(signupForm);
  fetch('/signup', {
    method: 'POST',
    body: formData,
    headers: {
      'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
    }
  })
  .then(response => response.json())
  .then(data => {
    if (data.status === 'success') {
      console.log('User created successfully');
      popup.style.display = 'none';
    } else {
      console.error('Error:', data.message);
    }
  })
  .catch(error => console.error('Error:', error));
});
  });