package cl.factura.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class FacturaServlet
 */
public class FacturaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/Factura")
	private DataSource conexionPool;

	public FacturaServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter salida = response.getWriter();
		response.setContentType("text/plain");

		Connection conexionFactura = null;
		Statement declaracionFactura = null;
		ResultSet resultadoFactura = null;

		try {

			conexionFactura = conexionPool.getConnection();
			String BBDD = "SELECT * FROM FACTURAS";
			declaracionFactura = conexionFactura.createStatement();
			resultadoFactura = declaracionFactura.executeQuery(BBDD);
			
			while(resultadoFactura.next()) {
				
				String descripcion = resultadoFactura.getString(3);
				salida.println(descripcion);
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
