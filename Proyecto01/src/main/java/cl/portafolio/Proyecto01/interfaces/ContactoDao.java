
package cl.portafolio.Proyecto01.interfaces;

import java.util.List;

import cl.portafolio.Proyecto01.modelo.Contacto;

public interface ContactoDao<C> {
	List<Contacto> mostrarContactos();

	void crearContacto(C c);

	void editarContacto(C c);

	void eliminarContacto(C c);
}
