<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/estilo.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Factura</title>
</head>
<body>
	<h1 class="titulo">Gestor de Facturas</h1>
	<table>
		<tr>
			<th>Id Cliente</th>
			<th>Rut Cliente</th>
			<th>Nombre Cliente</th>
		</tr>
		<tr>
			<td class="celda"><input type="text" size=10 name="numero"></td>
			<td class="celda"><input type="text" size=60 name="descripcion"></td>
			<td class="celda"><input type="text" size=56 name="cantidad"></td>
		</tr>
	</table>
	<br>
	<form action="FacturaServlet" method="get">
		<table>
			<tr>
				<th>Id Producto</th>
				<th>Descripcion</th>
				<th>Cantidad</th>
				<th>Precio Unit</th>
				<th>SubTotal</th>
			</tr>
			<c:forEach var="tempFact" items="${LISTAPRODUCTOS}">
				<tr>
					<td class="celda"><input value="${tempFact.idProducto}"
						type="text" size=10 name="numero"></td>
					<td class="celda"><input value="${tempFact.descripcion}"
						type="text" size=60 name="descripcion"></td>
					<td class="celda"><input type="text" size=15 name="cantidad"></td>
					<td class="celda"><input value="${tempFact.precioUnit}"
						type="text" size=15 name="pu"></td>
					<td class="celda"><input type="text" size=15 name="subtotal"></td>
				</tr>
			</c:forEach>
		</table>
		<br>
	</form>
	<section class="calculos1">
		<b>Sub Total:<input type="text" size=15 name="stotal"></b>
	</section>
	<section class="calculos2">
		<b>Iva:<input type="text" size=15 name="iva"></b>
	</section>
	<section class="calculos3">
		<b>Total:<input type="text" size=15 name="total"></b>
	</section>
	<br>
	<br>
	<section class="cuadro">
		<section class="cuadro1">
			<input type="submit" class="almacenar" name="crear" value="Emitir">
		</section>
		<section class="cuadro1">
			<input type="submit" class="almacenar" name="modificar"
				value="Modificar">
		</section>
		<section class="cuadro1">
			<input type="submit" class="almacenar" name="eliminar"
				value="Eliminar">
		</section>
	</section>

</body>
</html>