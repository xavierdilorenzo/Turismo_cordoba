// Efecto de animación para el título
const title = document.querySelector('h1');
title.style.opacity = '0';

setTimeout(() => {
  title.style.transition = 'opacity 1s';
  title.style.opacity = '1';
}, 500);

// Efecto de desplazamiento suave para los enlaces internos
const internalLinks = document.querySelectorAll('a[href^="#"]');
internalLinks.forEach(link => {
  link.addEventListener('click', (event) => {
    event.preventDefault();
    const target = document.querySelector(link.getAttribute('href'));
    window.scrollTo({
      top: target.offsetTop,
      behavior: 'smooth'
    });
  });
});
