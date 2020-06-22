package cl.factura.web;

public class Productos {
	
	public Productos(int idProducto, String descripcion, int precioUnit) {
		this.idProducto = idProducto;
		this.descripcion = descripcion;
		this.precioUnit = precioUnit;
	}	
	
	public Productos(String descripcion, int precioUnit) {		
		this.descripcion = descripcion;
		this.precioUnit = precioUnit;
	}	

	public int getIdProducto() {
		return idProducto;
	}
	
	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public double getPrecioUnit() {
		return precioUnit;
	}

	public void setPrecioUnit(int precioUnit) {
		this.precioUnit = precioUnit;
	}
	
	@Override
	public String toString() {
		return "Productos [idProducto=" + idProducto + ", descripcion=" + descripcion + ", precioUnit=" + precioUnit
				+ "]";
	}

	private int idProducto;
	private String descripcion;
	private int precioUnit;
	

}
