<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
<body class="text-center bg-light">
	<form action="login" method="post">
		<div class="login-page">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 offset-lg-1">
						<img src="resources/img/sd-logo-dots.png" class="text-left" alt="" width="300px"
			height="85px">
						<h3 class="mb-3">Ingreso al sistema</h3>
						<div class="bg-white shadow rounded">
							<div class="row">
								<div class="col-md-7 pe-0">
									<div class="form-left h-100 py-5 px-5">
										<form class="row g-4">
											<div class="col-12">
												<label>Nombre de Usuario<span class="text-danger">*</span></label>
												<div class="input-group">
													<div class="input-group-text">
														<i class="bi bi-person-fill"></i>
													</div>
													<input type="text" class="form-control" name="username"
														placeholder="Ingresa tu nombre de usuario">
												</div>
											</div>

											<div class="col-12">
												<label>Clave<span class="text-danger">*</span></label>
												<div class="input-group">
													<div class="input-group-text">
														<i class="bi bi-lock-fill"></i>
													</div>
													<input type="password" class="form-control" name="pass"
														placeholder="Ingresa tu clave">
												</div>
											</div>

											<div class="col-sm-6">
												<div class="checkbox mb-3">
													<label> <input type="checkbox" value="remember-me">
														Remember me
													</label>
												</div>
											</div>

											<div class="col-sm-6">
												<a href="<c:url value='/error'/>" class="float-right text-primary">Olvidaste
													tu clave?</a>
											</div>

											<div class="col-6">
												<button type="submit"
													class="btn btn-success px-4 float-right mt-2">Ingresar</button>
											</div>
										</form>
									</div>
								</div>
								<div class="col-md-5 ps-0 d-none d-md-block">
									<img alt="" src="resources/img/manos.jfif"
										width="470" height="350">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>