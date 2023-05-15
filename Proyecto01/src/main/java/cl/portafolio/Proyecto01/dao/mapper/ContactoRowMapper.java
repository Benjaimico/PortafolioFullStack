
package cl.portafolio.Proyecto01.dao.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import cl.portafolio.Proyecto01.modelo.Contacto;

public class ContactoRowMapper implements RowMapper<Contacto> {

	@Override
	public Contacto mapRow(ResultSet rs, int rowNum) throws SQLException {
		Contacto cont = new Contacto();
		cont.setNombre(rs.getString("nombre"));
		cont.setEmail(rs.getString("email"));
		cont.setMensaje(rs.getString("mensaje"));

		return cont;
	}

}
