// Efecto de animación para las imágenes
const image = document.querySelector('img');
image.style.opacity = '0';

setTimeout(() => {
  image.style.transition = 'opacity 1s';
  image.style.opacity = '1';
}, 500);

// Efecto de resaltado para los enlaces internos
const internalLinks = document.querySelectorAll('a[href^="pagina"]');
internalLinks.forEach(link => {
  link.addEventListener('mouseenter', () => {
    link.style.backgroundColor = '#333';
    link.style.color = '#fff';
  });

  link.addEventListener('mouseleave', () => {
    link.style.backgroundColor = '';
    link.style.color = '';
  });
});

// Efecto de reproducción automática para el video después de la interacción del usuario
const video = document.querySelector('video');

document.addEventListener('click', () => {
  video.play();
});
