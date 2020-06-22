<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/estilo.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Producto</title>
</head>
<body>
	<br>
	<p class="mensaje">
		<c:if test="${empty param.identificador or empty param.descripcion or empty param.precioUnitario}">
    	${empty param.identificador or empty param.descripcion or empty param.precioUnitario?"Debe completar todos los campos":""}    	
	</p>
	<h1>Insertar Producto</h1>
	<form method="POST">
		<section class="contenedor">
			<section class="contenedor1">
				Id Producto: <input type="text" size=60 name="identificador" placeholder="Id Producto">
				<br>
				<br> 
				Descripcion: <input type="text" size=60 name="descripcion"	placeholder="Descripcion Producto">
				<br>
				<br> 
				Precio Unitario: <input type="text" size=56.5 name="precioUnitario" placeholder="Precio Unitario Producto">
				<br>
				<br>
			</section>
			<section class="contenedor2">
				<input type="submit" class="guardar" name="crear" value="Crear">
			</section>
			<section class="contenedor2">
				<input type="submit" class="guardar" name="modificar"
					value="Modificar">
			</section>
			<section class="contenedor2">
				<input type="submit" class="guardar" name="eliminar"
					value="Eliminar">
			</section>
		</section>
	</form>
	</c:if>
	<c:if
		test="${not empty param.identificador and not empty param.descripcion and not empty param.precioUnitario}">
		<p class="mensaje">Se creo su producto</p>
	</c:if>
</body>
</html>