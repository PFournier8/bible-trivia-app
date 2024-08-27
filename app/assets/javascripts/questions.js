document.addEventListener('turbo:load', function() {
    const form = document.getElementById('new-question-form');
    if (form) {
      form.addEventListener('submit', function(event) {
        event.preventDefault();
        
        fetch(form.action, {
          method: form.method,
          body: new FormData(form),
          headers: {
            'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content,
            'Accept': 'application/json'
          }
        })
        .then(response => response.json())
        .then(data => {
          if (data.status === 'success') {
            showPopup();
            clearForm();
          } else {
            // Handle errors
            console.error('Error:', data.errors);
          }
        })
        .catch(error => {
          console.error('Error:', error);
        });
      });
    }
  });
  
  function showPopup() {
    const popup = document.getElementById('success-popup');
    popup.style.display = 'block';
  }
  
  function closePopup() {
    const popup = document.getElementById('success-popup');
    popup.style.display = 'none';
  }
  
  function clearForm() {
    const form = document.getElementById('new-question-form');
    form.reset();
    // Clear radio buttons
    form.querySelectorAll('input[type="radio"]').forEach(radio => radio.checked = false);
  }