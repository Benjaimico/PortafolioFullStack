<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="icon" type="image/x-icon" href="resources/img/favicon.ico" />
<link href="resources/css/cover.css" rel="stylesheet">

<title>Quienes Somos</title>
</head>
<style>
body {
	background-image: url(resources/img/fondo.jfif);
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<body class="d-flex h-100 text-center text-black bg-light">

	<div
		class="cover-container d-flex w-100 h-100 p-3 mx-auto text-black flex-column">
		<header class="mb-auto">
			<div>
				<h2 class="float-md-start mb-0"
					style="font-family: 'Times New Roman', Times, serif; font-weight: bold; opacity: 85%; text-decoration: underline; text-underline-position: below;">Quienes
					Somos</h2>
				<nav class="nav nav-masthead justify-content-center float-md-end" style="opacity: 100%">
	<jsp:include page="fijos/navbar.jsp"></jsp:include>
				</nav>
			</div>
		</header>

		<div id="demo" class="carousel slide" data-bs-ride="carousel">

			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="resources/img/img1.jfif" alt="Los Angeles" class="d-block"
						style="width: 100%">
				</div>
				<div class="carousel-item">
					<img src="resources/img/img2.jpg" alt="Chicago" class="d-block"
						style="width: 100%">
				</div>
				<div class="carousel-item">
					<img src="resources/img/img3.jpg" alt="New York" class="d-block"
						style="width: 100%">
				</div>
				<div class="carousel-item">
					<img src="resources/img/diverso.jpg" alt="" class="d-block"
						style="width: 119%">
				</div>
			</div>

		</div>

		<main class="px-3">
			<h1 style="font-family: 'Times New Roman', Times, serif;">Acerca
				de nosotros</h1>
			<p class="lead" style="font-family: 'Times New Roman', Times, serif;">"Creamos
				herramientas de software que permitan a la gente experimentar con
				sus ideas antes de convertirlas en realidad."</p>
			<p class="lead">
				<a href="#mision"
					class="btn btn-lg btn-secondary fw-bold border-white bg-white"
					data-bs-toggle="collapse">Saber mas</a>
			</p>
		</main>

		<section id="mision" class="collapse"
			style="font-family: 'Times New Roman', Times, serif;">
			<p>Nuestro objetivo es empoderar a cada persona y a cada
				organización en el planeta, para que logren más. Haciendo un mundo
				simple, más agradable y más productivo.</p>
			<p>
				La necesidad de un buen rendimiento se hace cada vez más
				imprescindible en todos los ámbitos de nuestra vida. La
				digitalización es una solución inmediata al bajo rendimiento de uso
				de papel y metodos de gestion documental convencionales, con un
				aumento notable en la optimización y costos operativos. <br> El
				proyecto nace en la necesidad de suplir la alta demanda del consumo
				de papel y nuestro equipo de ingenieros y técnicos han logrado un
				equilibrio perfecto entre calidad y rendimiento.
			</p>

		</section>
		<div>
			<a href="https://youtu.be/mCdA4bJAGGk" target="_blank"
				class="fa fa-youtube"></a> <a
				href="https://www.facebook.com/groups/315686078630328/"
				target="_blank" class="fa fa-facebook"></a>
		</div>
		<footer class="mt-auto text-white-50">
			<div>
				<p>
					<small>Copyright &copy; 2023 Parmesano inc.</small>
				</p>
			</div>
		</footer>
	</div>

</body>

</html>