<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
        crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../resources/style.css">

    <!-- Iconos de footer -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="icon" type="image/x-icon" href="resources/img/favicon.ico" />
    <title>Contacto</title>
</head>

<body>
    <nav>
        <jsp:include page="fijos/navbar.jsp"></jsp:include>
    </nav>
    <header class="py-5 bg-image-full"
        style="background-size: cover; background-repeat: no-repeat; background-image: url(resources/img/manos.jfif)">
        <div class="text-center my-5" style="font-family: 'Times New Roman', Times, serif;">
            <img class="img-fluid rounded-rectangle mb-4" style="opacity: 85%;" src="resources/img/sd-logo-dots.png"
                alt="..." />
        </div>
    </header>
    <p class="p-0 bg-light text-dark text-center contenido" style="opacity: 85%;" id="reloj"></p>
    <div class="container py-4">
        <form id="contactForm" action="enviarMensaje" method="post">
            <div class="mb-3">
                <label class="form-label" for="name">Nombre</label>
                <input class="form-control" id="name" name="nombre" type="text" placeholder="Nombre"
                    data-sb-validations="required" />
                <div class="invalid-feedback" data-sb-feedback="name:required">Nombre requerido</div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="emailAddress">Email</label>
                <input class="form-control" id="emailAddress" name="email" type="email"
                    placeholder="Correo electrónico" data-sb-validations="required, email" />
                <div class="invalid-feedback" data-sb-feedback="emailAddress:required">Direccion de correo requerida
                </div>
                <div class="invalid-feedback" data-sb-feedback="emailAddress:email">Direccion de correo invalida
                </div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="message">Comentanos tu proyecto</label>
                <textarea class="form-control" id="message" name="mensaje" placeholder="Deja tu mensaje"
                    style="height: 10rem;" data-sb-validations="required"></textarea>
                <div classclass="invalid-feedback" data-sb-feedback="message:required">Mensaje requerido</div>
</div>
<div class="d-none" id="submitSuccessMessage">
<div class="text-center mb-3">Gracias por contactarnos!</div>
</div>
<div class="d-none" id="submitErrorMessage">
<div class="text-center text-danger mb-3">Error al enviar mensaje!</div>
</div>
<div class="d-grid">
<button class="btn btn-primary btn-lg" type="submit">Enviar</button>
</div>
</form>
</div>
<footer class="py-5 bg-dark" style="opacity: 85% ;">
<div class="container">
<p class="m-0 text-center text-white">Copyright ©
2023 Parmesano inc.</p>
</div>
</footer>
<script src="../resources/validacion.js"></script>
<script src="../resources/main.js"></script>

<script
     src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
     integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
     crossorigin="anonymous"></script>
<script
     src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"
     integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
     crossorigin="anonymous"></script>

</body>
</html>
