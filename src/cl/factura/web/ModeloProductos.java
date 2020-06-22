package cl.factura.web;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

import javax.sql.DataSource;

public class ModeloProductos {

	private DataSource origenDatos;

	public ModeloProductos(DataSource origenDatos) {
		this.origenDatos = origenDatos;
	}

	public List<Productos> getProductos() throws Exception {

		List<Productos> productos = new ArrayList<>();
		Connection conexionProductos = null;
		Statement declaracionProductos = null;
		ResultSet tablaProductos = null;

		// Establece conexión

		conexionProductos = origenDatos.getConnection();

		// Sentencia y delcaración SQL

		String sentenciaSQL = "SELECT * FROM PRODUCTOS";
		declaracionProductos = conexionProductos.createStatement();

		// Ejecución sentencia SQL

		tablaProductos = declaracionProductos.executeQuery(sentenciaSQL);

		// Recorrer la Tabla Virtual

		while (tablaProductos.next()) {

			int idProducto = tablaProductos.getInt("ID");
			String descripcion = tablaProductos.getString("DESCRIPCION");
			int precioUnit = tablaProductos.getInt("PRECIO_UNIT");

			Productos productoTemporal = new Productos(idProducto, descripcion, precioUnit);

			productos.add(productoTemporal);

		}

		return productos;

	}

}
