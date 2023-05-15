// Esperar a que el documento esté listo
document.addEventListener("DOMContentLoaded", function() {
  // Obtener el formulario de contacto
  var form = document.getElementById("contactForm");

  // Agregar un evento de escucha al envío del formulario
  form.addEventListener("submit", function(event) {
    // Detener el envío del formulario
    event.preventDefault();

    // Validar el formulario antes de enviarlo
    if (validarFormulario()) {
      // Enviar el formulario si es válido
      form.submit();
    }
  });

  // Función para validar el formulario
  function validarFormulario() {
    var nombre = document.getElementById("name").value;
    var email = document.getElementById("emailAddress").value;
    var mensaje = document.getElementById("message").value;

    // Validar que los campos no estén vacíos
    if (nombre === "" || email === "" || mensaje === "") {
      alert("Por favor, complete todos los campos.");
      return false;
    }

    // Validar el formato del correo electrónico
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
      alert("Por favor, ingrese un correo electrónico válido.");
      return false;
    }

    // Si todos los campos son válidos, devolver true
    return true;
  }
});
