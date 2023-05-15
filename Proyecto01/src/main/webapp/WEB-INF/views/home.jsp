<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Soluciones Digitales</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/x-icon" href="resources/img/favicon.ico" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="resources/css/style.css">
</head>
<style>
body {
	background-image: url(<%=request.getContextPath()%>/resources/img/fondo.jfif);
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

<body>

	<div class="p-2 bg-dark text-white text-center" style="opacity: 85%;"
		id="header">
		<br> <br> <img src="resources/img/sd-logo-dots.png" alt=""
			width="300px" height="85px"> <br> <br>
		<h1>Soluciones Digitales</h1>
		<p class="contenido">"Contamos con lo necesario para concretar tu
			proyecto!"</p>
	</div>
	<nav> <jsp:include page="fijos/navbar.jsp"></jsp:include>
	<button class="btn btn-light" id= boton1>Ocultar</button>
	<button class="btn btn-light" id= boton2>Mostrar</button>
	 </nav>
	<p class="p-0 brand-color text-dark bold text-center contenido"
		style="opacity: 85%;" id="reloj"></p>
	<div class="container mt-5">
		<div class="row">
			<div class="col-sm-3">
				<h2>
					<strong>Acerca de mi</strong>
				</h2>
				<hr>
				<div class="justify-content-center">
					<img
						src="resources/img/depositphotos_115690172-stock-illustration-businessman-profile-colorful-avatar-over.jpg"
						style="height: 100px; width: 100px;">
				</div>
				<hr>
				<p class="contenido">Formo parte de un selecto grupo de
					estudiantes que participaron del Bootcamp "FullStack Java" de
					Sence, logrando asi, capacitarme con las mejores herramientas para
					ofrecer servicios de alta fidelidad y gran calidad.</p>
				<h3 class="mt-4">
					<strong>Contacto</strong>
				</h3>
				<p class="contenido">Donde puedes ver mi trabajo:</p>
				<ol class="nav nav-pills flex-column">
					<li class="nav-item"><a class="btn btn-success"
						target="_blank"
						href="https://github.com/Benjaimico/Portafolio.git">GitHub</a></li>
					<hr>
					<li class="nav-item"><a class="btn btn-success"
						target="_blank" href="#">Linktree</a></li>
					<hr>
					<li class="nav-item"><a class="btn btn-success"
						target="_blank" href="https://www.instagram.com/benjaimico/">Instagram</a>
					</li>
					<hr>
				</ol>
				<hr class="d-sm-none">
			</div>
			<div class="col-sm-9">
				<h2>
					<strong>La digitalización, un reto para el sector también
						en 2023</strong>
				</h2>
				<h5>
					<address>21/12/2022</address>
				</h5>
				<hr>
				<div>
					<img src="resources/img/transformation-g0d755cf60_1920-768x400.jpg"
						alt="" class="noticias">
				</div>
				<a class="btn btn-outline-primary" target="_blank"
					href="https://logistica.cdecomunicacion.es/opinion/diego-yung/2022/12/21/la-digitalizacion-un-reto-para-2023">Ver
					noticia aqui</a>
				<p class="contenido">"Avanzar hacia una gestión más inteligente,
					basada en la tecnología y el dato, ayudaría a las empresas a
					mejorar su operativa, reducir costes y aumentar su competitividad.
					La necesidad de mejorar la gestión de operaciones y la visibilidad,
					y han supuesto un importante impulso a la digitalización. Pero aún
					queda mucho por mejorar. La transformación digital es una
					asignatura pendiente que no es nueva, pero en 2023 seguirá siendo
					uno de los principales retos del sector."</p>
				<hr>
				<h2 class="mt-5">
					<strong>Clientes de la gallega Docuten ahorran 31 millones
						en 2022 con la firma y factura electrónicas</strong>
				</h2>
				<h5>
					<address>1/12/2022</address>
				</h5>
				<hr>
				<div>
					<img src="resources/img/R.jfif" class="noticias2">
				</div>
				<br> <a class="btn btn-outline-primary" target="_blank"
					href="https://www.elespanol.com/quincemil/articulos/economia/clientes-de-la-gallega-docuten-ahorran-31-millones-en-2022-con-la-firma-y-factura-electronicas">Ver
					noticia aqui</a>
				<p class="contenido">"La empresa ha conseguido que sus clientes
					ahorren más de 31 millones de euros en 2022 gracias a la firma y la
					factura electrónica. La empresa gallega recuerda que la
					digitalización, que hace unos años apenas estaba presente, es hoy
					una realidad en buena parte de las compañías."</p>
			</div>
		</div>
		<hr>
	</div>
	<div class="mt-4 p-1 bg-dark text-white text-center">
		<p>
			<small>Copyright &copy; 2023 Parmesano inc.</small>
		</p>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<script src="resources/js/main.js"></script>
</body>
</html>