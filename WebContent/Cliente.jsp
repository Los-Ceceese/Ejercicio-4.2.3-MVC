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
<title>Cliente</title>
</head>
<body>
	<br>
	<p class="mensaje">
		<c:if test="${empty param.id or empty param.rut or empty param.nombre}">
    	${empty param.id or empty param.rut or empty param.nombre?"Debe completar todos los campos":""}    	
	</p>
	<h1>Ingresar Cliente</h1>
	<form method="POST">
		<section class="principal">
			<section class="contenedor1">
				Id Cliente: <input type="text" size=61 name="id" placeholder="Id Cliente"> 
				<br>
				<br> 
				Rut Cliente: <input type="text" size=59 name="rut" placeholder="Rut Cliente"> 
				<br>
				<br> 
				Nombre Cliente: <input type="text" size=54 name="nombre" placeholder="Nombre Cliente">
				<br>
				<br>
			</section>
			<section class="contenedor2">
				<input type="submit" class="guardar" name="crear" value="Crear">
			</section>
			<section class="contenedor2">
				<input type="submit" class="guardar" name="modificar" value="Modificar">
			</section>
			<section class="contenedor2">
				<input type="submit" class="guardar" name="eliminar" value="Eliminar">
			</section>
		</section>
	</form>
	</c:if>
	<c:if test="${not empty param.id and not empty param.rut and not empty param.nombre}">
		<p class="mensaje">Se creo su cliente</p>
	</c:if>
</body>
</html>