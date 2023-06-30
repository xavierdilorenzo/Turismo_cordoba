// Efecto de animación para el formulario
const form = document.querySelector('form');
form.style.opacity = '0';

setTimeout(() => {
  form.style.transition = 'opacity 1s';
  form.style.opacity = '1';
}, 500);

// Validación del formulario
form.addEventListener('submit', (event) => {
  event.preventDefault();
  
  // Validar campos (ejemplo)
  const nameInput = document.querySelector('#name');
  const emailInput = document.querySelector('#email');
  const messageInput = document.querySelector('#message');

  if (nameInput.value === '' || emailInput.value === '' || messageInput.value === '') {
    alert('Por favor, complete todos los campos del formulario.');
    return;
  }

  // Enviar formulario (ejemplo)
  alert('Formulario enviado exitosamente');
  form.reset();
});

// Animación para los botones
const socialButtons = document.querySelectorAll('.social-button');

socialButtons.forEach((button) => {
  button.addEventListener('mouseover', () => {
    button.style.transform = 'scale(1.1)';
    button.style.transition = 'transform 0.3s';
  });

  button.addEventListener('mouseout', () => {
    button.style.transform = 'scale(1)';
    button.style.transition = 'transform 0.3s';
  });
});
