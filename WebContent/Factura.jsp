<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, cl.factura.web.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Factura</title>
</head>
<%
	//Esta lista almacena lo que se le está envíando (request) desde el controlador 

	List<Productos> listaProductos = (List<Productos>) request.getAttribute("LISTAPRODUCTOS");

%>
<body>
	<table>
		<tr>
			<td>ID</td>
			<td>Descripcion</td>
			<td>Precio Unitario</td>
		</tr>

<%-- <%for(Productos temporal:listaProductos){%> --%>

<!-- 		<tr> -->
<%-- 			<td><%=temporal.getIdProducto()%></td> --%>
<%-- 			<td><%=temporal.getDescripcion()%></td> --%>
<%-- 			<td><%=temporal.getPrecioUnit()%></td> --%>
<!-- 		</tr> -->
<%-- <%} %> --%>
	</table>


<%= listaProductos  %> 


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
			<tr>
				<td class="celda"><input type="text" size=10 name="numero"></td>
				<td class="celda"><input type="text" size=60 name="descripcion"></td>
				<td class="celda"><input type="text" size=15 name="cantidad"></td>
				<td class="celda"><input type="text" size=15 name="pu"></td>
				<td class="celda"><input type="text" size=15 name="subtotal"></td>
			</tr>
			<tr>
				<td class="celda"><input type="text" size=10 name="numero"></td>
				<td class="celda"><input type="text" size=60 name="descripcion"></td>
				<td class="celda"><input type="text" size=15 name="cantidad"></td>
				<td class="celda"><input type="text" size=15 name="pu"></td>
				<td class="celda"><input type="text" size=15 name="subtotal"></td>
			</tr>
			<tr>
				<td class="celda"><input type="text" size=10 name="numero"></td>
				<td class="celda"><input type="text" size=60 name="descripcion"></td>
				<td class="celda"><input type="text" size=15 name="cantidad"></td>
				<td class="celda"><input type="text" size=15 name="pu"></td>
				<td class="celda"><input type="text" size=15 name="subtotal"></td>
			</tr>
			<tr>
				<td class="celda"><input type="text" size=10 name="numero"></td>
				<td class="celda"><input type="text" size=60 name="descripcion"></td>
				<td class="celda"><input type="text" size=15 name="cantidad"></td>
				<td class="celda"><input type="text" size=15 name="pu"></td>
				<td class="celda"><input type="text" size=15 name="subtotal"></td>
			</tr>
			<tr>
				<td class="celda"><input type="text" size=10 name="numero"></td>
				<td class="celda"><input type="text" size=60 name="descripcion"></td>
				<td class="celda"><input type="text" size=15 name="cantidad"></td>
				<td class="celda"><input type="text" size=15 name="pu"></td>
				<td class="celda"><input type="text" size=15 name="subtotal"></td>
			</tr>
			<tr>
				<td class="celda"><input type="text" size=10 name="numero"></td>
				<td class="celda"><input type="text" size=60 name="descripcion"></td>
				<td class="celda"><input type="text" size=15 name="cantidad"></td>
				<td class="celda"><input type="text" size=15 name="pu"></td>
				<td class="celda"><input type="text" size=15 name="subtotal"></td>
			</tr>
			<tr>
				<td class="celda"><input type="text" size=10 name="numero"></td>
				<td class="celda"><input type="text" size=60 name="descripcion"></td>
				<td class="celda"><input type="text" size=15 name="cantidad"></td>
				<td class="celda"><input type="text" size=15 name="pu"></td>
				<td class="celda"><input type="text" size=15 name="subtotal"></td>
			</tr>
			<tr>
				<td class="celda"><input type="text" size=10 name="numero"></td>
				<td class="celda"><input type="text" size=60 name="descripcion"></td>
				<td class="celda"><input type="text" size=15 name="cantidad"></td>
				<td class="celda"><input type="text" size=15 name="pu"></td>
				<td class="celda"><input type="text" size=15 name="subtotal"></td>
			</tr>
			<tr>
				<td class="celda"><input type="text" size=10 name="numero"></td>
				<td class="celda"><input type="text" size=60 name="descripcion"></td>
				<td class="celda"><input type="text" size=15 name="cantidad"></td>
				<td class="celda"><input type="text" size=15 name="pu"></td>
				<td class="celda"><input type="text" size=15 name="subtotal"></td>
			</tr>
			<tr>
				<td class="celda"><input type="text" size=10 name="numero"></td>
				<td class="celda"><input type="text" size=60 name="descripcion"></td>
				<td class="celda"><input type="text" size=15 name="cantidad"></td>
				<td class="celda"><input type="text" size=15 name="pu"></td>
				<td class="celda"><input type="text" size=15 name="subtotal"></td>
			</tr>
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