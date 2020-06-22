package cl.factura.web;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class ControladorProductos
 */
public class ControladorProductos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ModeloProductos modeloProducto;

	// Pool de conexiones

	@Resource(name = "jdbc/Factura")
	private DataSource conexionPool;

	// Metodo init se ejecuta al iniciar el servlet, es el simil del metodo main

	@Override
	public void init() throws ServletException {
		super.init();

		try {

			// Establece la conexion con el Pool de conexiones

			modeloProducto = new ModeloProductos(conexionPool);

		} catch (Exception e) {
			throw new ServletException(e);
		}
	}	

	public ControladorProductos() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Obtiene la lista del modelo de productos

		List<Productos> productos;

		try {

			// Almacena los productos de la BBDD en la variable productos para luego
			// almacenarlos dentro de la Lista<Productos>

			productos = modeloProducto.getProductos();

			// Agrega la Lista de Productos al requerimiento (Request)

			request.setAttribute("LISTAPRODUCTOS", productos);

			// Envía el requerimiento al .jsp

			RequestDispatcher despachador = request.getRequestDispatcher("/Factura.jsp");
			despachador.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
