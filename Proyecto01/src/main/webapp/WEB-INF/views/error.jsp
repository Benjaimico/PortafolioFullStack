<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
	
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" type="image/x-icon" href="resources/img/favicon.ico" />

<title>Error - Usuario no encontrado</title>
</head>
<style>
body {
	background-image:
		url("<%=request.getContextPath()%>/resources/img/esp.jpg");
	background-color: #111;
	background-repeat: no-repeat;
	background-size: cover;
	color: #fff;
	font-family: Arial, sans-serif;
	text-align: center;
}

h1 {
	font-size: 40px;
	margin-top: 150px;
}

.astronaut-img {
	margin-top: 50px;
	width: 300px;
}
</style>
<body>
	<h1>¡Houston, tenemos un problema!</h1>
	<img class="astronaut-img" src="resources/img/astronu.png"
		alt="Astronauta">
	<h2>El usuario no recuerda su clave.</h2>
	<p>Lo sentimos, parece que te has perdido en el espacio.</p>
	<p>Código de error: ${errorCode}</p>
    <p>${errorMessage}</p> <!-- Mostrar el mensaje de error personalizado -->
	<p>
		<a href="<c:url value='login'/>">Volver a la página de inicio</a>
	</p>
</body>
</html>
